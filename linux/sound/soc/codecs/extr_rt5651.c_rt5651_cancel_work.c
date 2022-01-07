
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5651_priv {int bp_work; int jack_detect_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;

__attribute__((used)) static void rt5651_cancel_work(void *data)
{
 struct rt5651_priv *rt5651 = data;

 cancel_work_sync(&rt5651->jack_detect_work);
 cancel_delayed_work_sync(&rt5651->bp_work);
}
