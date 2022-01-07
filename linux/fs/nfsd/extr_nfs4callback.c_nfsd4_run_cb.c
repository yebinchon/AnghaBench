
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_callback {int cb_work; } ;


 int callback_wq ;
 int queue_work (int ,int *) ;

void nfsd4_run_cb(struct nfsd4_callback *cb)
{
 queue_work(callback_wq, &cb->cb_work);
}
