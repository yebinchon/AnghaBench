
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int atomic_inc_return (int *) ;
 int fsnotify_sync_cookie ;

u32 fsnotify_get_cookie(void)
{
 return atomic_inc_return(&fsnotify_sync_cookie);
}
