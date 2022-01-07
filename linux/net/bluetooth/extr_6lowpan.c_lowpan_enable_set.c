
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct set_enable {int flag; int work; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int do_enable_set ;
 struct set_enable* kzalloc (int,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static int lowpan_enable_set(void *data, u64 val)
{
 struct set_enable *set_enable;

 set_enable = kzalloc(sizeof(*set_enable), GFP_KERNEL);
 if (!set_enable)
  return -ENOMEM;

 set_enable->flag = !!val;
 INIT_WORK(&set_enable->work, do_enable_set);

 schedule_work(&set_enable->work);

 return 0;
}
