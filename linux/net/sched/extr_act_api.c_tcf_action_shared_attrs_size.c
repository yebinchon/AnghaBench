
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tcf_t {int dummy; } ;
struct tc_cookie {int len; } ;
struct tc_action {int act_cookie; } ;
struct gnet_stats_queue {int dummy; } ;
struct gnet_stats_basic {int dummy; } ;


 int IFNAMSIZ ;
 size_t nla_total_size (int) ;
 size_t nla_total_size_64bit (int) ;
 struct tc_cookie* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static size_t tcf_action_shared_attrs_size(const struct tc_action *act)
{
 struct tc_cookie *act_cookie;
 u32 cookie_len = 0;

 rcu_read_lock();
 act_cookie = rcu_dereference(act->act_cookie);

 if (act_cookie)
  cookie_len = nla_total_size(act_cookie->len);
 rcu_read_unlock();

 return nla_total_size(0)
  + nla_total_size(IFNAMSIZ)
  + cookie_len
  + nla_total_size(0)

  + nla_total_size_64bit(sizeof(struct gnet_stats_basic))

  + nla_total_size_64bit(sizeof(struct gnet_stats_queue))
  + nla_total_size(0)
  + nla_total_size(sizeof(struct tcf_t));
}
