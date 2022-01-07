
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct taskstats {int dummy; } ;
struct task_struct {TYPE_1__* signal; } ;
struct sk_buff {int dummy; } ;
struct listener_list {int list; } ;
struct TYPE_2__ {int stats; } ;


 int TASKSTATS_CMD_NEW ;
 int TASKSTATS_TYPE_PID ;
 int TASKSTATS_TYPE_TGID ;
 int family_registered ;
 int fill_stats (int *,int *,struct task_struct*,struct taskstats*) ;
 int fill_tgid_exit (struct task_struct*) ;
 int init_pid_ns ;
 int init_user_ns ;
 scalar_t__ list_empty (int *) ;
 int listener_array ;
 int memcpy (struct taskstats*,int ,int) ;
 struct taskstats* mk_reply (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 int prepare_reply (int *,int ,struct sk_buff**,size_t) ;
 struct listener_list* raw_cpu_ptr (int *) ;
 int send_cpu_listeners (struct sk_buff*,struct listener_list*) ;
 int task_pid_nr_ns (struct task_struct*,int *) ;
 int task_tgid_nr_ns (struct task_struct*,int *) ;
 size_t taskstats_packet_size () ;
 int taskstats_tgid_alloc (struct task_struct*) ;

void taskstats_exit(struct task_struct *tsk, int group_dead)
{
 int rc;
 struct listener_list *listeners;
 struct taskstats *stats;
 struct sk_buff *rep_skb;
 size_t size;
 int is_thread_group;

 if (!family_registered)
  return;




 size = taskstats_packet_size();

 is_thread_group = !!taskstats_tgid_alloc(tsk);
 if (is_thread_group) {

  size = 2 * size;

  fill_tgid_exit(tsk);
 }

 listeners = raw_cpu_ptr(&listener_array);
 if (list_empty(&listeners->list))
  return;

 rc = prepare_reply(((void*)0), TASKSTATS_CMD_NEW, &rep_skb, size);
 if (rc < 0)
  return;

 stats = mk_reply(rep_skb, TASKSTATS_TYPE_PID,
    task_pid_nr_ns(tsk, &init_pid_ns));
 if (!stats)
  goto err;

 fill_stats(&init_user_ns, &init_pid_ns, tsk, stats);




 if (!is_thread_group || !group_dead)
  goto send;

 stats = mk_reply(rep_skb, TASKSTATS_TYPE_TGID,
    task_tgid_nr_ns(tsk, &init_pid_ns));
 if (!stats)
  goto err;

 memcpy(stats, tsk->signal->stats, sizeof(*stats));

send:
 send_cpu_listeners(rep_skb, listeners);
 return;
err:
 nlmsg_free(rep_skb);
}
