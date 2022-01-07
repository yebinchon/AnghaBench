
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_no_addr; } ;


 TYPE_1__* GFS2_I (struct inode*) ;

__attribute__((used)) static int iget_test(struct inode *inode, void *opaque)
{
 u64 no_addr = *(u64 *)opaque;

 return GFS2_I(inode)->i_no_addr == no_addr;
}
