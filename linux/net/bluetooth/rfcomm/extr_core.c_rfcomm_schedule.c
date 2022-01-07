
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rfcomm_wq ;
 int wake_up_all (int *) ;

__attribute__((used)) static void rfcomm_schedule(void)
{
 wake_up_all(&rfcomm_wq);
}
