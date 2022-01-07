
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int wireless_nlevent_flush () ;

__attribute__((used)) static void wireless_nlevent_process(struct work_struct *work)
{
 wireless_nlevent_flush();
}
