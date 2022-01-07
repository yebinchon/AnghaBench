
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; int back; int forw; } ;
struct TYPE_4__ {scalar_t__ __count; scalar_t__ __level; TYPE_1__ info; } ;
struct xfs_da_intnode {TYPE_2__ hdr; } ;
struct xfs_da3_icnode_hdr {void* level; void* count; void* magic; void* back; void* forw; } ;


 int ASSERT (int) ;
 int XFS_DA_NODE_MAGIC ;
 void* be16_to_cpu (scalar_t__) ;
 void* be32_to_cpu (int ) ;
 scalar_t__ cpu_to_be16 (int ) ;

__attribute__((used)) static void
xfs_da2_node_hdr_from_disk(
 struct xfs_da3_icnode_hdr *to,
 struct xfs_da_intnode *from)
{
 ASSERT(from->hdr.info.magic == cpu_to_be16(XFS_DA_NODE_MAGIC));
 to->forw = be32_to_cpu(from->hdr.info.forw);
 to->back = be32_to_cpu(from->hdr.info.back);
 to->magic = be16_to_cpu(from->hdr.info.magic);
 to->count = be16_to_cpu(from->hdr.__count);
 to->level = be16_to_cpu(from->hdr.__level);
}
