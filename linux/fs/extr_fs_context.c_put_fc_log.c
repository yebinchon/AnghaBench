
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {struct fc_log* log; } ;
struct fc_log {int need_free; struct fc_log** buffer; int usage; } ;


 int kfree (struct fc_log*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void put_fc_log(struct fs_context *fc)
{
 struct fc_log *log = fc->log;
 int i;

 if (log) {
  if (refcount_dec_and_test(&log->usage)) {
   fc->log = ((void*)0);
   for (i = 0; i <= 7; i++)
    if (log->need_free & (1 << i))
     kfree(log->buffer[i]);
   kfree(log);
  }
 }
}
