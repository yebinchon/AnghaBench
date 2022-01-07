
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set_net {int dummy; } ;
struct ip_set {int dummy; } ;
typedef int ip_set_id_t ;


 struct ip_set* find_set_and_id (struct ip_set_net*,char const*,int *) ;

__attribute__((used)) static inline struct ip_set *
find_set(struct ip_set_net *inst, const char *name)
{
 ip_set_id_t id;

 return find_set_and_id(inst, name, &id);
}
