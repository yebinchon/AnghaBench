
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int no_warn; } ;
struct report {TYPE_1__ tool; } ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void stats_setup(struct report *rep)
{
 memset(&rep->tool, 0, sizeof(rep->tool));
 rep->tool.no_warn = 1;
}
