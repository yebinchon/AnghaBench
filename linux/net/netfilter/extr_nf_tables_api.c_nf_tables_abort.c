
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int commit_mutex; } ;
struct net {TYPE_1__ nft; } ;


 int __nf_tables_abort (struct net*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int nf_tables_abort(struct net *net, struct sk_buff *skb)
{
 int ret = __nf_tables_abort(net);

 mutex_unlock(&net->nft.commit_mutex);

 return ret;
}
