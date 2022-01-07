
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {int head; int functions; } ;
typedef int (* llvm_gcov_callback ) () ;


 int GCOV_ADD ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int clang_gcov_list ;
 struct gcov_info* current_info ;
 int gcov_event (int ,struct gcov_info*) ;
 scalar_t__ gcov_events_enabled ;
 int gcov_lock ;
 struct gcov_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void llvm_gcov_init(llvm_gcov_callback writeout, llvm_gcov_callback flush)
{
 struct gcov_info *info = kzalloc(sizeof(*info), GFP_KERNEL);

 if (!info)
  return;

 INIT_LIST_HEAD(&info->head);
 INIT_LIST_HEAD(&info->functions);

 mutex_lock(&gcov_lock);

 list_add_tail(&info->head, &clang_gcov_list);
 current_info = info;
 writeout();
 current_info = ((void*)0);
 if (gcov_events_enabled)
  gcov_event(GCOV_ADD, info);

 mutex_unlock(&gcov_lock);
}
