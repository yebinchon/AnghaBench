
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct TYPE_4__ {int len; char* data; } ;
struct gss_upcall_msg {char* databuf; TYPE_2__ msg; int uid; TYPE_1__* auth; } ;
struct gss_api_mech {int gm_upcall_enctypes; int gm_name; } ;
struct cred {struct user_namespace* user_ns; } ;
struct TYPE_3__ {struct gss_api_mech* mech; } ;


 int ENOMEM ;
 int WARN_ON_ONCE (int) ;
 int from_kuid_munged (struct user_namespace*,int ) ;
 int scnprintf (char*,size_t,char*,...) ;
 char* strchr (char const*,char) ;
 int trace_rpcgss_upcall_msg (char*) ;

__attribute__((used)) static int gss_encode_v1_msg(struct gss_upcall_msg *gss_msg,
    const char *service_name,
    const char *target_name,
    const struct cred *cred)
{
 struct user_namespace *userns = cred->user_ns;
 struct gss_api_mech *mech = gss_msg->auth->mech;
 char *p = gss_msg->databuf;
 size_t buflen = sizeof(gss_msg->databuf);
 int len;

 len = scnprintf(p, buflen, "mech=%s uid=%d", mech->gm_name,
   from_kuid_munged(userns, gss_msg->uid));
 buflen -= len;
 p += len;
 gss_msg->msg.len = len;





 if (target_name) {
  len = scnprintf(p, buflen, " target=%s", target_name);
  buflen -= len;
  p += len;
  gss_msg->msg.len += len;
 }
 if (service_name) {
  char *c = strchr(service_name, '@');

  if (!c)
   len = scnprintf(p, buflen, " service=%s",
     service_name);
  else
   len = scnprintf(p, buflen,
     " service=%.*s srchost=%s",
     (int)(c - service_name),
     service_name, c + 1);
  buflen -= len;
  p += len;
  gss_msg->msg.len += len;
 }

 if (mech->gm_upcall_enctypes) {
  len = scnprintf(p, buflen, " enctypes=%s",
    mech->gm_upcall_enctypes);
  buflen -= len;
  p += len;
  gss_msg->msg.len += len;
 }
 trace_rpcgss_upcall_msg(gss_msg->databuf);
 len = scnprintf(p, buflen, "\n");
 if (len == 0)
  goto out_overflow;
 gss_msg->msg.len += len;
 gss_msg->msg.data = gss_msg->databuf;
 return 0;
out_overflow:
 WARN_ON_ONCE(1);
 return -ENOMEM;
}
