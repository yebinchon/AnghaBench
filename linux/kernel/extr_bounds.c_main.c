
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;


 int CONFIG_NR_CPUS ;
 int DEFINE (int ,int) ;
 int MAX_NR_ZONES ;
 int NR_CPUS_BITS ;
 int NR_PAGEFLAGS ;
 int SPINLOCK_SIZE ;
 int __MAX_NR_ZONES ;
 int __NR_PAGEFLAGS ;
 int ilog2 (int ) ;

int main(void)
{

 DEFINE(NR_PAGEFLAGS, __NR_PAGEFLAGS);
 DEFINE(MAX_NR_ZONES, __MAX_NR_ZONES);



 DEFINE(SPINLOCK_SIZE, sizeof(spinlock_t));


 return 0;
}
