
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tables; } ;
struct net {TYPE_1__ xt; } ;
struct mutex {int dummy; } ;
struct ebt_table {int dummy; } ;


 size_t NFPROTO_BRIDGE ;
 struct ebt_table* find_inlist_lock (int *,char const*,char*,int*,struct mutex*) ;

__attribute__((used)) static inline struct ebt_table *
find_table_lock(struct net *net, const char *name, int *error,
  struct mutex *mutex)
{
 return find_inlist_lock(&net->xt.tables[NFPROTO_BRIDGE], name,
    "ebtable_", error, mutex);
}
