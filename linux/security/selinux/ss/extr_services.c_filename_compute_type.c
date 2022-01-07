
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int u16 ;
struct policydb {int filename_trans; int filename_trans_ttypes; } ;
struct filename_trans_datum {int otype; } ;
struct filename_trans {char const* name; int tclass; void* ttype; void* stype; } ;
struct context {int type; } ;


 int ebitmap_get_bit (int *,void*) ;
 struct filename_trans_datum* hashtab_search (int ,struct filename_trans*) ;

__attribute__((used)) static void filename_compute_type(struct policydb *policydb,
      struct context *newcontext,
      u32 stype, u32 ttype, u16 tclass,
      const char *objname)
{
 struct filename_trans ft;
 struct filename_trans_datum *otype;






 if (!ebitmap_get_bit(&policydb->filename_trans_ttypes, ttype))
  return;

 ft.stype = stype;
 ft.ttype = ttype;
 ft.tclass = tclass;
 ft.name = objname;

 otype = hashtab_search(policydb->filename_trans, &ft);
 if (otype)
  newcontext->type = otype->otype;
}
