
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct super_block {TYPE_1__* s_type; int s_id; } ;
struct TYPE_2__ {int name; } ;


 int GFP_KERNEL ;
 int pr_warn (char*,char const*,int ,int ,int) ;
 int security_context_str_to_sid (int *,char const*,int *,int ) ;
 int selinux_state ;

__attribute__((used)) static int parse_sid(struct super_block *sb, const char *s, u32 *sid)
{
 int rc = security_context_str_to_sid(&selinux_state, s,
          sid, GFP_KERNEL);
 if (rc)
  pr_warn("SELinux: security_context_str_to_sid"
         "(%s) failed for (dev %s, type %s) errno=%d\n",
         s, sb->s_id, sb->s_type->name, rc);
 return rc;
}
