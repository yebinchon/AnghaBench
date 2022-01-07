
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int event_mutex ;
 int mutex_is_locked (int *) ;
 int uprobe_buffer_init () ;
 int uprobe_buffer_refcnt ;

__attribute__((used)) static int uprobe_buffer_enable(void)
{
 int ret = 0;

 BUG_ON(!mutex_is_locked(&event_mutex));

 if (uprobe_buffer_refcnt++ == 0) {
  ret = uprobe_buffer_init();
  if (ret < 0)
   uprobe_buffer_refcnt--;
 }

 return ret;
}
