
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,char*) ;
 int test_fw_mutex ;

__attribute__((used)) static ssize_t config_test_show_str(char *dst,
        char *src)
{
 int len;

 mutex_lock(&test_fw_mutex);
 len = snprintf(dst, PAGE_SIZE, "%s\n", src);
 mutex_unlock(&test_fw_mutex);

 return len;
}
