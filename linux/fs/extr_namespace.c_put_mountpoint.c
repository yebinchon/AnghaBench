
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mountpoint {int dummy; } ;


 int __put_mountpoint (struct mountpoint*,int *) ;
 int ex_mountpoints ;

__attribute__((used)) static void put_mountpoint(struct mountpoint *mp)
{
 __put_mountpoint(mp, &ex_mountpoints);
}
