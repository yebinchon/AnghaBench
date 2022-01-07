
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct nsproxy {int dummy; } ;
struct ns_common {int dummy; } ;
struct cred {int user_ns; } ;
struct TYPE_5__ {TYPE_1__* fs; } ;
struct TYPE_4__ {int users; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int commit_creds (struct cred*) ;
 TYPE_2__* current ;
 struct user_namespace* current_user_ns () ;
 int get_user_ns (struct user_namespace*) ;
 int ns_capable (struct user_namespace*,int ) ;
 struct cred* prepare_creds () ;
 int put_user_ns (int ) ;
 int set_cred_user_ns (struct cred*,int ) ;
 int thread_group_empty (TYPE_2__*) ;
 struct user_namespace* to_user_ns (struct ns_common*) ;

__attribute__((used)) static int userns_install(struct nsproxy *nsproxy, struct ns_common *ns)
{
 struct user_namespace *user_ns = to_user_ns(ns);
 struct cred *cred;




 if (user_ns == current_user_ns())
  return -EINVAL;


 if (!thread_group_empty(current))
  return -EINVAL;

 if (current->fs->users != 1)
  return -EINVAL;

 if (!ns_capable(user_ns, CAP_SYS_ADMIN))
  return -EPERM;

 cred = prepare_creds();
 if (!cred)
  return -ENOMEM;

 put_user_ns(cred->user_ns);
 set_cred_user_ns(cred, get_user_ns(user_ns));

 return commit_creds(cred);
}
