
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfsd_net {int client_lock; int close_lru; } ;
struct nfs4_openowner {int oo_time; int oo_close_lru; struct nfs4_ol_stateid* oo_last_closed_stid; } ;
struct TYPE_4__ {int * sc_file; int sc_count; TYPE_1__* sc_client; } ;
struct nfs4_ol_stateid {TYPE_2__ st_stid; int st_stateowner; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int net; } ;


 int close_wq ;
 int dprintk (char*,struct nfs4_openowner*) ;
 int get_seconds () ;
 int list_move_tail (int *,int *) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfs4_put_stid (TYPE_2__*) ;
 int nfsd_net_id ;
 struct nfs4_openowner* openowner (int ) ;
 int put_nfs4_file (int *) ;
 int refcount_read (int *) ;
 int release_all_access (struct nfs4_ol_stateid*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void
move_to_close_lru(struct nfs4_ol_stateid *s, struct net *net)
{
 struct nfs4_ol_stateid *last;
 struct nfs4_openowner *oo = openowner(s->st_stateowner);
 struct nfsd_net *nn = net_generic(s->st_stid.sc_client->net,
      nfsd_net_id);

 dprintk("NFSD: move_to_close_lru nfs4_openowner %p\n", oo);
 wait_event(close_wq, refcount_read(&s->st_stid.sc_count) == 2);

 release_all_access(s);
 if (s->st_stid.sc_file) {
  put_nfs4_file(s->st_stid.sc_file);
  s->st_stid.sc_file = ((void*)0);
 }

 spin_lock(&nn->client_lock);
 last = oo->oo_last_closed_stid;
 oo->oo_last_closed_stid = s;
 list_move_tail(&oo->oo_close_lru, &nn->close_lru);
 oo->oo_time = get_seconds();
 spin_unlock(&nn->client_lock);
 if (last)
  nfs4_put_stid(&last->st_stid);
}
