
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_ioend {scalar_t__ io_offset; scalar_t__ io_size; int io_inode; } ;
struct TYPE_3__ {scalar_t__ di_size; } ;
struct TYPE_4__ {TYPE_1__ i_d; } ;


 TYPE_2__* XFS_I (int ) ;

__attribute__((used)) static inline bool xfs_ioend_is_append(struct xfs_ioend *ioend)
{
 return ioend->io_offset + ioend->io_size >
  XFS_I(ioend->io_inode)->i_d.di_size;
}
