
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id_stack {int cnt; scalar_t__* ids; } ;
struct btf_type {int name_off; } ;
struct btf_param {int type; int name_off; } ;
struct btf_dump {int btf; } ;
struct btf_array {int nelems; } ;
typedef scalar_t__ __u32 ;
typedef int __u16 ;
 struct btf_type* btf__type_by_id (int ,scalar_t__) ;
 struct btf_array* btf_array (struct btf_type const*) ;
 int btf_dump_emit_enum_def (struct btf_dump*,scalar_t__,struct btf_type const*,int) ;
 int btf_dump_emit_enum_fwd (struct btf_dump*,scalar_t__,struct btf_type const*) ;
 int btf_dump_emit_fwd_def (struct btf_dump*,scalar_t__,struct btf_type const*) ;
 int btf_dump_emit_mods (struct btf_dump*,struct id_stack*) ;
 int btf_dump_emit_name (struct btf_dump*,char const*,int) ;
 int btf_dump_emit_struct_def (struct btf_dump*,scalar_t__,struct btf_type const*,int) ;
 int btf_dump_emit_struct_fwd (struct btf_dump*,scalar_t__,struct btf_type const*) ;
 int btf_dump_emit_type_decl (struct btf_dump*,int ,char const*,int) ;
 int btf_dump_ident_name (struct btf_dump*,scalar_t__) ;
 int btf_dump_printf (struct btf_dump*,char*,...) ;
 int btf_is_array (struct btf_type const*) ;
 int btf_is_mod (struct btf_type const*) ;
 int btf_kind (struct btf_type const*) ;
 char* btf_name_of (struct btf_dump*,int ) ;
 struct btf_param* btf_params (struct btf_type const*) ;
 int btf_vlen (struct btf_type const*) ;
 int pr_warning (char*,int,scalar_t__) ;

__attribute__((used)) static void btf_dump_emit_type_chain(struct btf_dump *d,
         struct id_stack *decls,
         const char *fname, int lvl)
{
 bool last_was_ptr = 1;
 const struct btf_type *t;
 const char *name;
 __u16 kind;
 __u32 id;

 while (decls->cnt) {
  id = decls->ids[--decls->cnt];
  if (id == 0) {

   btf_dump_emit_mods(d, decls);
   btf_dump_printf(d, "void");
   last_was_ptr = 0;
   continue;
  }

  t = btf__type_by_id(d->btf, id);
  kind = btf_kind(t);

  switch (kind) {
  case 134:
   btf_dump_emit_mods(d, decls);
   name = btf_name_of(d, t->name_off);
   btf_dump_printf(d, "%s", name);
   break;
  case 131:
  case 129:
   btf_dump_emit_mods(d, decls);

   if (t->name_off == 0)
    btf_dump_emit_struct_def(d, id, t, lvl);
   else
    btf_dump_emit_struct_fwd(d, id, t);
   break;
  case 137:
   btf_dump_emit_mods(d, decls);

   if (t->name_off == 0)
    btf_dump_emit_enum_def(d, id, t, lvl);
   else
    btf_dump_emit_enum_fwd(d, id, t);
   break;
  case 135:
   btf_dump_emit_mods(d, decls);
   btf_dump_emit_fwd_def(d, id, t);
   break;
  case 130:
   btf_dump_emit_mods(d, decls);
   btf_dump_printf(d, "%s", btf_dump_ident_name(d, id));
   break;
  case 133:
   btf_dump_printf(d, "%s", last_was_ptr ? "*" : " *");
   break;
  case 128:
   btf_dump_printf(d, " volatile");
   break;
  case 138:
   btf_dump_printf(d, " const");
   break;
  case 132:
   btf_dump_printf(d, " restrict");
   break;
  case 139: {
   const struct btf_array *a = btf_array(t);
   const struct btf_type *next_t;
   __u32 next_id;
   bool multidim;
   while (decls->cnt) {
    next_id = decls->ids[decls->cnt - 1];
    next_t = btf__type_by_id(d->btf, next_id);
    if (btf_is_mod(next_t))
     decls->cnt--;
    else
     break;
   }

   if (decls->cnt == 0) {
    btf_dump_emit_name(d, fname, last_was_ptr);
    btf_dump_printf(d, "[%u]", a->nelems);
    return;
   }

   next_id = decls->ids[decls->cnt - 1];
   next_t = btf__type_by_id(d->btf, next_id);
   multidim = btf_is_array(next_t);

   if (fname[0] && !last_was_ptr)
    btf_dump_printf(d, " ");

   if (!multidim)
    btf_dump_printf(d, "(");
   btf_dump_emit_type_chain(d, decls, fname, lvl);
   if (!multidim)
    btf_dump_printf(d, ")");
   btf_dump_printf(d, "[%u]", a->nelems);
   return;
  }
  case 136: {
   const struct btf_param *p = btf_params(t);
   __u16 vlen = btf_vlen(t);
   int i;

   btf_dump_emit_mods(d, decls);
   if (decls->cnt) {
    btf_dump_printf(d, " (");
    btf_dump_emit_type_chain(d, decls, fname, lvl);
    btf_dump_printf(d, ")");
   } else {
    btf_dump_emit_name(d, fname, last_was_ptr);
   }
   btf_dump_printf(d, "(");






   if (vlen == 1 && p->type == 0) {
    btf_dump_printf(d, ")");
    return;
   }

   for (i = 0; i < vlen; i++, p++) {
    if (i > 0)
     btf_dump_printf(d, ", ");


    if (i == vlen - 1 && p->type == 0) {
     btf_dump_printf(d, "...");
     break;
    }

    name = btf_name_of(d, p->name_off);
    btf_dump_emit_type_decl(d, p->type, name, lvl);
   }

   btf_dump_printf(d, ")");
   return;
  }
  default:
   pr_warning("unexpected type in decl chain, kind:%u, id:[%u]\n",
       kind, id);
   return;
  }

  last_was_ptr = kind == 133;
 }

 btf_dump_emit_name(d, fname, last_was_ptr);
}
