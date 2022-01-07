
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_clnt_odstate {int co_odcount; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline void
get_clnt_odstate(struct nfs4_clnt_odstate *co)
{
 if (co)
  refcount_inc(&co->co_odcount);
}
