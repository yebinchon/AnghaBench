
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_xprt {int xpt_list; int xpt_flags; } ;
struct TYPE_2__ {int * function; } ;
struct svc_serv {int sv_lock; TYPE_1__ sv_temptimer; int sv_tmpcnt; int sv_tempsocks; } ;


 int HZ ;
 int XPT_TEMP ;
 scalar_t__ jiffies ;
 int list_add (int *,int *) ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int * svc_age_temp_xprts ;
 int svc_conn_age_period ;
 int svc_xprt_received (struct svc_xprt*) ;

__attribute__((used)) static void svc_add_new_temp_xprt(struct svc_serv *serv, struct svc_xprt *newxpt)
{
 spin_lock_bh(&serv->sv_lock);
 set_bit(XPT_TEMP, &newxpt->xpt_flags);
 list_add(&newxpt->xpt_list, &serv->sv_tempsocks);
 serv->sv_tmpcnt++;
 if (serv->sv_temptimer.function == ((void*)0)) {

  serv->sv_temptimer.function = svc_age_temp_xprts;
  mod_timer(&serv->sv_temptimer,
     jiffies + svc_conn_age_period * HZ);
 }
 spin_unlock_bh(&serv->sv_lock);
 svc_xprt_received(newxpt);
}
