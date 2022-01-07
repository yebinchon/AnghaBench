
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct buffer_head {int dummy; } ;
typedef int block_t ;
struct TYPE_3__ {struct buffer_head* bh; int * p; int key; } ;
typedef TYPE_1__ Indirect ;



__attribute__((used)) static inline void add_chain(Indirect *p, struct buffer_head *bh, block_t *v)
{
 p->key = *(p->p = v);
 p->bh = bh;
}
