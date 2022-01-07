
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int data; } ;
struct amixer_rsc_ctrl_blk {TYPE_1__ dirty; } ;



__attribute__((used)) static unsigned int amixer_get_dirty(void *blk)
{
 return ((struct amixer_rsc_ctrl_blk *)blk)->dirty.data;
}
