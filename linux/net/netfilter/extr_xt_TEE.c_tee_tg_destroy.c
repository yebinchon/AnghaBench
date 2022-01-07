
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_tgdtor_param {struct xt_tee_tginfo* targinfo; int net; } ;
struct xt_tee_tginfo {TYPE_1__* priv; } ;
struct tee_net {int lock; } ;
struct TYPE_2__ {int list; } ;


 int kfree (TYPE_1__*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tee_net* net_generic (int ,int ) ;
 int static_key_slow_dec (int *) ;
 int tee_net_id ;
 int xt_tee_enabled ;

__attribute__((used)) static void tee_tg_destroy(const struct xt_tgdtor_param *par)
{
 struct tee_net *tn = net_generic(par->net, tee_net_id);
 struct xt_tee_tginfo *info = par->targinfo;

 if (info->priv) {
  mutex_lock(&tn->lock);
  list_del(&info->priv->list);
  mutex_unlock(&tn->lock);
  kfree(info->priv);
 }
 static_key_slow_dec(&xt_tee_enabled);
}
