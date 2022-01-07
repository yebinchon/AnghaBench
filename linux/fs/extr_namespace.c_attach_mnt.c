
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mountpoint {int dummy; } ;
struct mount {int dummy; } ;


 int __attach_mnt (struct mount*,struct mount*) ;
 int mnt_set_mountpoint (struct mount*,struct mountpoint*,struct mount*) ;

__attribute__((used)) static void attach_mnt(struct mount *mnt,
   struct mount *parent,
   struct mountpoint *mp)
{
 mnt_set_mountpoint(parent, mp, mnt);
 __attach_mnt(mnt, parent);
}
