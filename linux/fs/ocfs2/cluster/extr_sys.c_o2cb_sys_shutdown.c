
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kset_unregister (int ) ;
 int mlog_sys_shutdown () ;
 int o2cb_kset ;

void o2cb_sys_shutdown(void)
{
 mlog_sys_shutdown();
 kset_unregister(o2cb_kset);
}
