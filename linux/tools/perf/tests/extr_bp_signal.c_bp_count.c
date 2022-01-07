
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long TEST_FAIL ;
 int pr_debug (char*,int) ;
 int read (int,long long*,int) ;

__attribute__((used)) static long long bp_count(int fd)
{
 long long count;
 int ret;

 ret = read(fd, &count, sizeof(long long));
 if (ret != sizeof(long long)) {
  pr_debug("failed to read: %d\n", ret);
  return TEST_FAIL;
 }

 return count;
}
