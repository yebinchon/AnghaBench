
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int processed; } ;


 int cancel_crda_timeout () ;
 struct regulatory_request* get_last_request () ;
 int list_empty (int *) ;
 int reg_requests_list ;
 int reg_requests_lock ;
 int reg_work ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void reg_set_request_processed(void)
{
 bool need_more_processing = 0;
 struct regulatory_request *lr = get_last_request();

 lr->processed = 1;

 spin_lock(&reg_requests_lock);
 if (!list_empty(&reg_requests_list))
  need_more_processing = 1;
 spin_unlock(&reg_requests_lock);

 cancel_crda_timeout();

 if (need_more_processing)
  schedule_work(&reg_work);
}
