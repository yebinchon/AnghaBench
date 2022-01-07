
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rate_control_ops {int dummy; } ;


 char const* CONFIG_MAC80211_RC_DEFAULT ;
 int THIS_MODULE ;
 char const* ieee80211_default_rc_algo ;
 struct rate_control_ops* ieee80211_try_rate_control_ops_get (char const*) ;
 int kernel_param_lock (int ) ;
 int kernel_param_unlock (int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static const struct rate_control_ops *
ieee80211_rate_control_ops_get(const char *name)
{
 const struct rate_control_ops *ops;
 const char *alg_name;

 kernel_param_lock(THIS_MODULE);
 if (!name)
  alg_name = ieee80211_default_rc_algo;
 else
  alg_name = name;

 ops = ieee80211_try_rate_control_ops_get(alg_name);
 if (!ops && name)

  ops = ieee80211_try_rate_control_ops_get(ieee80211_default_rc_algo);


 if (!ops && (strlen(CONFIG_MAC80211_RC_DEFAULT) > 0))

  ops = ieee80211_try_rate_control_ops_get(CONFIG_MAC80211_RC_DEFAULT);

 kernel_param_unlock(THIS_MODULE);

 return ops;
}
