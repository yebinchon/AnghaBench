
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;
struct batadv_tp_vars {int other_end; int icmp_uid; int session; int refcount; struct batadv_priv* bat_priv; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_TP_REASON_MEMORY_ERROR ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int batadv_tp_batctl_error_notify (int ,int ,struct batadv_priv*,int ) ;
 int batadv_tp_send ;
 int batadv_tp_sender_cleanup (struct batadv_priv*,struct batadv_tp_vars*) ;
 int batadv_tp_session_cookie (int ,int ) ;
 int batadv_tp_vars_put (struct batadv_tp_vars*) ;
 int kref_get (int *) ;
 struct task_struct* kthread_create (int ,struct batadv_tp_vars*,char*) ;
 int pr_err (char*) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static void batadv_tp_start_kthread(struct batadv_tp_vars *tp_vars)
{
 struct task_struct *kthread;
 struct batadv_priv *bat_priv = tp_vars->bat_priv;
 u32 session_cookie;

 kref_get(&tp_vars->refcount);
 kthread = kthread_create(batadv_tp_send, tp_vars, "kbatadv_tp_meter");
 if (IS_ERR(kthread)) {
  session_cookie = batadv_tp_session_cookie(tp_vars->session,
         tp_vars->icmp_uid);
  pr_err("batadv: cannot create tp meter kthread\n");
  batadv_tp_batctl_error_notify(BATADV_TP_REASON_MEMORY_ERROR,
           tp_vars->other_end,
           bat_priv, session_cookie);


  batadv_tp_vars_put(tp_vars);


  batadv_tp_sender_cleanup(bat_priv, tp_vars);
  return;
 }

 wake_up_process(kthread);
}
