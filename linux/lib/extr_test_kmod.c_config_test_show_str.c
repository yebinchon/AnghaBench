
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t config_test_show_str(struct mutex *config_mutex,
        char *dst,
        char *src)
{
 int len;

 mutex_lock(config_mutex);
 len = snprintf(dst, PAGE_SIZE, "%s\n", src);
 mutex_unlock(config_mutex);

 return len;
}
