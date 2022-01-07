
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn_timeout {void* timeout; } ;
struct nf_conn {int dummy; } ;


 int RCU_INIT_POINTER (void*,int *) ;
 struct nf_conn_timeout* nf_ct_timeout_find (struct nf_conn*) ;

__attribute__((used)) static int untimeout(struct nf_conn *ct, void *timeout)
{
 struct nf_conn_timeout *timeout_ext = nf_ct_timeout_find(ct);

 if (timeout_ext && (!timeout || timeout_ext->timeout == timeout))
  RCU_INIT_POINTER(timeout_ext->timeout, ((void*)0));


 return 0;
}
