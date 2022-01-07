
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_debug (char*,int) ;
 int read (int,long long*,int) ;

__attribute__((used)) static int wp_read(int fd, long long *count, int size)
{
 int ret = read(fd, count, size);

 if (ret != size) {
  pr_debug("failed to read: %d\n", ret);
  return -1;
 }
 return 0;
}
