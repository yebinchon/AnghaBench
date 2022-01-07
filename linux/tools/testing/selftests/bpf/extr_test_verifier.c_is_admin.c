
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_value_t ;
typedef int cap_t ;
typedef scalar_t__ cap_flag_value_t ;


 scalar_t__ CAP_CLEAR ;
 int CAP_EFFECTIVE ;
 int CAP_IS_SUPPORTED (int ) ;
 scalar_t__ CAP_SET ;
 int CAP_SETFCAP ;
 int CAP_SYS_ADMIN ;
 scalar_t__ cap_free (int ) ;
 scalar_t__ cap_get_flag (int ,int const,int ,scalar_t__*) ;
 int cap_get_proc () ;
 int perror (char*) ;

__attribute__((used)) static bool is_admin(void)
{
 cap_t caps;
 cap_flag_value_t sysadmin = CAP_CLEAR;
 const cap_value_t cap_val = CAP_SYS_ADMIN;







 caps = cap_get_proc();
 if (!caps) {
  perror("cap_get_proc");
  return 0;
 }
 if (cap_get_flag(caps, cap_val, CAP_EFFECTIVE, &sysadmin))
  perror("cap_get_flag");
 if (cap_free(caps))
  perror("cap_free");
 return (sysadmin == CAP_SET);
}
