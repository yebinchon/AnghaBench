
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int dummy; } ;
struct iter_data {int (* iter ) (struct nf_conn*,int ) ;int data; int net; } ;


 int net_eq (int ,int ) ;
 int nf_ct_net (struct nf_conn*) ;
 int stub1 (struct nf_conn*,int ) ;

__attribute__((used)) static int iter_net_only(struct nf_conn *i, void *data)
{
 struct iter_data *d = data;

 if (!net_eq(d->net, nf_ct_net(i)))
  return 0;

 return d->iter(i, d->data);
}
