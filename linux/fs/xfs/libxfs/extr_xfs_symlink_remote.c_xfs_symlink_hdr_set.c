
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_ino_t ;
typedef int uint32_t ;
struct TYPE_2__ {int sb_meta_uuid; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_dsymlink_hdr {void* sl_blkno; void* sl_owner; int sl_uuid; void* sl_bytes; void* sl_offset; void* sl_magic; } ;
struct xfs_buf {int * b_ops; int b_bn; struct xfs_dsymlink_hdr* b_addr; } ;


 int XFS_SYMLINK_MAGIC ;
 void* cpu_to_be32 (int ) ;
 void* cpu_to_be64 (int ) ;
 int memset (struct xfs_dsymlink_hdr*,int ,int) ;
 int uuid_copy (int *,int *) ;
 int xfs_sb_version_hascrc (TYPE_1__*) ;
 int xfs_symlink_buf_ops ;

int
xfs_symlink_hdr_set(
 struct xfs_mount *mp,
 xfs_ino_t ino,
 uint32_t offset,
 uint32_t size,
 struct xfs_buf *bp)
{
 struct xfs_dsymlink_hdr *dsl = bp->b_addr;

 if (!xfs_sb_version_hascrc(&mp->m_sb))
  return 0;

 memset(dsl, 0, sizeof(struct xfs_dsymlink_hdr));
 dsl->sl_magic = cpu_to_be32(XFS_SYMLINK_MAGIC);
 dsl->sl_offset = cpu_to_be32(offset);
 dsl->sl_bytes = cpu_to_be32(size);
 uuid_copy(&dsl->sl_uuid, &mp->m_sb.sb_meta_uuid);
 dsl->sl_owner = cpu_to_be64(ino);
 dsl->sl_blkno = cpu_to_be64(bp->b_bn);
 bp->b_ops = &xfs_symlink_buf_ops;

 return sizeof(struct xfs_dsymlink_hdr);
}
