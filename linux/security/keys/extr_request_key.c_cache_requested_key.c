
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int cached_requested_key; } ;
struct key {int dummy; } ;


 int TIF_NOTIFY_RESUME ;
 struct task_struct* current ;
 int key_get (struct key*) ;
 int key_put (int ) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;

__attribute__((used)) static void cache_requested_key(struct key *key)
{







}
