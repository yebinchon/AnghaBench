
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct audit_buffer {int dummy; } ;


 int AUDIT_FEATURE_CHANGE ;
 scalar_t__ AUDIT_OFF ;
 int GFP_KERNEL ;
 int audit_context () ;
 scalar_t__ audit_enabled ;
 int * audit_feature_names ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,int ,int,int,int,int,int) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 int audit_log_task_info (struct audit_buffer*) ;

__attribute__((used)) static void audit_log_feature_change(int which, u32 old_feature, u32 new_feature,
         u32 old_lock, u32 new_lock, int res)
{
 struct audit_buffer *ab;

 if (audit_enabled == AUDIT_OFF)
  return;

 ab = audit_log_start(audit_context(), GFP_KERNEL, AUDIT_FEATURE_CHANGE);
 if (!ab)
  return;
 audit_log_task_info(ab);
 audit_log_format(ab, " feature=%s old=%u new=%u old_lock=%u new_lock=%u res=%d",
    audit_feature_names[which], !!old_feature, !!new_feature,
    !!old_lock, !!new_lock, res);
 audit_log_end(ab);
}
