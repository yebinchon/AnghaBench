
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct random_ready_callback {int dummy; } ;


 int enable_ptr_key_work ;
 int queue_work (int ,int *) ;
 int system_unbound_wq ;

__attribute__((used)) static void fill_random_ptr_key(struct random_ready_callback *unused)
{

 queue_work(system_unbound_wq, &enable_ptr_key_work);
}
