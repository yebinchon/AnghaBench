
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set_net {scalar_t__ ip_set_max; } ;
struct ip_set {int name; } ;
typedef scalar_t__ ip_set_id_t ;


 int EEXIST ;
 int IPSET_ERR_MAX_SETS ;
 scalar_t__ IPSET_INVALID_ID ;
 scalar_t__ STRNCMP (char const*,int ) ;
 struct ip_set* ip_set (struct ip_set_net*,scalar_t__) ;

__attribute__((used)) static int
find_free_id(struct ip_set_net *inst, const char *name, ip_set_id_t *index,
      struct ip_set **set)
{
 struct ip_set *s;
 ip_set_id_t i;

 *index = IPSET_INVALID_ID;
 for (i = 0; i < inst->ip_set_max; i++) {
  s = ip_set(inst, i);
  if (!s) {
   if (*index == IPSET_INVALID_ID)
    *index = i;
  } else if (STRNCMP(name, s->name)) {

   *set = s;
   return -EEXIST;
  }
 }
 if (*index == IPSET_INVALID_ID)

  return -IPSET_ERR_MAX_SETS;
 return 0;
}
