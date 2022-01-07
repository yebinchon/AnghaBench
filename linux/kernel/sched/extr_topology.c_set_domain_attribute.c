
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_domain_attr {int relax_domain_level; } ;
struct sched_domain {int level; int flags; } ;


 int SD_BALANCE_NEWIDLE ;
 int SD_BALANCE_WAKE ;
 int default_relax_domain_level ;

__attribute__((used)) static void set_domain_attribute(struct sched_domain *sd,
     struct sched_domain_attr *attr)
{
 int request;

 if (!attr || attr->relax_domain_level < 0) {
  if (default_relax_domain_level < 0)
   return;
  else
   request = default_relax_domain_level;
 } else
  request = attr->relax_domain_level;
 if (request < sd->level) {

  sd->flags &= ~(SD_BALANCE_WAKE|SD_BALANCE_NEWIDLE);
 } else {

  sd->flags |= (SD_BALANCE_WAKE|SD_BALANCE_NEWIDLE);
 }
}
