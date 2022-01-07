
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;


 unsigned long CLONE_NEWUSER ;
 int ENOMEM ;
 int create_user_ns (struct cred*) ;
 struct cred* prepare_creds () ;
 int put_cred (struct cred*) ;

int unshare_userns(unsigned long unshare_flags, struct cred **new_cred)
{
 struct cred *cred;
 int err = -ENOMEM;

 if (!(unshare_flags & CLONE_NEWUSER))
  return 0;

 cred = prepare_creds();
 if (cred) {
  err = create_user_ns(cred);
  if (err)
   put_cred(cred);
  else
   *new_cred = cred;
 }

 return err;
}
