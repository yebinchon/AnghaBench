
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nrealwriters_stress; int nrealreaders_stress; int lrsa; TYPE_1__* cur_ops; int lwsa; } ;
struct TYPE_3__ {scalar_t__ readlock; } ;


 int GFP_KERNEL ;
 int __torture_print_stats (char*,int ,int) ;
 TYPE_2__ cxt ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int pr_alert (char*,char*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static void lock_torture_stats_print(void)
{
 int size = cxt.nrealwriters_stress * 200 + 8192;
 char *buf;

 if (cxt.cur_ops->readlock)
  size += cxt.nrealreaders_stress * 200 + 8192;

 buf = kmalloc(size, GFP_KERNEL);
 if (!buf) {
  pr_err("lock_torture_stats_print: Out of memory, need: %d",
         size);
  return;
 }

 __torture_print_stats(buf, cxt.lwsa, 1);
 pr_alert("%s", buf);
 kfree(buf);

 if (cxt.cur_ops->readlock) {
  buf = kmalloc(size, GFP_KERNEL);
  if (!buf) {
   pr_err("lock_torture_stats_print: Out of memory, need: %d",
          size);
   return;
  }

  __torture_print_stats(buf, cxt.lrsa, 0);
  pr_alert("%s", buf);
  kfree(buf);
 }
}
