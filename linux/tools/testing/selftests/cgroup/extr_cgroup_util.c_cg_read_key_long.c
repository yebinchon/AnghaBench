
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int PAGE_SIZE ;
 long atol (char*) ;
 scalar_t__ cg_read (char const*,char const*,char*,int) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;

long cg_read_key_long(const char *cgroup, const char *control, const char *key)
{
 char buf[PAGE_SIZE];
 char *ptr;

 if (cg_read(cgroup, control, buf, sizeof(buf)))
  return -1;

 ptr = strstr(buf, key);
 if (!ptr)
  return -1;

 return atol(ptr + strlen(key));
}
