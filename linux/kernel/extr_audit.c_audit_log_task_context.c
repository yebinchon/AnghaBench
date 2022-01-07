
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct audit_buffer {int dummy; } ;


 int EINVAL ;
 int audit_log_format (struct audit_buffer*,char*,char*) ;
 int audit_panic (char*) ;
 int current ;
 int security_release_secctx (char*,unsigned int) ;
 int security_secid_to_secctx (int ,char**,unsigned int*) ;
 int security_task_getsecid (int ,int *) ;

int audit_log_task_context(struct audit_buffer *ab)
{
 char *ctx = ((void*)0);
 unsigned len;
 int error;
 u32 sid;

 security_task_getsecid(current, &sid);
 if (!sid)
  return 0;

 error = security_secid_to_secctx(sid, &ctx, &len);
 if (error) {
  if (error != -EINVAL)
   goto error_path;
  return 0;
 }

 audit_log_format(ab, " subj=%s", ctx);
 security_release_secctx(ctx, len);
 return 0;

error_path:
 audit_panic("error in audit_log_task_context");
 return error;
}
