
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rtype; int size; int* data; } ;
struct TYPE_4__ {TYPE_1__ output; } ;
struct uhid_event {TYPE_2__ u; } ;


 scalar_t__ UHID_OUTPUT_REPORT ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static void handle_output(struct uhid_event *ev)
{

 if (ev->u.output.rtype != UHID_OUTPUT_REPORT)
  return;

 if (ev->u.output.size != 2)
  return;

 if (ev->u.output.data[0] != 0x2)
  return;


 fprintf(stderr, "LED output report received with flags %x\n",
  ev->u.output.data[1]);
}
