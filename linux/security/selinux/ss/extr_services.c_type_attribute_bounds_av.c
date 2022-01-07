
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct type_datum {int bounds; } ;
struct policydb {struct type_datum** type_val_to_struct; } ;
struct context {int type; } ;
struct av_decision {int allowed; } ;
typedef int lo_tcontext ;
typedef int lo_scontext ;
typedef int lo_avd ;


 int BUG_ON (int) ;
 int context_struct_compute_av (struct policydb*,struct context*,struct context*,int ,struct av_decision*,int *) ;
 scalar_t__ likely (int) ;
 int memcpy (struct context*,struct context*,int) ;
 int memset (struct av_decision*,int ,int) ;
 int security_dump_masked_av (struct policydb*,struct context*,struct context*,int ,int,char*) ;

__attribute__((used)) static void type_attribute_bounds_av(struct policydb *policydb,
         struct context *scontext,
         struct context *tcontext,
         u16 tclass,
         struct av_decision *avd)
{
 struct context lo_scontext;
 struct context lo_tcontext, *tcontextp = tcontext;
 struct av_decision lo_avd;
 struct type_datum *source;
 struct type_datum *target;
 u32 masked = 0;

 source = policydb->type_val_to_struct[scontext->type - 1];
 BUG_ON(!source);

 if (!source->bounds)
  return;

 target = policydb->type_val_to_struct[tcontext->type - 1];
 BUG_ON(!target);

 memset(&lo_avd, 0, sizeof(lo_avd));

 memcpy(&lo_scontext, scontext, sizeof(lo_scontext));
 lo_scontext.type = source->bounds;

 if (target->bounds) {
  memcpy(&lo_tcontext, tcontext, sizeof(lo_tcontext));
  lo_tcontext.type = target->bounds;
  tcontextp = &lo_tcontext;
 }

 context_struct_compute_av(policydb, &lo_scontext,
      tcontextp,
      tclass,
      &lo_avd,
      ((void*)0));

 masked = ~lo_avd.allowed & avd->allowed;

 if (likely(!masked))
  return;


 avd->allowed &= ~masked;


 security_dump_masked_av(policydb, scontext, tcontext,
    tclass, masked, "bounds");
}
