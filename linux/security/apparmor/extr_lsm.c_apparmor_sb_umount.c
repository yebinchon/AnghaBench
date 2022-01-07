
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct aa_label {int dummy; } ;


 struct aa_label* __begin_current_label_crit_section () ;
 int __end_current_label_crit_section (struct aa_label*) ;
 int aa_umount (struct aa_label*,struct vfsmount*,int) ;
 int unconfined (struct aa_label*) ;

__attribute__((used)) static int apparmor_sb_umount(struct vfsmount *mnt, int flags)
{
 struct aa_label *label;
 int error = 0;

 label = __begin_current_label_crit_section();
 if (!unconfined(label))
  error = aa_umount(label, mnt, flags);
 __end_current_label_crit_section(label);

 return error;
}
