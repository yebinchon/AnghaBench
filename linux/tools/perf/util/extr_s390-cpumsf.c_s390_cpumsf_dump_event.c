
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_cpumsf {int dummy; } ;


 int printf (char*) ;
 int s390_cpumsf_dump (struct s390_cpumsf*,unsigned char*,size_t) ;

__attribute__((used)) static void s390_cpumsf_dump_event(struct s390_cpumsf *sf, unsigned char *buf,
       size_t len)
{
 printf(".\n");
 s390_cpumsf_dump(sf, buf, len);
}
