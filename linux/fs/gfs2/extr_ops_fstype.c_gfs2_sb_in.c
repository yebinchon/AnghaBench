
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {int s_uuid; } ;
struct TYPE_9__ {void* no_formal_ino; void* no_addr; } ;
struct TYPE_7__ {void* no_formal_ino; void* no_addr; } ;
struct gfs2_sb_host {int * sb_locktable; int * sb_lockproto; TYPE_4__ sb_root_dir; TYPE_2__ sb_master_dir; void* sb_bsize_shift; void* sb_bsize; void* sb_multihost_format; void* sb_fs_format; void* sb_format; void* sb_type; void* sb_magic; } ;
struct gfs2_sbd {struct super_block* sd_vfs; struct gfs2_sb_host sd_sb; } ;
struct TYPE_10__ {int no_formal_ino; int no_addr; } ;
struct TYPE_8__ {int no_formal_ino; int no_addr; } ;
struct TYPE_6__ {int mh_format; int mh_type; int mh_magic; } ;
struct gfs2_sb {int sb_uuid; int sb_locktable; int sb_lockproto; TYPE_5__ sb_root_dir; TYPE_3__ sb_master_dir; int sb_bsize_shift; int sb_bsize; int sb_multihost_format; int sb_fs_format; TYPE_1__ sb_header; } ;


 int GFS2_LOCKNAME_LEN ;
 void* be32_to_cpu (int ) ;
 void* be64_to_cpu (int ) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void gfs2_sb_in(struct gfs2_sbd *sdp, const void *buf)
{
 struct gfs2_sb_host *sb = &sdp->sd_sb;
 struct super_block *s = sdp->sd_vfs;
 const struct gfs2_sb *str = buf;

 sb->sb_magic = be32_to_cpu(str->sb_header.mh_magic);
 sb->sb_type = be32_to_cpu(str->sb_header.mh_type);
 sb->sb_format = be32_to_cpu(str->sb_header.mh_format);
 sb->sb_fs_format = be32_to_cpu(str->sb_fs_format);
 sb->sb_multihost_format = be32_to_cpu(str->sb_multihost_format);
 sb->sb_bsize = be32_to_cpu(str->sb_bsize);
 sb->sb_bsize_shift = be32_to_cpu(str->sb_bsize_shift);
 sb->sb_master_dir.no_addr = be64_to_cpu(str->sb_master_dir.no_addr);
 sb->sb_master_dir.no_formal_ino = be64_to_cpu(str->sb_master_dir.no_formal_ino);
 sb->sb_root_dir.no_addr = be64_to_cpu(str->sb_root_dir.no_addr);
 sb->sb_root_dir.no_formal_ino = be64_to_cpu(str->sb_root_dir.no_formal_ino);

 memcpy(sb->sb_lockproto, str->sb_lockproto, GFS2_LOCKNAME_LEN);
 memcpy(sb->sb_locktable, str->sb_locktable, GFS2_LOCKNAME_LEN);
 memcpy(&s->s_uuid, str->sb_uuid, 16);
}
