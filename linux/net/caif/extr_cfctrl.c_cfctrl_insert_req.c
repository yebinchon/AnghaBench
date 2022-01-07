
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfctrl_request_info {int list; int sequence_no; } ;
struct cfctrl {int info_list_lock; int list; int req_seq_no; } ;


 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void cfctrl_insert_req(struct cfctrl *ctrl,
         struct cfctrl_request_info *req)
{
 spin_lock_bh(&ctrl->info_list_lock);
 atomic_inc(&ctrl->req_seq_no);
 req->sequence_no = atomic_read(&ctrl->req_seq_no);
 list_add_tail(&req->list, &ctrl->list);
 spin_unlock_bh(&ctrl->info_list_lock);
}
