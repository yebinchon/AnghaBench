
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int fsgid; int fsuid; } ;


 int ENOMEM ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 struct cred* override_creds (struct cred*) ;
 struct cred* prepare_creds () ;
 int put_cred (struct cred*) ;

__attribute__((used)) static int
nfs4_save_creds(const struct cred **original_creds)
{
 struct cred *new;

 new = prepare_creds();
 if (!new)
  return -ENOMEM;

 new->fsuid = GLOBAL_ROOT_UID;
 new->fsgid = GLOBAL_ROOT_GID;
 *original_creds = override_creds(new);
 put_cred(new);
 return 0;
}
