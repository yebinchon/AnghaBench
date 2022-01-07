
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* node; scalar_t__ node_bit; } ;
struct memory_bitmap {TYPE_2__ cur; } ;
struct TYPE_3__ {int data; } ;


 int clear_bit (int,int ) ;
 int max (scalar_t__,int ) ;

__attribute__((used)) static void memory_bm_clear_current(struct memory_bitmap *bm)
{
 int bit;

 bit = max(bm->cur.node_bit - 1, 0);
 clear_bit(bit, bm->cur.node->data);
}
