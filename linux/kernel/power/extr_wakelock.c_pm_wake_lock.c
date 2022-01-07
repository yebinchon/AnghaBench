
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct wakelock {int ws; } ;


 int CAP_BLOCK_SUSPEND ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ IS_ERR (struct wakelock*) ;
 scalar_t__ NSEC_PER_MSEC ;
 int PTR_ERR (struct wakelock*) ;
 int __pm_stay_awake (int ) ;
 int __pm_wakeup_event (int ,scalar_t__) ;
 int capable (int ) ;
 int do_div (scalar_t__,scalar_t__) ;
 int isspace (char const) ;
 int kstrtou64 (int ,int,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skip_spaces (char const*) ;
 struct wakelock* wakelock_lookup_add (char const*,size_t,int) ;
 int wakelocks_lock ;
 int wakelocks_lru_most_recent (struct wakelock*) ;

int pm_wake_lock(const char *buf)
{
 const char *str = buf;
 struct wakelock *wl;
 u64 timeout_ns = 0;
 size_t len;
 int ret = 0;

 if (!capable(CAP_BLOCK_SUSPEND))
  return -EPERM;

 while (*str && !isspace(*str))
  str++;

 len = str - buf;
 if (!len)
  return -EINVAL;

 if (*str && *str != '\n') {

  ret = kstrtou64(skip_spaces(str), 10, &timeout_ns);
  if (ret)
   return -EINVAL;
 }

 mutex_lock(&wakelocks_lock);

 wl = wakelock_lookup_add(buf, len, 1);
 if (IS_ERR(wl)) {
  ret = PTR_ERR(wl);
  goto out;
 }
 if (timeout_ns) {
  u64 timeout_ms = timeout_ns + NSEC_PER_MSEC - 1;

  do_div(timeout_ms, NSEC_PER_MSEC);
  __pm_wakeup_event(wl->ws, timeout_ms);
 } else {
  __pm_stay_awake(wl->ws);
 }

 wakelocks_lru_most_recent(wl);

 out:
 mutex_unlock(&wakelocks_lock);
 return ret;
}
