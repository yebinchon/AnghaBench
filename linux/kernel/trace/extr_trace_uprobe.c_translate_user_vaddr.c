
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uprobe_dispatch_data {unsigned long bp_addr; TYPE_2__* tu; } ;
struct TYPE_6__ {TYPE_1__* utask; } ;
struct TYPE_5__ {unsigned long offset; } ;
struct TYPE_4__ {scalar_t__ vaddr; } ;


 TYPE_3__* current ;

__attribute__((used)) static unsigned long translate_user_vaddr(unsigned long file_offset)
{
 unsigned long base_addr;
 struct uprobe_dispatch_data *udd;

 udd = (void *) current->utask->vaddr;

 base_addr = udd->bp_addr - udd->tu->offset;
 return base_addr + file_offset;
}
