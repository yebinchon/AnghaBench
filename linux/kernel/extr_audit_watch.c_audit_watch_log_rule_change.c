
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_watch {int path; } ;
struct audit_krule {char* listnr; int filterkey; } ;
struct audit_buffer {int dummy; } ;


 int AUDIT_CONFIG_CHANGE ;
 int GFP_NOFS ;
 int audit_context () ;
 int audit_enabled ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,char*) ;
 int audit_log_key (struct audit_buffer*,int ) ;
 int audit_log_session_info (struct audit_buffer*) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 int audit_log_untrustedstring (struct audit_buffer*,int ) ;

__attribute__((used)) static void audit_watch_log_rule_change(struct audit_krule *r, struct audit_watch *w, char *op)
{
 struct audit_buffer *ab;

 if (!audit_enabled)
  return;
 ab = audit_log_start(audit_context(), GFP_NOFS, AUDIT_CONFIG_CHANGE);
 if (!ab)
  return;
 audit_log_session_info(ab);
 audit_log_format(ab, "op=%s path=", op);
 audit_log_untrustedstring(ab, w->path);
 audit_log_key(ab, r->filterkey);
 audit_log_format(ab, " list=%d res=1", r->listnr);
 audit_log_end(ab);
}
