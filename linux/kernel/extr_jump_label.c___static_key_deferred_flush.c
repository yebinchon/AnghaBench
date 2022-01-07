
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int dummy; } ;


 int STATIC_KEY_CHECK_USE (void*) ;
 int flush_delayed_work (struct delayed_work*) ;

void __static_key_deferred_flush(void *key, struct delayed_work *work)
{
 STATIC_KEY_CHECK_USE(key);
 flush_delayed_work(work);
}
