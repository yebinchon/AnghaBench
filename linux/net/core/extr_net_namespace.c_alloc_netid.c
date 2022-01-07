
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int netns_ids; } ;


 int GFP_ATOMIC ;
 int idr_alloc (int *,struct net*,int,int,int ) ;

__attribute__((used)) static int alloc_netid(struct net *net, struct net *peer, int reqid)
{
 int min = 0, max = 0;

 if (reqid >= 0) {
  min = reqid;
  max = reqid + 1;
 }

 return idr_alloc(&net->netns_ids, peer, min, max, GFP_ATOMIC);
}
