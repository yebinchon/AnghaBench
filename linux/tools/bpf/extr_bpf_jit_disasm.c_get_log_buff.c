
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_flog_buff (char const*,unsigned int*) ;
 char* get_klog_buff (unsigned int*) ;

__attribute__((used)) static char *get_log_buff(const char *file, unsigned int *klen)
{
 return file ? get_flog_buff(file, klen) : get_klog_buff(klen);
}
