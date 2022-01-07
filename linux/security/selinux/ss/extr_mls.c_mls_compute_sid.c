
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct range_trans {int target_class; int target_type; int source_type; } ;
struct TYPE_2__ {int nprim; } ;
struct policydb {int process_class; struct class_datum** class_val_to_struct; TYPE_1__ p_classes; int range_tr; int mls_enabled; } ;
struct mls_range {int dummy; } ;
struct context {int type; } ;
struct class_datum {int default_range; } ;
 int EINVAL ;
 struct mls_range* hashtab_search (int ,struct range_trans*) ;
 int mls_context_cpy (struct context*,struct context*) ;
 int mls_context_cpy_high (struct context*,struct context*) ;
 int mls_context_cpy_low (struct context*,struct context*) ;
 int mls_range_set (struct context*,struct mls_range*) ;

int mls_compute_sid(struct policydb *p,
      struct context *scontext,
      struct context *tcontext,
      u16 tclass,
      u32 specified,
      struct context *newcontext,
      bool sock)
{
 struct range_trans rtr;
 struct mls_range *r;
 struct class_datum *cladatum;
 int default_range = 0;

 if (!p->mls_enabled)
  return 0;

 switch (specified) {
 case 134:

  rtr.source_type = scontext->type;
  rtr.target_type = tcontext->type;
  rtr.target_class = tclass;
  r = hashtab_search(p->range_tr, &rtr);
  if (r)
   return mls_range_set(newcontext, r);

  if (tclass && tclass <= p->p_classes.nprim) {
   cladatum = p->class_val_to_struct[tclass - 1];
   if (cladatum)
    default_range = cladatum->default_range;
  }

  switch (default_range) {
  case 132:
   return mls_context_cpy_low(newcontext, scontext);
  case 133:
   return mls_context_cpy_high(newcontext, scontext);
  case 131:
   return mls_context_cpy(newcontext, scontext);
  case 129:
   return mls_context_cpy_low(newcontext, tcontext);
  case 130:
   return mls_context_cpy_high(newcontext, tcontext);
  case 128:
   return mls_context_cpy(newcontext, tcontext);
  }


 case 136:
  if ((tclass == p->process_class) || (sock == 1))

   return mls_context_cpy(newcontext, scontext);
  else

   return mls_context_cpy_low(newcontext, scontext);
 case 135:

  return mls_context_cpy_low(newcontext, scontext);


 }
 return -EINVAL;
}
