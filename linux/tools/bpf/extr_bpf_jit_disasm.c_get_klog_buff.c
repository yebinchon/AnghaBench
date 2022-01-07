
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ACTION_READ_ALL ;
 int CMD_ACTION_SIZE_BUFFER ;
 int free (char*) ;
 int klogctl (int ,char*,int) ;
 char* malloc (int) ;

__attribute__((used)) static char *get_klog_buff(unsigned int *klen)
{
 int ret, len;
 char *buff;

 len = klogctl(CMD_ACTION_SIZE_BUFFER, ((void*)0), 0);
 if (len < 0)
  return ((void*)0);

 buff = malloc(len);
 if (!buff)
  return ((void*)0);

 ret = klogctl(CMD_ACTION_READ_ALL, buff, len);
 if (ret < 0) {
  free(buff);
  return ((void*)0);
 }

 *klen = ret;
 return buff;
}
