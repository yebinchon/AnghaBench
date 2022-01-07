
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_str {int refcnt; } ;


 scalar_t__ refcount_inc_not_zero (int *) ;

__attribute__((used)) static struct comm_str *comm_str__get(struct comm_str *cs)
{
 if (cs && refcount_inc_not_zero(&cs->refcnt))
  return cs;

 return ((void*)0);
}
