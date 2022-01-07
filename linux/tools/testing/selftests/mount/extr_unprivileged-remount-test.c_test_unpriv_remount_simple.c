
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_unpriv_remount (char*,int *,int,int,int ) ;

__attribute__((used)) static bool test_unpriv_remount_simple(int mount_flags)
{
 return test_unpriv_remount("ramfs", ((void*)0), mount_flags, mount_flags, 0);
}
