
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktgen_thread {int if_list; } ;
struct pktgen_dev {int list; struct pktgen_thread* pg_thread; scalar_t__ running; } ;


 int EBUSY ;
 int if_lock (struct pktgen_thread*) ;
 int if_unlock (struct pktgen_thread*) ;
 int list_add_rcu (int *,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int add_dev_to_thread(struct pktgen_thread *t,
        struct pktgen_dev *pkt_dev)
{
 int rv = 0;







 if_lock(t);

 if (pkt_dev->pg_thread) {
  pr_err("ERROR: already assigned to a thread\n");
  rv = -EBUSY;
  goto out;
 }

 pkt_dev->running = 0;
 pkt_dev->pg_thread = t;
 list_add_rcu(&pkt_dev->list, &t->if_list);

out:
 if_unlock(t);
 return rv;
}
