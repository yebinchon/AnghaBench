
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stutter ;
 int stutter_gap ;
 int stutter_task ;
 int torture_create_kthread (int ,int *,int ) ;
 int torture_stutter ;

int torture_stutter_init(const int s, const int sgap)
{
 stutter = s;
 stutter_gap = sgap;
 return torture_create_kthread(torture_stutter, ((void*)0), stutter_task);
}
