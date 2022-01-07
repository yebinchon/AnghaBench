
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ magic; } ;
struct TYPE_5__ {TYPE_4__ info; } ;
struct xfs_da_intnode {TYPE_1__ hdr; } ;
struct TYPE_6__ {int magic; int back; int forw; } ;
struct TYPE_7__ {TYPE_2__ hdr; } ;
struct xfs_da3_node_hdr {int __level; int __count; TYPE_3__ info; } ;
struct xfs_da3_icnode_hdr {void* level; void* count; void* magic; void* back; void* forw; } ;


 int ASSERT (int) ;
 int XFS_DA3_NODE_MAGIC ;
 void* be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 scalar_t__ cpu_to_be16 (int ) ;

__attribute__((used)) static void
xfs_da3_node_hdr_from_disk(
 struct xfs_da3_icnode_hdr *to,
 struct xfs_da_intnode *from)
{
 struct xfs_da3_node_hdr *hdr3 = (struct xfs_da3_node_hdr *)from;

 ASSERT(from->hdr.info.magic == cpu_to_be16(XFS_DA3_NODE_MAGIC));
 to->forw = be32_to_cpu(hdr3->info.hdr.forw);
 to->back = be32_to_cpu(hdr3->info.hdr.back);
 to->magic = be16_to_cpu(hdr3->info.hdr.magic);
 to->count = be16_to_cpu(hdr3->__count);
 to->level = be16_to_cpu(hdr3->__level);
}
