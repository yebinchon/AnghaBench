
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct control_runtime {int line_phono_switch; TYPE_1__* chip; } ;
struct comm_runtime {int (* write8 ) (struct comm_runtime*,int,int,int ) ;} ;
struct TYPE_2__ {struct comm_runtime* comm; } ;


 int stub1 (struct comm_runtime*,int,int,int ) ;
 int stub2 (struct comm_runtime*,int,int,int ) ;

__attribute__((used)) static void usb6fire_control_line_phono_update(struct control_runtime *rt)
{
 struct comm_runtime *comm_rt = rt->chip->comm;
 if (comm_rt) {
  comm_rt->write8(comm_rt, 0x22, 0x02, rt->line_phono_switch);
  comm_rt->write8(comm_rt, 0x21, 0x02, rt->line_phono_switch);
 }
}
