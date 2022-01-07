
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* const_basic_block ;
struct TYPE_3__ {scalar_t__ loop_father; } ;


 int loop_depth (scalar_t__) ;

__attribute__((used)) static inline int bb_loop_depth(const_basic_block bb)
{
 return bb->loop_father ? loop_depth(bb->loop_father) : 0;
}
