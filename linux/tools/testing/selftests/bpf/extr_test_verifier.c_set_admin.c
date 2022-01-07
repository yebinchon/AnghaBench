
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_value_t ;
typedef int cap_t ;


 int CAP_CLEAR ;
 int CAP_EFFECTIVE ;
 int CAP_SET ;
 int CAP_SYS_ADMIN ;
 scalar_t__ cap_free (int ) ;
 int cap_get_proc () ;
 scalar_t__ cap_set_flag (int ,int ,int,int const*,int ) ;
 scalar_t__ cap_set_proc (int ) ;
 int perror (char*) ;

__attribute__((used)) static int set_admin(bool admin)
{
 cap_t caps;
 const cap_value_t cap_val = CAP_SYS_ADMIN;
 int ret = -1;

 caps = cap_get_proc();
 if (!caps) {
  perror("cap_get_proc");
  return -1;
 }
 if (cap_set_flag(caps, CAP_EFFECTIVE, 1, &cap_val,
    admin ? CAP_SET : CAP_CLEAR)) {
  perror("cap_set_flag");
  goto out;
 }
 if (cap_set_proc(caps)) {
  perror("cap_set_proc");
  goto out;
 }
 ret = 0;
out:
 if (cap_free(caps))
  perror("cap_free");
 return ret;
}
