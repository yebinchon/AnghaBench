
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_t ;
typedef int cap_flag_value_t ;


 int CAP_EFFECTIVE ;
 int CAP_SYS_ADMIN ;
 scalar_t__ cap_free (int ) ;
 scalar_t__ cap_get_flag (int ,int ,int ,int *) ;
 int cap_get_proc () ;

int main(void)
{
 cap_flag_value_t val;
 cap_t caps = cap_get_proc();

 if (!caps)
  return 1;

 if (cap_get_flag(caps, CAP_SYS_ADMIN, CAP_EFFECTIVE, &val) != 0)
  return 1;

 if (cap_free(caps) != 0)
  return 1;

 return 0;
}
