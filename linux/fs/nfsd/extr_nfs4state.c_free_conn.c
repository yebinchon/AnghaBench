
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_conn {int cn_xprt; } ;


 int kfree (struct nfsd4_conn*) ;
 int svc_xprt_put (int ) ;

__attribute__((used)) static void free_conn(struct nfsd4_conn *c)
{
 svc_xprt_put(c->cn_xprt);
 kfree(c);
}
