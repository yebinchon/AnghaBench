
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;


 int put_mountpoint (int ) ;
 int unhash_mnt (struct mount*) ;

__attribute__((used)) static void umount_mnt(struct mount *mnt)
{
 put_mountpoint(unhash_mnt(mnt));
}
