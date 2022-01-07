
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {unsigned long long totalram; unsigned long long totalhigh; } ;


 unsigned long NFSSVC_MAXBLKSIZE ;
 unsigned long long PAGE_SHIFT ;
 int si_meminfo (struct sysinfo*) ;

__attribute__((used)) static int nfsd_get_default_max_blksize(void)
{
 struct sysinfo i;
 unsigned long long target;
 unsigned long ret;

 si_meminfo(&i);
 target = (i.totalram - i.totalhigh) << PAGE_SHIFT;





 target >>= 12;

 ret = NFSSVC_MAXBLKSIZE;
 while (ret > target && ret >= 8*1024*2)
  ret /= 2;
 return ret;
}
