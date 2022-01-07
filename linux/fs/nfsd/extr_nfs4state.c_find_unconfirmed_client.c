
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int client_lock; struct list_head* unconf_id_hashtbl; } ;
struct nfs4_client {int dummy; } ;
struct list_head {int dummy; } ;
typedef int clientid_t ;


 struct nfs4_client* find_client_in_id_table (struct list_head*,int *,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static struct nfs4_client *
find_unconfirmed_client(clientid_t *clid, bool sessions, struct nfsd_net *nn)
{
 struct list_head *tbl = nn->unconf_id_hashtbl;

 lockdep_assert_held(&nn->client_lock);
 return find_client_in_id_table(tbl, clid, sessions);
}
