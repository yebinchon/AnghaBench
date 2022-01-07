
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_address {int refcnt; } ;


 int kfree (struct unix_address*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void unix_release_addr(struct unix_address *addr)
{
 if (refcount_dec_and_test(&addr->refcnt))
  kfree(addr);
}
