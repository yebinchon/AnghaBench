
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_security_struct {int sid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int current_sid () ;
 struct tun_security_struct* kzalloc (int,int ) ;

__attribute__((used)) static int selinux_tun_dev_alloc_security(void **security)
{
 struct tun_security_struct *tunsec;

 tunsec = kzalloc(sizeof(*tunsec), GFP_KERNEL);
 if (!tunsec)
  return -ENOMEM;
 tunsec->sid = current_sid();

 *security = tunsec;
 return 0;
}
