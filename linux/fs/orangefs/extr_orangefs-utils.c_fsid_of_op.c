
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_76__ TYPE_9__ ;
typedef struct TYPE_75__ TYPE_8__ ;
typedef struct TYPE_74__ TYPE_7__ ;
typedef struct TYPE_73__ TYPE_6__ ;
typedef struct TYPE_72__ TYPE_5__ ;
typedef struct TYPE_71__ TYPE_4__ ;
typedef struct TYPE_70__ TYPE_3__ ;
typedef struct TYPE_69__ TYPE_38__ ;
typedef struct TYPE_68__ TYPE_37__ ;
typedef struct TYPE_67__ TYPE_36__ ;
typedef struct TYPE_66__ TYPE_35__ ;
typedef struct TYPE_65__ TYPE_34__ ;
typedef struct TYPE_64__ TYPE_33__ ;
typedef struct TYPE_63__ TYPE_32__ ;
typedef struct TYPE_62__ TYPE_31__ ;
typedef struct TYPE_61__ TYPE_30__ ;
typedef struct TYPE_60__ TYPE_2__ ;
typedef struct TYPE_59__ TYPE_29__ ;
typedef struct TYPE_58__ TYPE_28__ ;
typedef struct TYPE_57__ TYPE_27__ ;
typedef struct TYPE_56__ TYPE_26__ ;
typedef struct TYPE_55__ TYPE_25__ ;
typedef struct TYPE_54__ TYPE_24__ ;
typedef struct TYPE_53__ TYPE_23__ ;
typedef struct TYPE_52__ TYPE_22__ ;
typedef struct TYPE_51__ TYPE_21__ ;
typedef struct TYPE_50__ TYPE_20__ ;
typedef struct TYPE_49__ TYPE_1__ ;
typedef struct TYPE_48__ TYPE_19__ ;
typedef struct TYPE_47__ TYPE_18__ ;
typedef struct TYPE_46__ TYPE_17__ ;
typedef struct TYPE_45__ TYPE_16__ ;
typedef struct TYPE_44__ TYPE_15__ ;
typedef struct TYPE_43__ TYPE_14__ ;
typedef struct TYPE_42__ TYPE_13__ ;
typedef struct TYPE_41__ TYPE_12__ ;
typedef struct TYPE_40__ TYPE_11__ ;
typedef struct TYPE_39__ TYPE_10__ ;


struct TYPE_66__ {int fs_id; } ;
struct TYPE_67__ {TYPE_35__ refn; } ;
struct TYPE_64__ {int fs_id; } ;
struct TYPE_65__ {TYPE_33__ refn; } ;
struct TYPE_62__ {int fs_id; } ;
struct TYPE_63__ {TYPE_31__ refn; } ;
struct TYPE_59__ {int fs_id; } ;
struct TYPE_61__ {TYPE_29__ refn; } ;
struct TYPE_57__ {int fs_id; } ;
struct TYPE_58__ {TYPE_27__ refn; } ;
struct TYPE_56__ {int fs_id; } ;
struct TYPE_54__ {int fs_id; } ;
struct TYPE_55__ {TYPE_24__ refn; } ;
struct TYPE_52__ {int fs_id; } ;
struct TYPE_53__ {TYPE_22__ refn; } ;
struct TYPE_51__ {int fs_id; } ;
struct TYPE_48__ {int fs_id; } ;
struct TYPE_50__ {TYPE_19__ old_parent_refn; } ;
struct TYPE_46__ {int fs_id; } ;
struct TYPE_47__ {TYPE_17__ parent_refn; } ;
struct TYPE_44__ {int fs_id; } ;
struct TYPE_45__ {TYPE_15__ refn; } ;
struct TYPE_42__ {int fs_id; } ;
struct TYPE_43__ {TYPE_13__ refn; } ;
struct TYPE_40__ {int fs_id; } ;
struct TYPE_41__ {TYPE_11__ parent_refn; } ;
struct TYPE_76__ {int fs_id; } ;
struct TYPE_39__ {TYPE_9__ parent_refn; } ;
struct TYPE_74__ {int fs_id; } ;
struct TYPE_75__ {TYPE_7__ refn; } ;
struct TYPE_72__ {int fs_id; } ;
struct TYPE_73__ {TYPE_5__ parent_refn; } ;
struct TYPE_70__ {int fs_id; } ;
struct TYPE_71__ {TYPE_3__ parent_refn; } ;
struct TYPE_49__ {int fs_id; } ;
struct TYPE_60__ {TYPE_1__ refn; } ;
struct TYPE_68__ {TYPE_36__ fsync; TYPE_34__ removexattr; TYPE_32__ listxattr; TYPE_30__ setxattr; TYPE_28__ getxattr; TYPE_26__ fs_umount; TYPE_25__ ra_cache_flush; TYPE_23__ truncate; TYPE_21__ statfs; TYPE_20__ rename; TYPE_18__ sym; TYPE_16__ setattr; TYPE_14__ readdir; TYPE_12__ mkdir; TYPE_10__ remove; TYPE_8__ getattr; TYPE_6__ create; TYPE_4__ lookup; TYPE_2__ io; } ;
struct TYPE_69__ {int type; TYPE_37__ req; } ;
struct orangefs_kernel_op_s {TYPE_38__ upcall; } ;
typedef int __s32 ;


 int ORANGEFS_FS_ID_NULL ;
__s32 fsid_of_op(struct orangefs_kernel_op_s *op)
{
 __s32 fsid = ORANGEFS_FS_ID_NULL;

 if (op) {
  switch (op->upcall.type) {
  case 145:
   fsid = op->upcall.req.io.refn.fs_id;
   break;
  case 139:
   fsid = op->upcall.req.lookup.parent_refn.fs_id;
   break;
  case 146:
   fsid = op->upcall.req.create.parent_refn.fs_id;
   break;
  case 142:
   fsid = op->upcall.req.getattr.refn.fs_id;
   break;
  case 135:
   fsid = op->upcall.req.remove.parent_refn.fs_id;
   break;
  case 138:
   fsid = op->upcall.req.mkdir.parent_refn.fs_id;
   break;
  case 136:
   fsid = op->upcall.req.readdir.refn.fs_id;
   break;
  case 132:
   fsid = op->upcall.req.setattr.refn.fs_id;
   break;
  case 129:
   fsid = op->upcall.req.sym.parent_refn.fs_id;
   break;
  case 133:
   fsid = op->upcall.req.rename.old_parent_refn.fs_id;
   break;
  case 130:
   fsid = op->upcall.req.statfs.fs_id;
   break;
  case 128:
   fsid = op->upcall.req.truncate.refn.fs_id;
   break;
  case 137:
   fsid = op->upcall.req.ra_cache_flush.refn.fs_id;
   break;
  case 143:
   fsid = op->upcall.req.fs_umount.fs_id;
   break;
  case 141:
   fsid = op->upcall.req.getxattr.refn.fs_id;
   break;
  case 131:
   fsid = op->upcall.req.setxattr.refn.fs_id;
   break;
  case 140:
   fsid = op->upcall.req.listxattr.refn.fs_id;
   break;
  case 134:
   fsid = op->upcall.req.removexattr.refn.fs_id;
   break;
  case 144:
   fsid = op->upcall.req.fsync.refn.fs_id;
   break;
  default:
   break;
  }
 }
 return fsid;
}
