
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int runtime ;


 int BUG_ON (int) ;
 int read (int,int *,int) ;

__attribute__((used)) static u64 get_cpu_usage_nsec_self(int fd)
{
 u64 runtime;
 int ret;

 ret = read(fd, &runtime, sizeof(runtime));
 BUG_ON(ret != sizeof(runtime));

 return runtime;
}
