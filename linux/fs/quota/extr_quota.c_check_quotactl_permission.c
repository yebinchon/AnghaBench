
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef int qid_t ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 int GRPQUOTA ;
 int USRQUOTA ;
 int capable (int ) ;
 int current_euid () ;
 int current_user_ns () ;
 int in_egroup_p (int ) ;
 int make_kgid (int ,int ) ;
 int make_kuid (int ,int ) ;
 int security_quotactl (int,int,int ,struct super_block*) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int check_quotactl_permission(struct super_block *sb, int type, int cmd,
         qid_t id)
{
 switch (cmd) {

 case 135:
 case 132:
 case 134:
 case 131:
 case 130:
 case 128:
  break;

 case 133:
 case 129:
  if ((type == USRQUOTA && uid_eq(current_euid(), make_kuid(current_user_ns(), id))) ||
      (type == GRPQUOTA && in_egroup_p(make_kgid(current_user_ns(), id))))
   break;

 default:
  if (!capable(CAP_SYS_ADMIN))
   return -EPERM;
 }

 return security_quotactl(cmd, type, id, sb);
}
