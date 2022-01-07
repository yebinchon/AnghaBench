
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {int dummy; } ;


 int GCOV_ADD ;
 int gcov_event (int ,struct gcov_info*) ;
 scalar_t__ gcov_events_enabled ;
 int gcov_info_link (struct gcov_info*) ;
 unsigned int gcov_info_version (struct gcov_info*) ;
 int gcov_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,unsigned int) ;

void __gcov_init(struct gcov_info *info)
{
 static unsigned int gcov_version;

 mutex_lock(&gcov_lock);
 if (gcov_version == 0) {
  gcov_version = gcov_info_version(info);




  pr_info("version magic: 0x%x\n", gcov_version);
 }




 gcov_info_link(info);
 if (gcov_events_enabled)
  gcov_event(GCOV_ADD, info);
 mutex_unlock(&gcov_lock);
}
