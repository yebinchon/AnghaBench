
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_scs1x {int error; int transaction_running; int work; scalar_t__ transaction_bytes; } ;
struct fw_card {int dummy; } ;


 int RCODE_COMPLETE ;
 int rcode_is_permanent_error (int) ;
 int schedule_work (int *) ;

__attribute__((used)) static void scs_write_callback(struct fw_card *card, int rcode,
          void *data, size_t length, void *callback_data)
{
 struct fw_scs1x *scs = callback_data;

 if (!rcode_is_permanent_error(rcode)) {

  if (rcode == RCODE_COMPLETE)
   scs->transaction_bytes = 0;
 } else {
  scs->error = 1;
 }

 scs->transaction_running = 0;
 schedule_work(&scs->work);
}
