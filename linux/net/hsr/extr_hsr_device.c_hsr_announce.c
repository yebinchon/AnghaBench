
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct hsr_priv {int announce_count; scalar_t__ prot_version; int announce_timer; } ;
struct hsr_port {int dev; } ;


 int HSR_ANNOUNCE_INTERVAL ;
 int HSR_LIFE_CHECK_INTERVAL ;
 int HSR_PT_MASTER ;
 int HSR_TLV_ANNOUNCE ;
 int HSR_TLV_LIFE_CHECK ;
 int announce_timer ;
 struct hsr_priv* from_timer (struct hsr_priv*,struct timer_list*,int ) ;
 struct hsr_port* hsr_port_get_hsr (struct hsr_priv*,int ) ;
 scalar_t__ is_admin_up (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 unsigned long msecs_to_jiffies (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int send_hsr_supervision_frame (struct hsr_port*,int ,scalar_t__) ;

__attribute__((used)) static void hsr_announce(struct timer_list *t)
{
 struct hsr_priv *hsr;
 struct hsr_port *master;
 unsigned long interval;

 hsr = from_timer(hsr, t, announce_timer);

 rcu_read_lock();
 master = hsr_port_get_hsr(hsr, HSR_PT_MASTER);

 if (hsr->announce_count < 3 && hsr->prot_version == 0) {
  send_hsr_supervision_frame(master, HSR_TLV_ANNOUNCE,
        hsr->prot_version);
  hsr->announce_count++;

  interval = msecs_to_jiffies(HSR_ANNOUNCE_INTERVAL);
 } else {
  send_hsr_supervision_frame(master, HSR_TLV_LIFE_CHECK,
        hsr->prot_version);

  interval = msecs_to_jiffies(HSR_LIFE_CHECK_INTERVAL);
 }

 if (is_admin_up(master->dev))
  mod_timer(&hsr->announce_timer, jiffies + interval);

 rcu_read_unlock();
}
