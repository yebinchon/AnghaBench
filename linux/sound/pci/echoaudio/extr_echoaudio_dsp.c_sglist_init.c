
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct echoaudio {TYPE_2__* comm_page; } ;
struct TYPE_6__ {int addr; int area; } ;
struct audiopipe {size_t index; TYPE_3__ sgpage; scalar_t__ sglist_head; } ;
struct TYPE_5__ {TYPE_1__* sglist_addr; } ;
struct TYPE_4__ {int addr; } ;


 int PAGE_SIZE ;
 int cpu_to_le32 (int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static int sglist_init(struct echoaudio *chip, struct audiopipe *pipe)
{
 pipe->sglist_head = 0;
 memset(pipe->sgpage.area, 0, PAGE_SIZE);
 chip->comm_page->sglist_addr[pipe->index].addr =
  cpu_to_le32(pipe->sgpage.addr);
 return 0;
}
