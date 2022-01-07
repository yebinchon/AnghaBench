
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,int) ;
 int test_fw_mutex ;

__attribute__((used)) static ssize_t test_dev_config_show_u8(char *buf, u8 cfg)
{
 u8 val;

 mutex_lock(&test_fw_mutex);
 val = cfg;
 mutex_unlock(&test_fw_mutex);

 return snprintf(buf, PAGE_SIZE, "%u\n", val);
}
