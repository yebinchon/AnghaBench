
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int target_fd ;
 int target_fname ;
 int unlink (int ) ;

__attribute__((used)) static int hv_copy_cancel(void)
{
 close(target_fd);
 unlink(target_fname);
 return 0;

}
