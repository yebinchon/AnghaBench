
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route4_filter {int rwork; } ;


 int route4_delete_filter_work ;
 int tcf_queue_work (int *,int ) ;

__attribute__((used)) static void route4_queue_work(struct route4_filter *f)
{
 tcf_queue_work(&f->rwork, route4_delete_filter_work);
}
