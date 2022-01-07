
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set_net {scalar_t__ ip_set_max; } ;
struct ip_set {int name; } ;
typedef scalar_t__ ip_set_id_t ;


 scalar_t__ IPSET_INVALID_ID ;
 scalar_t__ STRNCMP (int ,char const*) ;
 struct ip_set* ip_set (struct ip_set_net*,scalar_t__) ;

__attribute__((used)) static struct ip_set *
find_set_and_id(struct ip_set_net *inst, const char *name, ip_set_id_t *id)
{
 struct ip_set *set = ((void*)0);
 ip_set_id_t i;

 *id = IPSET_INVALID_ID;
 for (i = 0; i < inst->ip_set_max; i++) {
  set = ip_set(inst, i);
  if (set && STRNCMP(set->name, name)) {
   *id = i;
   break;
  }
 }
 return (*id == IPSET_INVALID_ID ? ((void*)0) : set);
}
