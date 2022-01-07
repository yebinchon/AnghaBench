
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int dummy; } ;


 int net_eq (int ,void*) ;
 int nf_ct_net (struct nf_conn*) ;

__attribute__((used)) static int kill_all(struct nf_conn *i, void *data)
{
 return net_eq(nf_ct_net(i), data);
}
