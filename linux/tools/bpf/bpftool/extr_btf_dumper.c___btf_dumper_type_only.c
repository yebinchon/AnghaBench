
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_var {int linkage; } ;
struct btf_type {int name_off; int type; int info; } ;
struct btf_array {int nelems; int type; } ;
struct btf {int dummy; } ;
typedef int __u32 ;


 int BTF_INFO_KFLAG (int ) ;
 int BTF_INFO_KIND (int ) ;
 int BTF_PRINT_ARG (char*,...) ;
 int BTF_PRINT_TYPE (int ) ;
 int BTF_VAR_STATIC ;
 int btf__name_by_offset (struct btf const*,int ) ;
 struct btf_type* btf__type_by_id (struct btf const*,int ) ;
 int btf_dump_func (struct btf const*,char*,struct btf_type const*,struct btf_type const*,int,int) ;

__attribute__((used)) static int __btf_dumper_type_only(const struct btf *btf, __u32 type_id,
      char *func_sig, int pos, int size)
{
 const struct btf_type *proto_type;
 const struct btf_array *array;
 const struct btf_var *var;
 const struct btf_type *t;

 if (!type_id) {
  BTF_PRINT_ARG("void ");
  return pos;
 }

 t = btf__type_by_id(btf, type_id);

 switch (BTF_INFO_KIND(t->info)) {
 case 136:
 case 132:
  BTF_PRINT_ARG("%s ", btf__name_by_offset(btf, t->name_off));
  break;
 case 133:
  BTF_PRINT_ARG("struct %s ",
         btf__name_by_offset(btf, t->name_off));
  break;
 case 131:
  BTF_PRINT_ARG("union %s ",
         btf__name_by_offset(btf, t->name_off));
  break;
 case 140:
  BTF_PRINT_ARG("enum %s ",
         btf__name_by_offset(btf, t->name_off));
  break;
 case 143:
  array = (struct btf_array *)(t + 1);
  BTF_PRINT_TYPE(array->type);
  BTF_PRINT_ARG("[%d]", array->nelems);
  break;
 case 135:
  BTF_PRINT_TYPE(t->type);
  BTF_PRINT_ARG("* ");
  break;
 case 137:
  BTF_PRINT_ARG("%s %s ",
         BTF_INFO_KFLAG(t->info) ? "union" : "struct",
         btf__name_by_offset(btf, t->name_off));
  break;
 case 128:
  BTF_PRINT_ARG("volatile ");
  BTF_PRINT_TYPE(t->type);
  break;
 case 142:
  BTF_PRINT_ARG("const ");
  BTF_PRINT_TYPE(t->type);
  break;
 case 134:
  BTF_PRINT_ARG("restrict ");
  BTF_PRINT_TYPE(t->type);
  break;
 case 138:
  pos = btf_dump_func(btf, func_sig, t, ((void*)0), pos, size);
  if (pos == -1)
   return -1;
  break;
 case 139:
  proto_type = btf__type_by_id(btf, t->type);
  pos = btf_dump_func(btf, func_sig, proto_type, t, pos, size);
  if (pos == -1)
   return -1;
  break;
 case 129:
  var = (struct btf_var *)(t + 1);
  if (var->linkage == BTF_VAR_STATIC)
   BTF_PRINT_ARG("static ");
  BTF_PRINT_TYPE(t->type);
  BTF_PRINT_ARG(" %s",
         btf__name_by_offset(btf, t->name_off));
  break;
 case 141:
  BTF_PRINT_ARG("section (\"%s\") ",
         btf__name_by_offset(btf, t->name_off));
  break;
 case 130:
 default:
  return -1;
 }

 return pos;
}
