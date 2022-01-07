
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5640_priv {int bp_work; int jack_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;

__attribute__((used)) static void rt5640_cancel_work(void *data)
{
 struct rt5640_priv *rt5640 = data;

 cancel_work_sync(&rt5640->jack_work);
 cancel_delayed_work_sync(&rt5640->bp_work);
}
