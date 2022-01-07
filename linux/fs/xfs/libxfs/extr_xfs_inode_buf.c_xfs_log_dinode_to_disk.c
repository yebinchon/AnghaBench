
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int t_nsec; int t_sec; } ;
struct TYPE_14__ {int t_nsec; int t_sec; } ;
struct TYPE_12__ {int t_nsec; int t_sec; } ;
struct TYPE_10__ {int t_nsec; int t_sec; } ;
struct xfs_log_dinode {int di_version; int di_flushiter; int di_uuid; int di_pad2; int di_lsn; int di_ino; int di_cowextsize; int di_flags2; TYPE_8__ di_crtime; int di_changecount; int di_gen; int di_flags; int di_dmstate; int di_dmevmask; int di_aformat; int di_forkoff; int di_anextents; int di_nextents; int di_extsize; int di_nblocks; int di_size; TYPE_6__ di_ctime; TYPE_4__ di_mtime; TYPE_2__ di_atime; int di_pad; int di_projid_hi; int di_projid_lo; int di_nlink; int di_gid; int di_uid; int di_format; int di_mode; int di_magic; } ;
struct TYPE_15__ {void* t_nsec; void* t_sec; } ;
struct TYPE_13__ {void* t_nsec; void* t_sec; } ;
struct TYPE_11__ {void* t_nsec; void* t_sec; } ;
struct TYPE_9__ {void* t_nsec; void* t_sec; } ;
struct xfs_dinode {int di_version; void* di_flushiter; int di_uuid; int di_pad2; void* di_lsn; void* di_ino; void* di_cowextsize; void* di_flags2; TYPE_7__ di_crtime; void* di_changecount; void* di_gen; void* di_flags; void* di_dmstate; void* di_dmevmask; int di_aformat; int di_forkoff; void* di_anextents; void* di_nextents; void* di_extsize; void* di_nblocks; void* di_size; TYPE_5__ di_ctime; TYPE_3__ di_mtime; TYPE_1__ di_atime; int di_pad; void* di_projid_hi; void* di_projid_lo; void* di_nlink; void* di_gid; void* di_uid; scalar_t__ di_onlink; int di_format; void* di_mode; void* di_magic; } ;


 void* cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 void* cpu_to_be64 (int ) ;
 int memcpy (int ,int ,int) ;
 int uuid_copy (int *,int *) ;

void
xfs_log_dinode_to_disk(
 struct xfs_log_dinode *from,
 struct xfs_dinode *to)
{
 to->di_magic = cpu_to_be16(from->di_magic);
 to->di_mode = cpu_to_be16(from->di_mode);
 to->di_version = from->di_version;
 to->di_format = from->di_format;
 to->di_onlink = 0;
 to->di_uid = cpu_to_be32(from->di_uid);
 to->di_gid = cpu_to_be32(from->di_gid);
 to->di_nlink = cpu_to_be32(from->di_nlink);
 to->di_projid_lo = cpu_to_be16(from->di_projid_lo);
 to->di_projid_hi = cpu_to_be16(from->di_projid_hi);
 memcpy(to->di_pad, from->di_pad, sizeof(to->di_pad));

 to->di_atime.t_sec = cpu_to_be32(from->di_atime.t_sec);
 to->di_atime.t_nsec = cpu_to_be32(from->di_atime.t_nsec);
 to->di_mtime.t_sec = cpu_to_be32(from->di_mtime.t_sec);
 to->di_mtime.t_nsec = cpu_to_be32(from->di_mtime.t_nsec);
 to->di_ctime.t_sec = cpu_to_be32(from->di_ctime.t_sec);
 to->di_ctime.t_nsec = cpu_to_be32(from->di_ctime.t_nsec);

 to->di_size = cpu_to_be64(from->di_size);
 to->di_nblocks = cpu_to_be64(from->di_nblocks);
 to->di_extsize = cpu_to_be32(from->di_extsize);
 to->di_nextents = cpu_to_be32(from->di_nextents);
 to->di_anextents = cpu_to_be16(from->di_anextents);
 to->di_forkoff = from->di_forkoff;
 to->di_aformat = from->di_aformat;
 to->di_dmevmask = cpu_to_be32(from->di_dmevmask);
 to->di_dmstate = cpu_to_be16(from->di_dmstate);
 to->di_flags = cpu_to_be16(from->di_flags);
 to->di_gen = cpu_to_be32(from->di_gen);

 if (from->di_version == 3) {
  to->di_changecount = cpu_to_be64(from->di_changecount);
  to->di_crtime.t_sec = cpu_to_be32(from->di_crtime.t_sec);
  to->di_crtime.t_nsec = cpu_to_be32(from->di_crtime.t_nsec);
  to->di_flags2 = cpu_to_be64(from->di_flags2);
  to->di_cowextsize = cpu_to_be32(from->di_cowextsize);
  to->di_ino = cpu_to_be64(from->di_ino);
  to->di_lsn = cpu_to_be64(from->di_lsn);
  memcpy(to->di_pad2, from->di_pad2, sizeof(to->di_pad2));
  uuid_copy(&to->di_uuid, &from->di_uuid);
  to->di_flushiter = 0;
 } else {
  to->di_flushiter = cpu_to_be16(from->di_flushiter);
 }
}
