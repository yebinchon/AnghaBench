
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sync_maxlen; int syncid; int mcast_ifn; } ;
struct netns_ipvs {TYPE_1__ bcfg; } ;
struct ip_vs_sync_thread_data {int buf; TYPE_3__* sock; int id; struct netns_ipvs* ipvs; } ;
struct TYPE_6__ {TYPE_2__* sk; } ;
struct TYPE_5__ {int sk_receive_queue; } ;


 int EAGAIN ;
 int ip_vs_process_message (struct netns_ipvs*,int ,int) ;
 int ip_vs_receive (TYPE_3__*,int ,int ) ;
 scalar_t__ kthread_should_stop () ;
 int pr_err (char*) ;
 int pr_info (char*,int ,int ,int ) ;
 int * sk_sleep (TYPE_2__*) ;
 int skb_queue_empty (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int sync_thread_backup(void *data)
{
 struct ip_vs_sync_thread_data *tinfo = data;
 struct netns_ipvs *ipvs = tinfo->ipvs;
 int len;

 pr_info("sync thread started: state = BACKUP, mcast_ifn = %s, "
  "syncid = %d, id = %d\n",
  ipvs->bcfg.mcast_ifn, ipvs->bcfg.syncid, tinfo->id);

 while (!kthread_should_stop()) {
  wait_event_interruptible(*sk_sleep(tinfo->sock->sk),
    !skb_queue_empty(&tinfo->sock->sk->sk_receive_queue)
    || kthread_should_stop());


  while (!skb_queue_empty(&(tinfo->sock->sk->sk_receive_queue))) {
   len = ip_vs_receive(tinfo->sock, tinfo->buf,
     ipvs->bcfg.sync_maxlen);
   if (len <= 0) {
    if (len != -EAGAIN)
     pr_err("receiving message error\n");
    break;
   }

   ip_vs_process_message(ipvs, tinfo->buf, len);
  }
 }

 return 0;
}
