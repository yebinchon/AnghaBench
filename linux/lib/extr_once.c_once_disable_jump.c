
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct static_key_true {int dummy; } ;
struct once_work {int work; struct static_key_true* key; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct once_work* kmalloc (int,int ) ;
 int once_deferred ;
 int schedule_work (int *) ;

__attribute__((used)) static void once_disable_jump(struct static_key_true *key)
{
 struct once_work *w;

 w = kmalloc(sizeof(*w), GFP_ATOMIC);
 if (!w)
  return;

 INIT_WORK(&w->work, once_deferred);
 w->key = key;
 schedule_work(&w->work);
}
