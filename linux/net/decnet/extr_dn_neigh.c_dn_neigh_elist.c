
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct elist_cb_state {int t; int n; unsigned char* ptr; unsigned char* rs; struct net_device* dev; } ;


 int dn_neigh_table ;
 int neigh_elist_cb ;
 int neigh_for_each (int *,int ,struct elist_cb_state*) ;

int dn_neigh_elist(struct net_device *dev, unsigned char *ptr, int n)
{
 struct elist_cb_state state;

 state.dev = dev;
 state.t = 0;
 state.n = n;
 state.ptr = ptr;
 state.rs = ptr;

 neigh_for_each(&dn_neigh_table, neigh_elist_cb, &state);

 return state.t;
}
