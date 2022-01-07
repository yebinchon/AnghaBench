
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int klp_sync ;
 int schedule_on_each_cpu (int ) ;

__attribute__((used)) static void klp_synchronize_transition(void)
{
 schedule_on_each_cpu(klp_sync);
}
