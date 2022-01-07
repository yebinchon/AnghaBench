
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
typedef int uid ;
struct user_namespace {int dummy; } ;
struct TYPE_2__ {int len; int data; } ;
struct gss_upcall_msg {TYPE_1__ msg; int databuf; int uid; } ;
struct cred {struct user_namespace* user_ns; } ;


 int BUILD_BUG_ON (int) ;
 int from_kuid_munged (struct user_namespace*,int ) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void gss_encode_v0_msg(struct gss_upcall_msg *gss_msg,
         const struct cred *cred)
{
 struct user_namespace *userns = cred->user_ns;

 uid_t uid = from_kuid_munged(userns, gss_msg->uid);
 memcpy(gss_msg->databuf, &uid, sizeof(uid));
 gss_msg->msg.data = gss_msg->databuf;
 gss_msg->msg.len = sizeof(uid);

 BUILD_BUG_ON(sizeof(uid) > sizeof(gss_msg->databuf));
}
