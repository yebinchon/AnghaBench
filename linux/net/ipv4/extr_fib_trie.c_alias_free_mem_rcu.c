
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_alias {int rcu; } ;


 int __alias_free_mem ;
 int call_rcu (int *,int ) ;

__attribute__((used)) static inline void alias_free_mem_rcu(struct fib_alias *fa)
{
 call_rcu(&fa->rcu, __alias_free_mem);
}
