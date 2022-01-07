
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void common_audit_data ;
typedef struct audit_buffer audit_buffer ;


 int AUDIT_AVC ;
 int GFP_ATOMIC ;
 int __GFP_NOWARN ;
 int audit_context () ;
 int audit_log_end (struct audit_buffer*) ;
 struct audit_buffer* audit_log_start (int ,int,int ) ;
 int dump_common_audit_data (struct audit_buffer*,void*) ;

void common_lsm_audit(struct common_audit_data *a,
 void (*pre_audit)(struct audit_buffer *, void *),
 void (*post_audit)(struct audit_buffer *, void *))
{
 struct audit_buffer *ab;

 if (a == ((void*)0))
  return;

 ab = audit_log_start(audit_context(), GFP_ATOMIC | __GFP_NOWARN,
        AUDIT_AVC);

 if (ab == ((void*)0))
  return;

 if (pre_audit)
  pre_audit(ab, a);

 dump_common_audit_data(ab, a);

 if (post_audit)
  post_audit(ab, a);

 audit_log_end(ab);
}
