
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* magic; void* back; void* forw; } ;
struct TYPE_4__ {void* __level; void* __count; TYPE_1__ info; } ;
struct xfs_da_intnode {TYPE_2__ hdr; } ;
struct xfs_da3_icnode_hdr {scalar_t__ magic; scalar_t__ count; scalar_t__ level; int back; int forw; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_DA_NODE_MAGIC ;
 void* cpu_to_be16 (scalar_t__) ;
 void* cpu_to_be32 (int ) ;

__attribute__((used)) static void
xfs_da2_node_hdr_to_disk(
 struct xfs_da_intnode *to,
 struct xfs_da3_icnode_hdr *from)
{
 ASSERT(from->magic == XFS_DA_NODE_MAGIC);
 to->hdr.info.forw = cpu_to_be32(from->forw);
 to->hdr.info.back = cpu_to_be32(from->back);
 to->hdr.info.magic = cpu_to_be16(from->magic);
 to->hdr.__count = cpu_to_be16(from->count);
 to->hdr.__level = cpu_to_be16(from->level);
}
