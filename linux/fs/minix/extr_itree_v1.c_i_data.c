
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef int block_t ;
struct TYPE_3__ {scalar_t__ i1_data; } ;
struct TYPE_4__ {TYPE_1__ u; } ;


 TYPE_2__* minix_i (struct inode*) ;

__attribute__((used)) static inline block_t *i_data(struct inode *inode)
{
 return (block_t *)minix_i(inode)->u.i1_data;
}
