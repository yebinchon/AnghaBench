
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int netns_ids; } ;


 int NETNSA_NSID_NOT_ASSIGNED ;
 int NET_ID_ZERO ;
 int alloc_netid (struct net*,struct net*,int) ;
 int idr_for_each (int *,int ,struct net*) ;
 int net_eq_idr ;

__attribute__((used)) static int __peernet2id_alloc(struct net *net, struct net *peer, bool *alloc)
{
 int id = idr_for_each(&net->netns_ids, net_eq_idr, peer);
 bool alloc_it = *alloc;

 *alloc = 0;


 if (id == NET_ID_ZERO)
  return 0;
 if (id > 0)
  return id;

 if (alloc_it) {
  id = alloc_netid(net, peer, -1);
  *alloc = 1;
  return id >= 0 ? id : NETNSA_NSID_NOT_ASSIGNED;
 }

 return NETNSA_NSID_NOT_ASSIGNED;
}
