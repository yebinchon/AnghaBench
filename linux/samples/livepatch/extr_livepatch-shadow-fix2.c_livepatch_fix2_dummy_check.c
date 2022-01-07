
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy {int jiffies_expire; } ;


 int GFP_NOWAIT ;
 int SV_COUNTER ;
 int* klp_shadow_get_or_alloc (struct dummy*,int ,int,int ,int *,int *) ;
 int time_after (unsigned long,int ) ;

__attribute__((used)) static bool livepatch_fix2_dummy_check(struct dummy *d, unsigned long jiffies)
{
 int *shadow_count;






 shadow_count = klp_shadow_get_or_alloc(d, SV_COUNTER,
    sizeof(*shadow_count), GFP_NOWAIT,
    ((void*)0), ((void*)0));
 if (shadow_count)
  *shadow_count += 1;

 return time_after(jiffies, d->jiffies_expire);
}
