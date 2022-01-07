
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct setuid_rule {void* dst_uid; void* src_uid; } ;
struct file {TYPE_1__* f_cred; } ;
struct TYPE_2__ {int user_ns; } ;


 int EINVAL ;
 int kstrtou32 (char*,int ,int *) ;
 void* make_kuid (int ,int ) ;
 char* strchr (char*,char) ;
 int uid_valid (void*) ;

__attribute__((used)) static int parse_policy_line(struct file *file, char *buf,
 struct setuid_rule *rule)
{
 char *child_str;
 int ret;
 u32 parsed_parent, parsed_child;


 child_str = strchr(buf, ':');
 if (child_str == ((void*)0))
  return -EINVAL;
 *child_str = '\0';
 child_str++;

 ret = kstrtou32(buf, 0, &parsed_parent);
 if (ret)
  return ret;

 ret = kstrtou32(child_str, 0, &parsed_child);
 if (ret)
  return ret;

 rule->src_uid = make_kuid(file->f_cred->user_ns, parsed_parent);
 rule->dst_uid = make_kuid(file->f_cred->user_ns, parsed_child);
 if (!uid_valid(rule->src_uid) || !uid_valid(rule->dst_uid))
  return -EINVAL;

 return 0;
}
