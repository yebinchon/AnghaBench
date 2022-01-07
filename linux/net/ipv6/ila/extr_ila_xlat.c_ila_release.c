
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ila_map {int dummy; } ;


 int kfree_rcu (struct ila_map*,int ) ;
 int rcu ;

__attribute__((used)) static inline void ila_release(struct ila_map *ila)
{
 kfree_rcu(ila, rcu);
}
