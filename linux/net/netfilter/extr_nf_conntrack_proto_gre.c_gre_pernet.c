
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nf_gre_net {int dummy; } ;
struct TYPE_3__ {struct nf_gre_net gre; } ;
struct TYPE_4__ {TYPE_1__ nf_ct_proto; } ;
struct net {TYPE_2__ ct; } ;



__attribute__((used)) static inline struct nf_gre_net *gre_pernet(struct net *net)
{
 return &net->ct.nf_ct_proto.gre;
}
