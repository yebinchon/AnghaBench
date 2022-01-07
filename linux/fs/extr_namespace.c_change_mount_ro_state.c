
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt; } ;


 unsigned int MNT_READONLY ;
 int __mnt_is_readonly (int *) ;
 int __mnt_unmake_readonly (struct mount*) ;
 int mnt_make_readonly (struct mount*) ;

__attribute__((used)) static int change_mount_ro_state(struct mount *mnt, unsigned int mnt_flags)
{
 bool readonly_request = (mnt_flags & MNT_READONLY);

 if (readonly_request == __mnt_is_readonly(&mnt->mnt))
  return 0;

 if (readonly_request)
  return mnt_make_readonly(mnt);

 return __mnt_unmake_readonly(mnt);
}
