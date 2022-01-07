
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakelock {int ws; } ;


 int CAP_BLOCK_SUSPEND ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ IS_ERR (struct wakelock*) ;
 int PTR_ERR (struct wakelock*) ;
 int __pm_relax (int ) ;
 int capable (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t strlen (char const*) ;
 struct wakelock* wakelock_lookup_add (char const*,size_t,int) ;
 int wakelocks_gc () ;
 int wakelocks_lock ;
 int wakelocks_lru_most_recent (struct wakelock*) ;

int pm_wake_unlock(const char *buf)
{
 struct wakelock *wl;
 size_t len;
 int ret = 0;

 if (!capable(CAP_BLOCK_SUSPEND))
  return -EPERM;

 len = strlen(buf);
 if (!len)
  return -EINVAL;

 if (buf[len-1] == '\n')
  len--;

 if (!len)
  return -EINVAL;

 mutex_lock(&wakelocks_lock);

 wl = wakelock_lookup_add(buf, len, 0);
 if (IS_ERR(wl)) {
  ret = PTR_ERR(wl);
  goto out;
 }
 __pm_relax(wl->ws);

 wakelocks_lru_most_recent(wl);
 wakelocks_gc();

 out:
 mutex_unlock(&wakelocks_lock);
 return ret;
}
