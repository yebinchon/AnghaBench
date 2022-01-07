
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_queue {int nentries; } ;
struct xdp_diag_ring {int entries; } ;
struct sk_buff {int dummy; } ;
typedef int dr ;


 int nla_put (struct sk_buff*,int,int,struct xdp_diag_ring*) ;

__attribute__((used)) static int xsk_diag_put_ring(const struct xsk_queue *queue, int nl_type,
        struct sk_buff *nlskb)
{
 struct xdp_diag_ring dr = {};

 dr.entries = queue->nentries;
 return nla_put(nlskb, nl_type, sizeof(dr), &dr);
}
