; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_fattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_fattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.svc_fh = type { i32, %struct.TYPE_14__, %struct.nfs4_ace* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.nfs4_ace = type { i32, i32, i32 }
%struct.svc_export = type { i32, i32, %struct.TYPE_20__, i32, i64, %struct.TYPE_13__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.dentry*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.dentry = type { i32 }
%struct.svc_rqst = type { %struct.nfsd4_compoundres* }
%struct.nfsd4_compoundres = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.kstat = type { i32, i32, i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, i64, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.kstatfs = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.nfs4_acl = type { i32, %struct.TYPE_14__, %struct.nfs4_ace* }
%struct.path = type { %struct.dentry*, %struct.TYPE_19__* }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@NFSD_WRITEONLY_ATTRS_WORD1 = common dso_local global i32 0, align 4
@STATX_BASIC_STATS = common dso_local global i32 0, align 4
@AT_STATX_SYNC_AS_STAT = common dso_local global i32 0, align 4
@FATTR4_WORD0_FILES_AVAIL = common dso_local global i32 0, align 4
@FATTR4_WORD0_FILES_FREE = common dso_local global i32 0, align 4
@FATTR4_WORD0_FILES_TOTAL = common dso_local global i32 0, align 4
@FATTR4_WORD0_MAXNAME = common dso_local global i32 0, align 4
@FATTR4_WORD1_SPACE_AVAIL = common dso_local global i32 0, align 4
@FATTR4_WORD1_SPACE_FREE = common dso_local global i32 0, align 4
@FATTR4_WORD1_SPACE_TOTAL = common dso_local global i32 0, align 4
@FATTR4_WORD0_FILEHANDLE = common dso_local global i32 0, align 4
@FATTR4_WORD0_FSID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nfserr_jukebox = common dso_local global i64 0, align 8
@NFS4_FHSIZE = common dso_local global i32 0, align 4
@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nfserr_attrnotsupp = common dso_local global i64 0, align 8
@FATTR4_WORD0_SUPPORTED_ATTRS = common dso_local global i32 0, align 4
@nfsd_suppattrs = common dso_local global i32* null, align 8
@FATTR4_WORD2_SECURITY_LABEL = common dso_local global i32 0, align 4
@FATTR4_WORD0_TYPE = common dso_local global i32 0, align 4
@NF4BAD = common dso_local global i32 0, align 4
@nfserr_serverfault = common dso_local global i64 0, align 8
@FATTR4_WORD0_FH_EXPIRE_TYPE = common dso_local global i32 0, align 4
@NFSEXP_NOSUBTREECHECK = common dso_local global i32 0, align 4
@NFS4_FH_PERSISTENT = common dso_local global i32 0, align 4
@NFS4_FH_VOL_RENAME = common dso_local global i32 0, align 4
@FATTR4_WORD0_CHANGE = common dso_local global i32 0, align 4
@FATTR4_WORD0_SIZE = common dso_local global i32 0, align 4
@FATTR4_WORD0_LINK_SUPPORT = common dso_local global i32 0, align 4
@FATTR4_WORD0_SYMLINK_SUPPORT = common dso_local global i32 0, align 4
@FATTR4_WORD0_NAMED_ATTR = common dso_local global i32 0, align 4
@NFS4_REFERRAL_FSID_MAJOR = common dso_local global i32 0, align 4
@NFS4_REFERRAL_FSID_MINOR = common dso_local global i32 0, align 4
@EX_UUID_LEN = common dso_local global i32 0, align 4
@FATTR4_WORD0_UNIQUE_HANDLES = common dso_local global i32 0, align 4
@FATTR4_WORD0_LEASE_TIME = common dso_local global i32 0, align 4
@FATTR4_WORD0_RDATTR_ERROR = common dso_local global i32 0, align 4
@NFS4_ACE_MASK_ALL = common dso_local global i32 0, align 4
@FATTR4_WORD0_ACLSUPPORT = common dso_local global i32 0, align 4
@ACL4_SUPPORT_ALLOW_ACL = common dso_local global i32 0, align 4
@ACL4_SUPPORT_DENY_ACL = common dso_local global i32 0, align 4
@FATTR4_WORD0_CANSETTIME = common dso_local global i32 0, align 4
@FATTR4_WORD0_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@FATTR4_WORD0_CASE_PRESERVING = common dso_local global i32 0, align 4
@FATTR4_WORD0_CHOWN_RESTRICTED = common dso_local global i32 0, align 4
@FATTR4_WORD0_FILEID = common dso_local global i32 0, align 4
@FATTR4_WORD0_FS_LOCATIONS = common dso_local global i32 0, align 4
@FATTR4_WORD0_HOMOGENEOUS = common dso_local global i32 0, align 4
@FATTR4_WORD0_MAXFILESIZE = common dso_local global i32 0, align 4
@FATTR4_WORD0_MAXLINK = common dso_local global i32 0, align 4
@FATTR4_WORD0_MAXREAD = common dso_local global i32 0, align 4
@FATTR4_WORD0_MAXWRITE = common dso_local global i32 0, align 4
@FATTR4_WORD1_MODE = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@FATTR4_WORD1_NO_TRUNC = common dso_local global i32 0, align 4
@FATTR4_WORD1_NUMLINKS = common dso_local global i32 0, align 4
@FATTR4_WORD1_OWNER = common dso_local global i32 0, align 4
@FATTR4_WORD1_OWNER_GROUP = common dso_local global i32 0, align 4
@FATTR4_WORD1_RAWDEV = common dso_local global i32 0, align 4
@FATTR4_WORD1_SPACE_USED = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_ACCESS = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_DELTA = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_METADATA = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_MODIFY = common dso_local global i32 0, align 4
@FATTR4_WORD1_MOUNTED_ON_FILEID = common dso_local global i32 0, align 4
@FATTR4_WORD2_SUPPATTR_EXCLCREAT = common dso_local global i32 0, align 4
@NFSD_SUPPATTR_EXCLCREAT_WORD0 = common dso_local global i32 0, align 4
@NFSD_SUPPATTR_EXCLCREAT_WORD1 = common dso_local global i32 0, align 4
@NFSD_SUPPATTR_EXCLCREAT_WORD2 = common dso_local global i32 0, align 4
@FATTR4_WORD2_CHANGE_ATTR_TYPE = common dso_local global i32 0, align 4
@NFS4_CHANGE_TYPE_IS_MONOTONIC_INCR = common dso_local global i32 0, align 4
@NFS4_CHANGE_TYPE_IS_TIME_METADATA = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i64 0, align 8
@nfserr_resource = common dso_local global i64 0, align 8
@FATTR4_WORD1_FS_LAYOUT_TYPES = common dso_local global i32 0, align 4
@FATTR4_WORD2_LAYOUT_BLKSIZE = common dso_local global i32 0, align 4
@FATTR4_WORD2_LAYOUT_TYPES = common dso_local global i32 0, align 4
@NFSEXP_SECURITY_LABEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xdr_stream*, %struct.svc_fh*, %struct.svc_export*, %struct.dentry*, i32*, %struct.svc_rqst*, i32)* @nfsd4_encode_fattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_fattr(%struct.xdr_stream* %0, %struct.svc_fh* %1, %struct.svc_export* %2, %struct.dentry* %3, i32* %4, %struct.svc_rqst* %5, i32 %6) #0 {
  %8 = alloca %struct.xdr_stream*, align 8
  %9 = alloca %struct.svc_fh*, align 8
  %10 = alloca %struct.svc_export*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.svc_rqst*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.kstat, align 8
  %19 = alloca %struct.svc_fh*, align 8
  %20 = alloca %struct.kstatfs, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.nfs4_acl*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.nfsd4_compoundres*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.path, align 8
  %35 = alloca %struct.nfsd_net*, align 8
  %36 = alloca [3 x i32], align 4
  %37 = alloca %struct.nfs4_ace*, align 8
  %38 = alloca %struct.kstat, align 8
  %39 = alloca i32, align 4
  %40 = alloca [3 x i32], align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %8, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %9, align 8
  store %struct.svc_export* %2, %struct.svc_export** %10, align 8
  store %struct.dentry* %3, %struct.dentry** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.svc_rqst* %5, %struct.svc_rqst** %13, align 8
  store i32 %6, i32* %14, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %15, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %17, align 4
  store %struct.svc_fh* null, %struct.svc_fh** %19, align 8
  %50 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %51 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %22, align 4
  store i32 0, i32* %27, align 4
  store %struct.nfs4_acl* null, %struct.nfs4_acl** %30, align 8
  store i32 0, i32* %31, align 4
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %13, align 8
  %56 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %55, i32 0, i32 0
  %57 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %56, align 8
  store %struct.nfsd4_compoundres* %57, %struct.nfsd4_compoundres** %32, align 8
  %58 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %32, align 8
  %59 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %33, align 4
  %62 = getelementptr inbounds %struct.path, %struct.path* %34, i32 0, i32 0
  %63 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %63, %struct.dentry** %62, align 8
  %64 = getelementptr inbounds %struct.path, %struct.path* %34, i32 0, i32 1
  %65 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %66 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  store %struct.TYPE_19__* %68, %struct.TYPE_19__** %64, align 8
  %69 = load %struct.svc_rqst*, %struct.svc_rqst** %13, align 8
  %70 = call i32 @SVC_NET(%struct.svc_rqst* %69)
  %71 = load i32, i32* @nfsd_net_id, align 4
  %72 = call %struct.nfsd_net* @net_generic(i32 %70, i32 %71)
  store %struct.nfsd_net* %72, %struct.nfsd_net** %35, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* @NFSD_WRITEONLY_ATTRS_WORD1, align 4
  %75 = and i32 %73, %74
  %76 = call i32 @BUG_ON(i32 %75)
  %77 = load i32, i32* %33, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @nfsd_attrs_supported(i32 %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @BUG_ON(i32 %82)
  %84 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %85 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %7
  %90 = call i64 @fattr_handle_absent_fs(i32* %15, i32* %16, i32* %17, i32* %27)
  store i64 %90, i64* %28, align 8
  %91 = load i64, i64* %28, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %1364

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %7
  %96 = load i32, i32* @STATX_BASIC_STATS, align 4
  %97 = load i32, i32* @AT_STATX_SYNC_AS_STAT, align 4
  %98 = call i32 @vfs_getattr(%struct.path* %34, %struct.kstat* %18, i32 %96, i32 %97)
  store i32 %98, i32* %29, align 4
  %99 = load i32, i32* %29, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %1384

102:                                              ; preds = %95
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @FATTR4_WORD0_FILES_AVAIL, align 4
  %105 = load i32, i32* @FATTR4_WORD0_FILES_FREE, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @FATTR4_WORD0_FILES_TOTAL, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @FATTR4_WORD0_MAXNAME, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %103, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* @FATTR4_WORD1_SPACE_AVAIL, align 4
  %116 = load i32, i32* @FATTR4_WORD1_SPACE_FREE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @FATTR4_WORD1_SPACE_TOTAL, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %114, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %113, %102
  %123 = call i32 @vfs_statfs(%struct.path* %34, %struct.kstatfs* %20)
  store i32 %123, i32* %29, align 4
  %124 = load i32, i32* %29, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %1384

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %113
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @FATTR4_WORD0_FILEHANDLE, align 4
  %131 = load i32, i32* @FATTR4_WORD0_FSID, align 4
  %132 = or i32 %130, %131
  %133 = and i32 %129, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %128
  %136 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %137 = icmp ne %struct.svc_fh* %136, null
  br i1 %137, label %158, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call %struct.svc_fh* @kmalloc(i32 24, i32 %139)
  store %struct.svc_fh* %140, %struct.svc_fh** %19, align 8
  %141 = load i64, i64* @nfserr_jukebox, align 8
  store i64 %141, i64* %28, align 8
  %142 = load %struct.svc_fh*, %struct.svc_fh** %19, align 8
  %143 = icmp ne %struct.svc_fh* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %138
  br label %1364

145:                                              ; preds = %138
  %146 = load %struct.svc_fh*, %struct.svc_fh** %19, align 8
  %147 = load i32, i32* @NFS4_FHSIZE, align 4
  %148 = call i32 @fh_init(%struct.svc_fh* %146, i32 %147)
  %149 = load %struct.svc_fh*, %struct.svc_fh** %19, align 8
  %150 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %151 = load %struct.dentry*, %struct.dentry** %11, align 8
  %152 = call i64 @fh_compose(%struct.svc_fh* %149, %struct.svc_export* %150, %struct.dentry* %151, i32* null)
  store i64 %152, i64* %28, align 8
  %153 = load i64, i64* %28, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %1364

156:                                              ; preds = %145
  %157 = load %struct.svc_fh*, %struct.svc_fh** %19, align 8
  store %struct.svc_fh* %157, %struct.svc_fh** %9, align 8
  br label %158

158:                                              ; preds = %156, %135, %128
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %191

163:                                              ; preds = %158
  %164 = load %struct.svc_rqst*, %struct.svc_rqst** %13, align 8
  %165 = load %struct.dentry*, %struct.dentry** %11, align 8
  %166 = bitcast %struct.nfs4_acl** %30 to %struct.svc_fh**
  %167 = call i32 @nfsd4_get_nfs4_acl(%struct.svc_rqst* %164, %struct.dentry* %165, %struct.svc_fh** %166)
  store i32 %167, i32* %29, align 4
  %168 = load i32, i32* %29, align 4
  %169 = load i32, i32* @EOPNOTSUPP, align 4
  %170 = sub nsw i32 0, %169
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %163
  %173 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %15, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %15, align 4
  br label %190

177:                                              ; preds = %163
  %178 = load i32, i32* %29, align 4
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = load i64, i64* @nfserr_attrnotsupp, align 8
  store i64 %183, i64* %28, align 8
  br label %1364

184:                                              ; preds = %177
  %185 = load i32, i32* %29, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %1384

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189, %172
  br label %191

191:                                              ; preds = %190, %158
  %192 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %17, align 4
  %196 = call i64 @nfsd4_encode_bitmap(%struct.xdr_stream* %192, i32 %193, i32 %194, i32 %195)
  store i64 %196, i64* %28, align 8
  %197 = load i64, i64* %28, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  br label %1364

200:                                              ; preds = %191
  %201 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %202 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %201, i32 0, i32 0
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %23, align 4
  %206 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %207 = call i64* @xdr_reserve_space(%struct.xdr_stream* %206, i32 4)
  store i64* %207, i64** %21, align 8
  %208 = load i64*, i64** %21, align 8
  %209 = icmp ne i64* %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %200
  br label %1387

211:                                              ; preds = %200
  %212 = load i64*, i64** %21, align 8
  %213 = getelementptr inbounds i64, i64* %212, i32 1
  store i64* %213, i64** %21, align 8
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* @FATTR4_WORD0_SUPPORTED_ATTRS, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %303

218:                                              ; preds = %211
  %219 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 0
  %220 = load i32*, i32** @nfsd_suppattrs, align 8
  %221 = load i32, i32* %33, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @memcpy(i32* %219, i32 %224, i32 12)
  %226 = load %struct.dentry*, %struct.dentry** %11, align 8
  %227 = getelementptr inbounds %struct.dentry, %struct.dentry* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i64 @IS_POSIXACL(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %218
  %232 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %233 = xor i32 %232, -1
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %235, %233
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %231, %218
  %238 = load i32, i32* %31, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %246, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* @FATTR4_WORD2_SECURITY_LABEL, align 4
  %242 = xor i32 %241, -1
  %243 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 2
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, %242
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %240, %237
  %247 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 2
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %273, label %250

250:                                              ; preds = %246
  %251 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %252 = call i64* @xdr_reserve_space(%struct.xdr_stream* %251, i32 12)
  store i64* %252, i64** %21, align 8
  %253 = load i64*, i64** %21, align 8
  %254 = icmp ne i64* %253, null
  br i1 %254, label %256, label %255

255:                                              ; preds = %250
  br label %1387

256:                                              ; preds = %250
  %257 = call i8* @cpu_to_be32(i32 2)
  %258 = ptrtoint i8* %257 to i64
  %259 = load i64*, i64** %21, align 8
  %260 = getelementptr inbounds i64, i64* %259, i32 1
  store i64* %260, i64** %21, align 8
  store i64 %258, i64* %259, align 8
  %261 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = call i8* @cpu_to_be32(i32 %262)
  %264 = ptrtoint i8* %263 to i64
  %265 = load i64*, i64** %21, align 8
  %266 = getelementptr inbounds i64, i64* %265, i32 1
  store i64* %266, i64** %21, align 8
  store i64 %264, i64* %265, align 8
  %267 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = call i8* @cpu_to_be32(i32 %268)
  %270 = ptrtoint i8* %269 to i64
  %271 = load i64*, i64** %21, align 8
  %272 = getelementptr inbounds i64, i64* %271, i32 1
  store i64* %272, i64** %21, align 8
  store i64 %270, i64* %271, align 8
  br label %302

273:                                              ; preds = %246
  %274 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %275 = call i64* @xdr_reserve_space(%struct.xdr_stream* %274, i32 16)
  store i64* %275, i64** %21, align 8
  %276 = load i64*, i64** %21, align 8
  %277 = icmp ne i64* %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %273
  br label %1387

279:                                              ; preds = %273
  %280 = call i8* @cpu_to_be32(i32 3)
  %281 = ptrtoint i8* %280 to i64
  %282 = load i64*, i64** %21, align 8
  %283 = getelementptr inbounds i64, i64* %282, i32 1
  store i64* %283, i64** %21, align 8
  store i64 %281, i64* %282, align 8
  %284 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 0
  %285 = load i32, i32* %284, align 4
  %286 = call i8* @cpu_to_be32(i32 %285)
  %287 = ptrtoint i8* %286 to i64
  %288 = load i64*, i64** %21, align 8
  %289 = getelementptr inbounds i64, i64* %288, i32 1
  store i64* %289, i64** %21, align 8
  store i64 %287, i64* %288, align 8
  %290 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 1
  %291 = load i32, i32* %290, align 4
  %292 = call i8* @cpu_to_be32(i32 %291)
  %293 = ptrtoint i8* %292 to i64
  %294 = load i64*, i64** %21, align 8
  %295 = getelementptr inbounds i64, i64* %294, i32 1
  store i64* %295, i64** %21, align 8
  store i64 %293, i64* %294, align 8
  %296 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 2
  %297 = load i32, i32* %296, align 4
  %298 = call i8* @cpu_to_be32(i32 %297)
  %299 = ptrtoint i8* %298 to i64
  %300 = load i64*, i64** %21, align 8
  %301 = getelementptr inbounds i64, i64* %300, i32 1
  store i64* %301, i64** %21, align 8
  store i64 %299, i64* %300, align 8
  br label %302

302:                                              ; preds = %279, %256
  br label %303

303:                                              ; preds = %302, %211
  %304 = load i32, i32* %15, align 4
  %305 = load i32, i32* @FATTR4_WORD0_TYPE, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %329

308:                                              ; preds = %303
  %309 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %310 = call i64* @xdr_reserve_space(%struct.xdr_stream* %309, i32 4)
  store i64* %310, i64** %21, align 8
  %311 = load i64*, i64** %21, align 8
  %312 = icmp ne i64* %311, null
  br i1 %312, label %314, label %313

313:                                              ; preds = %308
  br label %1387

314:                                              ; preds = %308
  %315 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @nfs4_file_type(i32 %316)
  store i32 %317, i32* %25, align 4
  %318 = load i32, i32* %25, align 4
  %319 = load i32, i32* @NF4BAD, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %314
  %322 = load i64, i64* @nfserr_serverfault, align 8
  store i64 %322, i64* %28, align 8
  br label %1364

323:                                              ; preds = %314
  %324 = load i32, i32* %25, align 4
  %325 = call i8* @cpu_to_be32(i32 %324)
  %326 = ptrtoint i8* %325 to i64
  %327 = load i64*, i64** %21, align 8
  %328 = getelementptr inbounds i64, i64* %327, i32 1
  store i64* %328, i64** %21, align 8
  store i64 %326, i64* %327, align 8
  br label %329

329:                                              ; preds = %323, %303
  %330 = load i32, i32* %15, align 4
  %331 = load i32, i32* @FATTR4_WORD0_FH_EXPIRE_TYPE, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %362

334:                                              ; preds = %329
  %335 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %336 = call i64* @xdr_reserve_space(%struct.xdr_stream* %335, i32 4)
  store i64* %336, i64** %21, align 8
  %337 = load i64*, i64** %21, align 8
  %338 = icmp ne i64* %337, null
  br i1 %338, label %340, label %339

339:                                              ; preds = %334
  br label %1387

340:                                              ; preds = %334
  %341 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %342 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @NFSEXP_NOSUBTREECHECK, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %340
  %348 = load i32, i32* @NFS4_FH_PERSISTENT, align 4
  %349 = call i8* @cpu_to_be32(i32 %348)
  %350 = ptrtoint i8* %349 to i64
  %351 = load i64*, i64** %21, align 8
  %352 = getelementptr inbounds i64, i64* %351, i32 1
  store i64* %352, i64** %21, align 8
  store i64 %350, i64* %351, align 8
  br label %361

353:                                              ; preds = %340
  %354 = load i32, i32* @NFS4_FH_PERSISTENT, align 4
  %355 = load i32, i32* @NFS4_FH_VOL_RENAME, align 4
  %356 = or i32 %354, %355
  %357 = call i8* @cpu_to_be32(i32 %356)
  %358 = ptrtoint i8* %357 to i64
  %359 = load i64*, i64** %21, align 8
  %360 = getelementptr inbounds i64, i64* %359, i32 1
  store i64* %360, i64** %21, align 8
  store i64 %358, i64* %359, align 8
  br label %361

361:                                              ; preds = %353, %347
  br label %362

362:                                              ; preds = %361, %329
  %363 = load i32, i32* %15, align 4
  %364 = load i32, i32* @FATTR4_WORD0_CHANGE, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %379

367:                                              ; preds = %362
  %368 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %369 = call i64* @xdr_reserve_space(%struct.xdr_stream* %368, i32 8)
  store i64* %369, i64** %21, align 8
  %370 = load i64*, i64** %21, align 8
  %371 = icmp ne i64* %370, null
  br i1 %371, label %373, label %372

372:                                              ; preds = %367
  br label %1387

373:                                              ; preds = %367
  %374 = load i64*, i64** %21, align 8
  %375 = load %struct.dentry*, %struct.dentry** %11, align 8
  %376 = call i32 @d_inode(%struct.dentry* %375)
  %377 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %378 = call i64* @encode_change(i64* %374, %struct.kstat* %18, i32 %376, %struct.svc_export* %377)
  store i64* %378, i64** %21, align 8
  br label %379

379:                                              ; preds = %373, %362
  %380 = load i32, i32* %15, align 4
  %381 = load i32, i32* @FATTR4_WORD0_SIZE, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %395

384:                                              ; preds = %379
  %385 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %386 = call i64* @xdr_reserve_space(%struct.xdr_stream* %385, i32 8)
  store i64* %386, i64** %21, align 8
  %387 = load i64*, i64** %21, align 8
  %388 = icmp ne i64* %387, null
  br i1 %388, label %390, label %389

389:                                              ; preds = %384
  br label %1387

390:                                              ; preds = %384
  %391 = load i64*, i64** %21, align 8
  %392 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = call i64* @xdr_encode_hyper(i64* %391, i32 %393)
  store i64* %394, i64** %21, align 8
  br label %395

395:                                              ; preds = %390, %379
  %396 = load i32, i32* %15, align 4
  %397 = load i32, i32* @FATTR4_WORD0_LINK_SUPPORT, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %411

400:                                              ; preds = %395
  %401 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %402 = call i64* @xdr_reserve_space(%struct.xdr_stream* %401, i32 4)
  store i64* %402, i64** %21, align 8
  %403 = load i64*, i64** %21, align 8
  %404 = icmp ne i64* %403, null
  br i1 %404, label %406, label %405

405:                                              ; preds = %400
  br label %1387

406:                                              ; preds = %400
  %407 = call i8* @cpu_to_be32(i32 1)
  %408 = ptrtoint i8* %407 to i64
  %409 = load i64*, i64** %21, align 8
  %410 = getelementptr inbounds i64, i64* %409, i32 1
  store i64* %410, i64** %21, align 8
  store i64 %408, i64* %409, align 8
  br label %411

411:                                              ; preds = %406, %395
  %412 = load i32, i32* %15, align 4
  %413 = load i32, i32* @FATTR4_WORD0_SYMLINK_SUPPORT, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %427

416:                                              ; preds = %411
  %417 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %418 = call i64* @xdr_reserve_space(%struct.xdr_stream* %417, i32 4)
  store i64* %418, i64** %21, align 8
  %419 = load i64*, i64** %21, align 8
  %420 = icmp ne i64* %419, null
  br i1 %420, label %422, label %421

421:                                              ; preds = %416
  br label %1387

422:                                              ; preds = %416
  %423 = call i8* @cpu_to_be32(i32 1)
  %424 = ptrtoint i8* %423 to i64
  %425 = load i64*, i64** %21, align 8
  %426 = getelementptr inbounds i64, i64* %425, i32 1
  store i64* %426, i64** %21, align 8
  store i64 %424, i64* %425, align 8
  br label %427

427:                                              ; preds = %422, %411
  %428 = load i32, i32* %15, align 4
  %429 = load i32, i32* @FATTR4_WORD0_NAMED_ATTR, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %443

432:                                              ; preds = %427
  %433 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %434 = call i64* @xdr_reserve_space(%struct.xdr_stream* %433, i32 4)
  store i64* %434, i64** %21, align 8
  %435 = load i64*, i64** %21, align 8
  %436 = icmp ne i64* %435, null
  br i1 %436, label %438, label %437

437:                                              ; preds = %432
  br label %1387

438:                                              ; preds = %432
  %439 = call i8* @cpu_to_be32(i32 0)
  %440 = ptrtoint i8* %439 to i64
  %441 = load i64*, i64** %21, align 8
  %442 = getelementptr inbounds i64, i64* %441, i32 1
  store i64* %442, i64** %21, align 8
  store i64 %440, i64* %441, align 8
  br label %443

443:                                              ; preds = %438, %427
  %444 = load i32, i32* %15, align 4
  %445 = load i32, i32* @FATTR4_WORD0_FSID, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %511

448:                                              ; preds = %443
  %449 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %450 = call i64* @xdr_reserve_space(%struct.xdr_stream* %449, i32 16)
  store i64* %450, i64** %21, align 8
  %451 = load i64*, i64** %21, align 8
  %452 = icmp ne i64* %451, null
  br i1 %452, label %454, label %453

453:                                              ; preds = %448
  br label %1387

454:                                              ; preds = %448
  %455 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %456 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %455, i32 0, i32 5
  %457 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %467

460:                                              ; preds = %454
  %461 = load i64*, i64** %21, align 8
  %462 = load i32, i32* @NFS4_REFERRAL_FSID_MAJOR, align 4
  %463 = call i64* @xdr_encode_hyper(i64* %461, i32 %462)
  store i64* %463, i64** %21, align 8
  %464 = load i64*, i64** %21, align 8
  %465 = load i32, i32* @NFS4_REFERRAL_FSID_MINOR, align 4
  %466 = call i64* @xdr_encode_hyper(i64* %464, i32 %465)
  store i64* %466, i64** %21, align 8
  br label %510

467:                                              ; preds = %454
  %468 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %469 = call i32 @fsid_source(%struct.svc_fh* %468)
  switch i32 %469, label %509 [
    i32 129, label %470
    i32 130, label %479
    i32 128, label %502
  ]

470:                                              ; preds = %467
  %471 = load i64*, i64** %21, align 8
  %472 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %473 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %472, i32 0, i32 4
  %474 = load i64, i64* %473, align 8
  %475 = trunc i64 %474 to i32
  %476 = call i64* @xdr_encode_hyper(i64* %471, i32 %475)
  store i64* %476, i64** %21, align 8
  %477 = load i64*, i64** %21, align 8
  %478 = call i64* @xdr_encode_hyper(i64* %477, i32 0)
  store i64* %478, i64** %21, align 8
  br label %509

479:                                              ; preds = %467
  %480 = call i8* @cpu_to_be32(i32 0)
  %481 = ptrtoint i8* %480 to i64
  %482 = load i64*, i64** %21, align 8
  %483 = getelementptr inbounds i64, i64* %482, i32 1
  store i64* %483, i64** %21, align 8
  store i64 %481, i64* %482, align 8
  %484 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 12
  %485 = load i32, i32* %484, align 4
  %486 = call i32 @MAJOR(i32 %485)
  %487 = call i8* @cpu_to_be32(i32 %486)
  %488 = ptrtoint i8* %487 to i64
  %489 = load i64*, i64** %21, align 8
  %490 = getelementptr inbounds i64, i64* %489, i32 1
  store i64* %490, i64** %21, align 8
  store i64 %488, i64* %489, align 8
  %491 = call i8* @cpu_to_be32(i32 0)
  %492 = ptrtoint i8* %491 to i64
  %493 = load i64*, i64** %21, align 8
  %494 = getelementptr inbounds i64, i64* %493, i32 1
  store i64* %494, i64** %21, align 8
  store i64 %492, i64* %493, align 8
  %495 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 12
  %496 = load i32, i32* %495, align 4
  %497 = call i32 @MINOR(i32 %496)
  %498 = call i8* @cpu_to_be32(i32 %497)
  %499 = ptrtoint i8* %498 to i64
  %500 = load i64*, i64** %21, align 8
  %501 = getelementptr inbounds i64, i64* %500, i32 1
  store i64* %501, i64** %21, align 8
  store i64 %499, i64* %500, align 8
  br label %509

502:                                              ; preds = %467
  %503 = load i64*, i64** %21, align 8
  %504 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %505 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %504, i32 0, i32 3
  %506 = load i32, i32* %505, align 8
  %507 = load i32, i32* @EX_UUID_LEN, align 4
  %508 = call i64* @xdr_encode_opaque_fixed(i64* %503, i32 %506, i32 %507)
  store i64* %508, i64** %21, align 8
  br label %509

509:                                              ; preds = %467, %502, %479, %470
  br label %510

510:                                              ; preds = %509, %460
  br label %511

511:                                              ; preds = %510, %443
  %512 = load i32, i32* %15, align 4
  %513 = load i32, i32* @FATTR4_WORD0_UNIQUE_HANDLES, align 4
  %514 = and i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %527

516:                                              ; preds = %511
  %517 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %518 = call i64* @xdr_reserve_space(%struct.xdr_stream* %517, i32 4)
  store i64* %518, i64** %21, align 8
  %519 = load i64*, i64** %21, align 8
  %520 = icmp ne i64* %519, null
  br i1 %520, label %522, label %521

521:                                              ; preds = %516
  br label %1387

522:                                              ; preds = %516
  %523 = call i8* @cpu_to_be32(i32 0)
  %524 = ptrtoint i8* %523 to i64
  %525 = load i64*, i64** %21, align 8
  %526 = getelementptr inbounds i64, i64* %525, i32 1
  store i64* %526, i64** %21, align 8
  store i64 %524, i64* %525, align 8
  br label %527

527:                                              ; preds = %522, %511
  %528 = load i32, i32* %15, align 4
  %529 = load i32, i32* @FATTR4_WORD0_LEASE_TIME, align 4
  %530 = and i32 %528, %529
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %546

532:                                              ; preds = %527
  %533 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %534 = call i64* @xdr_reserve_space(%struct.xdr_stream* %533, i32 4)
  store i64* %534, i64** %21, align 8
  %535 = load i64*, i64** %21, align 8
  %536 = icmp ne i64* %535, null
  br i1 %536, label %538, label %537

537:                                              ; preds = %532
  br label %1387

538:                                              ; preds = %532
  %539 = load %struct.nfsd_net*, %struct.nfsd_net** %35, align 8
  %540 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 4
  %542 = call i8* @cpu_to_be32(i32 %541)
  %543 = ptrtoint i8* %542 to i64
  %544 = load i64*, i64** %21, align 8
  %545 = getelementptr inbounds i64, i64* %544, i32 1
  store i64* %545, i64** %21, align 8
  store i64 %543, i64* %544, align 8
  br label %546

546:                                              ; preds = %538, %527
  %547 = load i32, i32* %15, align 4
  %548 = load i32, i32* @FATTR4_WORD0_RDATTR_ERROR, align 4
  %549 = and i32 %547, %548
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %563

551:                                              ; preds = %546
  %552 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %553 = call i64* @xdr_reserve_space(%struct.xdr_stream* %552, i32 4)
  store i64* %553, i64** %21, align 8
  %554 = load i64*, i64** %21, align 8
  %555 = icmp ne i64* %554, null
  br i1 %555, label %557, label %556

556:                                              ; preds = %551
  br label %1387

557:                                              ; preds = %551
  %558 = load i32, i32* %27, align 4
  %559 = call i8* @cpu_to_be32(i32 %558)
  %560 = ptrtoint i8* %559 to i64
  %561 = load i64*, i64** %21, align 8
  %562 = getelementptr inbounds i64, i64* %561, i32 1
  store i64* %562, i64** %21, align 8
  store i64 %560, i64* %561, align 8
  br label %563

563:                                              ; preds = %557, %546
  %564 = load i32, i32* %15, align 4
  %565 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %566 = and i32 %564, %565
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %652

568:                                              ; preds = %563
  %569 = load %struct.nfs4_acl*, %struct.nfs4_acl** %30, align 8
  %570 = icmp eq %struct.nfs4_acl* %569, null
  br i1 %570, label %571, label %582

571:                                              ; preds = %568
  %572 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %573 = call i64* @xdr_reserve_space(%struct.xdr_stream* %572, i32 4)
  store i64* %573, i64** %21, align 8
  %574 = load i64*, i64** %21, align 8
  %575 = icmp ne i64* %574, null
  br i1 %575, label %577, label %576

576:                                              ; preds = %571
  br label %1387

577:                                              ; preds = %571
  %578 = call i8* @cpu_to_be32(i32 0)
  %579 = ptrtoint i8* %578 to i64
  %580 = load i64*, i64** %21, align 8
  %581 = getelementptr inbounds i64, i64* %580, i32 1
  store i64* %581, i64** %21, align 8
  store i64 %579, i64* %580, align 8
  br label %653

582:                                              ; preds = %568
  %583 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %584 = call i64* @xdr_reserve_space(%struct.xdr_stream* %583, i32 4)
  store i64* %584, i64** %21, align 8
  %585 = load i64*, i64** %21, align 8
  %586 = icmp ne i64* %585, null
  br i1 %586, label %588, label %587

587:                                              ; preds = %582
  br label %1387

588:                                              ; preds = %582
  %589 = load %struct.nfs4_acl*, %struct.nfs4_acl** %30, align 8
  %590 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 8
  %592 = call i8* @cpu_to_be32(i32 %591)
  %593 = ptrtoint i8* %592 to i64
  %594 = load i64*, i64** %21, align 8
  %595 = getelementptr inbounds i64, i64* %594, i32 1
  store i64* %595, i64** %21, align 8
  store i64 %593, i64* %594, align 8
  %596 = load %struct.nfs4_acl*, %struct.nfs4_acl** %30, align 8
  %597 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %596, i32 0, i32 2
  %598 = load %struct.nfs4_ace*, %struct.nfs4_ace** %597, align 8
  store %struct.nfs4_ace* %598, %struct.nfs4_ace** %37, align 8
  br label %599

599:                                              ; preds = %648, %588
  %600 = load %struct.nfs4_ace*, %struct.nfs4_ace** %37, align 8
  %601 = load %struct.nfs4_acl*, %struct.nfs4_acl** %30, align 8
  %602 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %601, i32 0, i32 2
  %603 = load %struct.nfs4_ace*, %struct.nfs4_ace** %602, align 8
  %604 = load %struct.nfs4_acl*, %struct.nfs4_acl** %30, align 8
  %605 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 8
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %603, i64 %607
  %609 = icmp ult %struct.nfs4_ace* %600, %608
  br i1 %609, label %610, label %651

610:                                              ; preds = %599
  %611 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %612 = call i64* @xdr_reserve_space(%struct.xdr_stream* %611, i32 12)
  store i64* %612, i64** %21, align 8
  %613 = load i64*, i64** %21, align 8
  %614 = icmp ne i64* %613, null
  br i1 %614, label %616, label %615

615:                                              ; preds = %610
  br label %1387

616:                                              ; preds = %610
  %617 = load %struct.nfs4_ace*, %struct.nfs4_ace** %37, align 8
  %618 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 4
  %620 = call i8* @cpu_to_be32(i32 %619)
  %621 = ptrtoint i8* %620 to i64
  %622 = load i64*, i64** %21, align 8
  %623 = getelementptr inbounds i64, i64* %622, i32 1
  store i64* %623, i64** %21, align 8
  store i64 %621, i64* %622, align 8
  %624 = load %struct.nfs4_ace*, %struct.nfs4_ace** %37, align 8
  %625 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %624, i32 0, i32 1
  %626 = load i32, i32* %625, align 4
  %627 = call i8* @cpu_to_be32(i32 %626)
  %628 = ptrtoint i8* %627 to i64
  %629 = load i64*, i64** %21, align 8
  %630 = getelementptr inbounds i64, i64* %629, i32 1
  store i64* %630, i64** %21, align 8
  store i64 %628, i64* %629, align 8
  %631 = load %struct.nfs4_ace*, %struct.nfs4_ace** %37, align 8
  %632 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %631, i32 0, i32 2
  %633 = load i32, i32* %632, align 4
  %634 = load i32, i32* @NFS4_ACE_MASK_ALL, align 4
  %635 = and i32 %633, %634
  %636 = call i8* @cpu_to_be32(i32 %635)
  %637 = ptrtoint i8* %636 to i64
  %638 = load i64*, i64** %21, align 8
  %639 = getelementptr inbounds i64, i64* %638, i32 1
  store i64* %639, i64** %21, align 8
  store i64 %637, i64* %638, align 8
  %640 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %641 = load %struct.svc_rqst*, %struct.svc_rqst** %13, align 8
  %642 = load %struct.nfs4_ace*, %struct.nfs4_ace** %37, align 8
  %643 = call i64 @nfsd4_encode_aclname(%struct.xdr_stream* %640, %struct.svc_rqst* %641, %struct.nfs4_ace* %642)
  store i64 %643, i64* %28, align 8
  %644 = load i64, i64* %28, align 8
  %645 = icmp ne i64 %644, 0
  br i1 %645, label %646, label %647

646:                                              ; preds = %616
  br label %1364

647:                                              ; preds = %616
  br label %648

648:                                              ; preds = %647
  %649 = load %struct.nfs4_ace*, %struct.nfs4_ace** %37, align 8
  %650 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %649, i32 1
  store %struct.nfs4_ace* %650, %struct.nfs4_ace** %37, align 8
  br label %599

651:                                              ; preds = %599
  br label %652

652:                                              ; preds = %651, %563
  br label %653

653:                                              ; preds = %652, %577
  %654 = load i32, i32* %15, align 4
  %655 = load i32, i32* @FATTR4_WORD0_ACLSUPPORT, align 4
  %656 = and i32 %654, %655
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %681

658:                                              ; preds = %653
  %659 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %660 = call i64* @xdr_reserve_space(%struct.xdr_stream* %659, i32 4)
  store i64* %660, i64** %21, align 8
  %661 = load i64*, i64** %21, align 8
  %662 = icmp ne i64* %661, null
  br i1 %662, label %664, label %663

663:                                              ; preds = %658
  br label %1387

664:                                              ; preds = %658
  %665 = load %struct.dentry*, %struct.dentry** %11, align 8
  %666 = getelementptr inbounds %struct.dentry, %struct.dentry* %665, i32 0, i32 0
  %667 = load i32, i32* %666, align 4
  %668 = call i64 @IS_POSIXACL(i32 %667)
  %669 = icmp ne i64 %668, 0
  br i1 %669, label %670, label %674

670:                                              ; preds = %664
  %671 = load i32, i32* @ACL4_SUPPORT_ALLOW_ACL, align 4
  %672 = load i32, i32* @ACL4_SUPPORT_DENY_ACL, align 4
  %673 = or i32 %671, %672
  br label %675

674:                                              ; preds = %664
  br label %675

675:                                              ; preds = %674, %670
  %676 = phi i32 [ %673, %670 ], [ 0, %674 ]
  %677 = call i8* @cpu_to_be32(i32 %676)
  %678 = ptrtoint i8* %677 to i64
  %679 = load i64*, i64** %21, align 8
  %680 = getelementptr inbounds i64, i64* %679, i32 1
  store i64* %680, i64** %21, align 8
  store i64 %678, i64* %679, align 8
  br label %681

681:                                              ; preds = %675, %653
  %682 = load i32, i32* %15, align 4
  %683 = load i32, i32* @FATTR4_WORD0_CANSETTIME, align 4
  %684 = and i32 %682, %683
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %697

686:                                              ; preds = %681
  %687 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %688 = call i64* @xdr_reserve_space(%struct.xdr_stream* %687, i32 4)
  store i64* %688, i64** %21, align 8
  %689 = load i64*, i64** %21, align 8
  %690 = icmp ne i64* %689, null
  br i1 %690, label %692, label %691

691:                                              ; preds = %686
  br label %1387

692:                                              ; preds = %686
  %693 = call i8* @cpu_to_be32(i32 1)
  %694 = ptrtoint i8* %693 to i64
  %695 = load i64*, i64** %21, align 8
  %696 = getelementptr inbounds i64, i64* %695, i32 1
  store i64* %696, i64** %21, align 8
  store i64 %694, i64* %695, align 8
  br label %697

697:                                              ; preds = %692, %681
  %698 = load i32, i32* %15, align 4
  %699 = load i32, i32* @FATTR4_WORD0_CASE_INSENSITIVE, align 4
  %700 = and i32 %698, %699
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %702, label %713

702:                                              ; preds = %697
  %703 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %704 = call i64* @xdr_reserve_space(%struct.xdr_stream* %703, i32 4)
  store i64* %704, i64** %21, align 8
  %705 = load i64*, i64** %21, align 8
  %706 = icmp ne i64* %705, null
  br i1 %706, label %708, label %707

707:                                              ; preds = %702
  br label %1387

708:                                              ; preds = %702
  %709 = call i8* @cpu_to_be32(i32 0)
  %710 = ptrtoint i8* %709 to i64
  %711 = load i64*, i64** %21, align 8
  %712 = getelementptr inbounds i64, i64* %711, i32 1
  store i64* %712, i64** %21, align 8
  store i64 %710, i64* %711, align 8
  br label %713

713:                                              ; preds = %708, %697
  %714 = load i32, i32* %15, align 4
  %715 = load i32, i32* @FATTR4_WORD0_CASE_PRESERVING, align 4
  %716 = and i32 %714, %715
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %718, label %729

718:                                              ; preds = %713
  %719 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %720 = call i64* @xdr_reserve_space(%struct.xdr_stream* %719, i32 4)
  store i64* %720, i64** %21, align 8
  %721 = load i64*, i64** %21, align 8
  %722 = icmp ne i64* %721, null
  br i1 %722, label %724, label %723

723:                                              ; preds = %718
  br label %1387

724:                                              ; preds = %718
  %725 = call i8* @cpu_to_be32(i32 1)
  %726 = ptrtoint i8* %725 to i64
  %727 = load i64*, i64** %21, align 8
  %728 = getelementptr inbounds i64, i64* %727, i32 1
  store i64* %728, i64** %21, align 8
  store i64 %726, i64* %727, align 8
  br label %729

729:                                              ; preds = %724, %713
  %730 = load i32, i32* %15, align 4
  %731 = load i32, i32* @FATTR4_WORD0_CHOWN_RESTRICTED, align 4
  %732 = and i32 %730, %731
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %745

734:                                              ; preds = %729
  %735 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %736 = call i64* @xdr_reserve_space(%struct.xdr_stream* %735, i32 4)
  store i64* %736, i64** %21, align 8
  %737 = load i64*, i64** %21, align 8
  %738 = icmp ne i64* %737, null
  br i1 %738, label %740, label %739

739:                                              ; preds = %734
  br label %1387

740:                                              ; preds = %734
  %741 = call i8* @cpu_to_be32(i32 1)
  %742 = ptrtoint i8* %741 to i64
  %743 = load i64*, i64** %21, align 8
  %744 = getelementptr inbounds i64, i64* %743, i32 1
  store i64* %744, i64** %21, align 8
  store i64 %742, i64* %743, align 8
  br label %745

745:                                              ; preds = %740, %729
  %746 = load i32, i32* %15, align 4
  %747 = load i32, i32* @FATTR4_WORD0_FILEHANDLE, align 4
  %748 = and i32 %746, %747
  %749 = icmp ne i32 %748, 0
  br i1 %749, label %750, label %771

750:                                              ; preds = %745
  %751 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %752 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %753 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %752, i32 0, i32 1
  %754 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %753, i32 0, i32 0
  %755 = load i32, i32* %754, align 4
  %756 = add nsw i32 %755, 4
  %757 = call i64* @xdr_reserve_space(%struct.xdr_stream* %751, i32 %756)
  store i64* %757, i64** %21, align 8
  %758 = load i64*, i64** %21, align 8
  %759 = icmp ne i64* %758, null
  br i1 %759, label %761, label %760

760:                                              ; preds = %750
  br label %1387

761:                                              ; preds = %750
  %762 = load i64*, i64** %21, align 8
  %763 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %764 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %763, i32 0, i32 1
  %765 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %764, i32 0, i32 1
  %766 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %767 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %766, i32 0, i32 1
  %768 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %767, i32 0, i32 0
  %769 = load i32, i32* %768, align 4
  %770 = call i64* @xdr_encode_opaque(i64* %762, i32* %765, i32 %769)
  store i64* %770, i64** %21, align 8
  br label %771

771:                                              ; preds = %761, %745
  %772 = load i32, i32* %15, align 4
  %773 = load i32, i32* @FATTR4_WORD0_FILEID, align 4
  %774 = and i32 %772, %773
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %776, label %787

776:                                              ; preds = %771
  %777 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %778 = call i64* @xdr_reserve_space(%struct.xdr_stream* %777, i32 8)
  store i64* %778, i64** %21, align 8
  %779 = load i64*, i64** %21, align 8
  %780 = icmp ne i64* %779, null
  br i1 %780, label %782, label %781

781:                                              ; preds = %776
  br label %1387

782:                                              ; preds = %776
  %783 = load i64*, i64** %21, align 8
  %784 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 2
  %785 = load i32, i32* %784, align 8
  %786 = call i64* @xdr_encode_hyper(i64* %783, i32 %785)
  store i64* %786, i64** %21, align 8
  br label %787

787:                                              ; preds = %782, %771
  %788 = load i32, i32* %15, align 4
  %789 = load i32, i32* @FATTR4_WORD0_FILES_AVAIL, align 4
  %790 = and i32 %788, %789
  %791 = icmp ne i32 %790, 0
  br i1 %791, label %792, label %804

792:                                              ; preds = %787
  %793 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %794 = call i64* @xdr_reserve_space(%struct.xdr_stream* %793, i32 8)
  store i64* %794, i64** %21, align 8
  %795 = load i64*, i64** %21, align 8
  %796 = icmp ne i64* %795, null
  br i1 %796, label %798, label %797

797:                                              ; preds = %792
  br label %1387

798:                                              ; preds = %792
  %799 = load i64*, i64** %21, align 8
  %800 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 6
  %801 = load i64, i64* %800, align 8
  %802 = trunc i64 %801 to i32
  %803 = call i64* @xdr_encode_hyper(i64* %799, i32 %802)
  store i64* %803, i64** %21, align 8
  br label %804

804:                                              ; preds = %798, %787
  %805 = load i32, i32* %15, align 4
  %806 = load i32, i32* @FATTR4_WORD0_FILES_FREE, align 4
  %807 = and i32 %805, %806
  %808 = icmp ne i32 %807, 0
  br i1 %808, label %809, label %821

809:                                              ; preds = %804
  %810 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %811 = call i64* @xdr_reserve_space(%struct.xdr_stream* %810, i32 8)
  store i64* %811, i64** %21, align 8
  %812 = load i64*, i64** %21, align 8
  %813 = icmp ne i64* %812, null
  br i1 %813, label %815, label %814

814:                                              ; preds = %809
  br label %1387

815:                                              ; preds = %809
  %816 = load i64*, i64** %21, align 8
  %817 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 6
  %818 = load i64, i64* %817, align 8
  %819 = trunc i64 %818 to i32
  %820 = call i64* @xdr_encode_hyper(i64* %816, i32 %819)
  store i64* %820, i64** %21, align 8
  br label %821

821:                                              ; preds = %815, %804
  %822 = load i32, i32* %15, align 4
  %823 = load i32, i32* @FATTR4_WORD0_FILES_TOTAL, align 4
  %824 = and i32 %822, %823
  %825 = icmp ne i32 %824, 0
  br i1 %825, label %826, label %838

826:                                              ; preds = %821
  %827 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %828 = call i64* @xdr_reserve_space(%struct.xdr_stream* %827, i32 8)
  store i64* %828, i64** %21, align 8
  %829 = load i64*, i64** %21, align 8
  %830 = icmp ne i64* %829, null
  br i1 %830, label %832, label %831

831:                                              ; preds = %826
  br label %1387

832:                                              ; preds = %826
  %833 = load i64*, i64** %21, align 8
  %834 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 5
  %835 = load i64, i64* %834, align 8
  %836 = trunc i64 %835 to i32
  %837 = call i64* @xdr_encode_hyper(i64* %833, i32 %836)
  store i64* %837, i64** %21, align 8
  br label %838

838:                                              ; preds = %832, %821
  %839 = load i32, i32* %15, align 4
  %840 = load i32, i32* @FATTR4_WORD0_FS_LOCATIONS, align 4
  %841 = and i32 %839, %840
  %842 = icmp ne i32 %841, 0
  br i1 %842, label %843, label %852

843:                                              ; preds = %838
  %844 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %845 = load %struct.svc_rqst*, %struct.svc_rqst** %13, align 8
  %846 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %847 = call i64 @nfsd4_encode_fs_locations(%struct.xdr_stream* %844, %struct.svc_rqst* %845, %struct.svc_export* %846)
  store i64 %847, i64* %28, align 8
  %848 = load i64, i64* %28, align 8
  %849 = icmp ne i64 %848, 0
  br i1 %849, label %850, label %851

850:                                              ; preds = %843
  br label %1364

851:                                              ; preds = %843
  br label %852

852:                                              ; preds = %851, %838
  %853 = load i32, i32* %15, align 4
  %854 = load i32, i32* @FATTR4_WORD0_HOMOGENEOUS, align 4
  %855 = and i32 %853, %854
  %856 = icmp ne i32 %855, 0
  br i1 %856, label %857, label %868

857:                                              ; preds = %852
  %858 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %859 = call i64* @xdr_reserve_space(%struct.xdr_stream* %858, i32 4)
  store i64* %859, i64** %21, align 8
  %860 = load i64*, i64** %21, align 8
  %861 = icmp ne i64* %860, null
  br i1 %861, label %863, label %862

862:                                              ; preds = %857
  br label %1387

863:                                              ; preds = %857
  %864 = call i8* @cpu_to_be32(i32 1)
  %865 = ptrtoint i8* %864 to i64
  %866 = load i64*, i64** %21, align 8
  %867 = getelementptr inbounds i64, i64* %866, i32 1
  store i64* %867, i64** %21, align 8
  store i64 %865, i64* %866, align 8
  br label %868

868:                                              ; preds = %863, %852
  %869 = load i32, i32* %15, align 4
  %870 = load i32, i32* @FATTR4_WORD0_MAXFILESIZE, align 4
  %871 = and i32 %869, %870
  %872 = icmp ne i32 %871, 0
  br i1 %872, label %873, label %890

873:                                              ; preds = %868
  %874 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %875 = call i64* @xdr_reserve_space(%struct.xdr_stream* %874, i32 8)
  store i64* %875, i64** %21, align 8
  %876 = load i64*, i64** %21, align 8
  %877 = icmp ne i64* %876, null
  br i1 %877, label %879, label %878

878:                                              ; preds = %873
  br label %1387

879:                                              ; preds = %873
  %880 = load i64*, i64** %21, align 8
  %881 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %882 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %881, i32 0, i32 2
  %883 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %882, i32 0, i32 0
  %884 = load %struct.TYPE_19__*, %struct.TYPE_19__** %883, align 8
  %885 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %884, i32 0, i32 1
  %886 = load %struct.TYPE_15__*, %struct.TYPE_15__** %885, align 8
  %887 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %886, i32 0, i32 0
  %888 = load i32, i32* %887, align 4
  %889 = call i64* @xdr_encode_hyper(i64* %880, i32 %888)
  store i64* %889, i64** %21, align 8
  br label %890

890:                                              ; preds = %879, %868
  %891 = load i32, i32* %15, align 4
  %892 = load i32, i32* @FATTR4_WORD0_MAXLINK, align 4
  %893 = and i32 %891, %892
  %894 = icmp ne i32 %893, 0
  br i1 %894, label %895, label %906

895:                                              ; preds = %890
  %896 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %897 = call i64* @xdr_reserve_space(%struct.xdr_stream* %896, i32 4)
  store i64* %897, i64** %21, align 8
  %898 = load i64*, i64** %21, align 8
  %899 = icmp ne i64* %898, null
  br i1 %899, label %901, label %900

900:                                              ; preds = %895
  br label %1387

901:                                              ; preds = %895
  %902 = call i8* @cpu_to_be32(i32 255)
  %903 = ptrtoint i8* %902 to i64
  %904 = load i64*, i64** %21, align 8
  %905 = getelementptr inbounds i64, i64* %904, i32 1
  store i64* %905, i64** %21, align 8
  store i64 %903, i64* %904, align 8
  br label %906

906:                                              ; preds = %901, %890
  %907 = load i32, i32* %15, align 4
  %908 = load i32, i32* @FATTR4_WORD0_MAXNAME, align 4
  %909 = and i32 %907, %908
  %910 = icmp ne i32 %909, 0
  br i1 %910, label %911, label %924

911:                                              ; preds = %906
  %912 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %913 = call i64* @xdr_reserve_space(%struct.xdr_stream* %912, i32 4)
  store i64* %913, i64** %21, align 8
  %914 = load i64*, i64** %21, align 8
  %915 = icmp ne i64* %914, null
  br i1 %915, label %917, label %916

916:                                              ; preds = %911
  br label %1387

917:                                              ; preds = %911
  %918 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 0
  %919 = load i32, i32* %918, align 8
  %920 = call i8* @cpu_to_be32(i32 %919)
  %921 = ptrtoint i8* %920 to i64
  %922 = load i64*, i64** %21, align 8
  %923 = getelementptr inbounds i64, i64* %922, i32 1
  store i64* %923, i64** %21, align 8
  store i64 %921, i64* %922, align 8
  br label %924

924:                                              ; preds = %917, %906
  %925 = load i32, i32* %15, align 4
  %926 = load i32, i32* @FATTR4_WORD0_MAXREAD, align 4
  %927 = and i32 %925, %926
  %928 = icmp ne i32 %927, 0
  br i1 %928, label %929, label %941

929:                                              ; preds = %924
  %930 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %931 = call i64* @xdr_reserve_space(%struct.xdr_stream* %930, i32 8)
  store i64* %931, i64** %21, align 8
  %932 = load i64*, i64** %21, align 8
  %933 = icmp ne i64* %932, null
  br i1 %933, label %935, label %934

934:                                              ; preds = %929
  br label %1387

935:                                              ; preds = %929
  %936 = load i64*, i64** %21, align 8
  %937 = load %struct.svc_rqst*, %struct.svc_rqst** %13, align 8
  %938 = call i64 @svc_max_payload(%struct.svc_rqst* %937)
  %939 = trunc i64 %938 to i32
  %940 = call i64* @xdr_encode_hyper(i64* %936, i32 %939)
  store i64* %940, i64** %21, align 8
  br label %941

941:                                              ; preds = %935, %924
  %942 = load i32, i32* %15, align 4
  %943 = load i32, i32* @FATTR4_WORD0_MAXWRITE, align 4
  %944 = and i32 %942, %943
  %945 = icmp ne i32 %944, 0
  br i1 %945, label %946, label %958

946:                                              ; preds = %941
  %947 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %948 = call i64* @xdr_reserve_space(%struct.xdr_stream* %947, i32 8)
  store i64* %948, i64** %21, align 8
  %949 = load i64*, i64** %21, align 8
  %950 = icmp ne i64* %949, null
  br i1 %950, label %952, label %951

951:                                              ; preds = %946
  br label %1387

952:                                              ; preds = %946
  %953 = load i64*, i64** %21, align 8
  %954 = load %struct.svc_rqst*, %struct.svc_rqst** %13, align 8
  %955 = call i64 @svc_max_payload(%struct.svc_rqst* %954)
  %956 = trunc i64 %955 to i32
  %957 = call i64* @xdr_encode_hyper(i64* %953, i32 %956)
  store i64* %957, i64** %21, align 8
  br label %958

958:                                              ; preds = %952, %941
  %959 = load i32, i32* %16, align 4
  %960 = load i32, i32* @FATTR4_WORD1_MODE, align 4
  %961 = and i32 %959, %960
  %962 = icmp ne i32 %961, 0
  br i1 %962, label %963, label %978

963:                                              ; preds = %958
  %964 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %965 = call i64* @xdr_reserve_space(%struct.xdr_stream* %964, i32 4)
  store i64* %965, i64** %21, align 8
  %966 = load i64*, i64** %21, align 8
  %967 = icmp ne i64* %966, null
  br i1 %967, label %969, label %968

968:                                              ; preds = %963
  br label %1387

969:                                              ; preds = %963
  %970 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 0
  %971 = load i32, i32* %970, align 8
  %972 = load i32, i32* @S_IALLUGO, align 4
  %973 = and i32 %971, %972
  %974 = call i8* @cpu_to_be32(i32 %973)
  %975 = ptrtoint i8* %974 to i64
  %976 = load i64*, i64** %21, align 8
  %977 = getelementptr inbounds i64, i64* %976, i32 1
  store i64* %977, i64** %21, align 8
  store i64 %975, i64* %976, align 8
  br label %978

978:                                              ; preds = %969, %958
  %979 = load i32, i32* %16, align 4
  %980 = load i32, i32* @FATTR4_WORD1_NO_TRUNC, align 4
  %981 = and i32 %979, %980
  %982 = icmp ne i32 %981, 0
  br i1 %982, label %983, label %994

983:                                              ; preds = %978
  %984 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %985 = call i64* @xdr_reserve_space(%struct.xdr_stream* %984, i32 4)
  store i64* %985, i64** %21, align 8
  %986 = load i64*, i64** %21, align 8
  %987 = icmp ne i64* %986, null
  br i1 %987, label %989, label %988

988:                                              ; preds = %983
  br label %1387

989:                                              ; preds = %983
  %990 = call i8* @cpu_to_be32(i32 1)
  %991 = ptrtoint i8* %990 to i64
  %992 = load i64*, i64** %21, align 8
  %993 = getelementptr inbounds i64, i64* %992, i32 1
  store i64* %993, i64** %21, align 8
  store i64 %991, i64* %992, align 8
  br label %994

994:                                              ; preds = %989, %978
  %995 = load i32, i32* %16, align 4
  %996 = load i32, i32* @FATTR4_WORD1_NUMLINKS, align 4
  %997 = and i32 %995, %996
  %998 = icmp ne i32 %997, 0
  br i1 %998, label %999, label %1012

999:                                              ; preds = %994
  %1000 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1001 = call i64* @xdr_reserve_space(%struct.xdr_stream* %1000, i32 4)
  store i64* %1001, i64** %21, align 8
  %1002 = load i64*, i64** %21, align 8
  %1003 = icmp ne i64* %1002, null
  br i1 %1003, label %1005, label %1004

1004:                                             ; preds = %999
  br label %1387

1005:                                             ; preds = %999
  %1006 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 3
  %1007 = load i32, i32* %1006, align 4
  %1008 = call i8* @cpu_to_be32(i32 %1007)
  %1009 = ptrtoint i8* %1008 to i64
  %1010 = load i64*, i64** %21, align 8
  %1011 = getelementptr inbounds i64, i64* %1010, i32 1
  store i64* %1011, i64** %21, align 8
  store i64 %1009, i64* %1010, align 8
  br label %1012

1012:                                             ; preds = %1005, %994
  %1013 = load i32, i32* %16, align 4
  %1014 = load i32, i32* @FATTR4_WORD1_OWNER, align 4
  %1015 = and i32 %1013, %1014
  %1016 = icmp ne i32 %1015, 0
  br i1 %1016, label %1017, label %1027

1017:                                             ; preds = %1012
  %1018 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1019 = load %struct.svc_rqst*, %struct.svc_rqst** %13, align 8
  %1020 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 11
  %1021 = load i32, i32* %1020, align 8
  %1022 = call i64 @nfsd4_encode_user(%struct.xdr_stream* %1018, %struct.svc_rqst* %1019, i32 %1021)
  store i64 %1022, i64* %28, align 8
  %1023 = load i64, i64* %28, align 8
  %1024 = icmp ne i64 %1023, 0
  br i1 %1024, label %1025, label %1026

1025:                                             ; preds = %1017
  br label %1364

1026:                                             ; preds = %1017
  br label %1027

1027:                                             ; preds = %1026, %1012
  %1028 = load i32, i32* %16, align 4
  %1029 = load i32, i32* @FATTR4_WORD1_OWNER_GROUP, align 4
  %1030 = and i32 %1028, %1029
  %1031 = icmp ne i32 %1030, 0
  br i1 %1031, label %1032, label %1042

1032:                                             ; preds = %1027
  %1033 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1034 = load %struct.svc_rqst*, %struct.svc_rqst** %13, align 8
  %1035 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 10
  %1036 = load i32, i32* %1035, align 4
  %1037 = call i64 @nfsd4_encode_group(%struct.xdr_stream* %1033, %struct.svc_rqst* %1034, i32 %1036)
  store i64 %1037, i64* %28, align 8
  %1038 = load i64, i64* %28, align 8
  %1039 = icmp ne i64 %1038, 0
  br i1 %1039, label %1040, label %1041

1040:                                             ; preds = %1032
  br label %1364

1041:                                             ; preds = %1032
  br label %1042

1042:                                             ; preds = %1041, %1027
  %1043 = load i32, i32* %16, align 4
  %1044 = load i32, i32* @FATTR4_WORD1_RAWDEV, align 4
  %1045 = and i32 %1043, %1044
  %1046 = icmp ne i32 %1045, 0
  br i1 %1046, label %1047, label %1068

1047:                                             ; preds = %1042
  %1048 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1049 = call i64* @xdr_reserve_space(%struct.xdr_stream* %1048, i32 8)
  store i64* %1049, i64** %21, align 8
  %1050 = load i64*, i64** %21, align 8
  %1051 = icmp ne i64* %1050, null
  br i1 %1051, label %1053, label %1052

1052:                                             ; preds = %1047
  br label %1387

1053:                                             ; preds = %1047
  %1054 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 9
  %1055 = load i32, i32* %1054, align 8
  %1056 = call i32 @MAJOR(i32 %1055)
  %1057 = call i8* @cpu_to_be32(i32 %1056)
  %1058 = ptrtoint i8* %1057 to i64
  %1059 = load i64*, i64** %21, align 8
  %1060 = getelementptr inbounds i64, i64* %1059, i32 1
  store i64* %1060, i64** %21, align 8
  store i64 %1058, i64* %1059, align 8
  %1061 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 9
  %1062 = load i32, i32* %1061, align 8
  %1063 = call i32 @MINOR(i32 %1062)
  %1064 = call i8* @cpu_to_be32(i32 %1063)
  %1065 = ptrtoint i8* %1064 to i64
  %1066 = load i64*, i64** %21, align 8
  %1067 = getelementptr inbounds i64, i64* %1066, i32 1
  store i64* %1067, i64** %21, align 8
  store i64 %1065, i64* %1066, align 8
  br label %1068

1068:                                             ; preds = %1053, %1042
  %1069 = load i32, i32* %16, align 4
  %1070 = load i32, i32* @FATTR4_WORD1_SPACE_AVAIL, align 4
  %1071 = and i32 %1069, %1070
  %1072 = icmp ne i32 %1071, 0
  br i1 %1072, label %1073, label %1090

1073:                                             ; preds = %1068
  %1074 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1075 = call i64* @xdr_reserve_space(%struct.xdr_stream* %1074, i32 8)
  store i64* %1075, i64** %21, align 8
  %1076 = load i64*, i64** %21, align 8
  %1077 = icmp ne i64* %1076, null
  br i1 %1077, label %1079, label %1078

1078:                                             ; preds = %1073
  br label %1387

1079:                                             ; preds = %1073
  %1080 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 4
  %1081 = load i64, i64* %1080, align 8
  %1082 = trunc i64 %1081 to i32
  %1083 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 1
  %1084 = load i64, i64* %1083, align 8
  %1085 = trunc i64 %1084 to i32
  %1086 = mul nsw i32 %1082, %1085
  store i32 %1086, i32* %26, align 4
  %1087 = load i64*, i64** %21, align 8
  %1088 = load i32, i32* %26, align 4
  %1089 = call i64* @xdr_encode_hyper(i64* %1087, i32 %1088)
  store i64* %1089, i64** %21, align 8
  br label %1090

1090:                                             ; preds = %1079, %1068
  %1091 = load i32, i32* %16, align 4
  %1092 = load i32, i32* @FATTR4_WORD1_SPACE_FREE, align 4
  %1093 = and i32 %1091, %1092
  %1094 = icmp ne i32 %1093, 0
  br i1 %1094, label %1095, label %1112

1095:                                             ; preds = %1090
  %1096 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1097 = call i64* @xdr_reserve_space(%struct.xdr_stream* %1096, i32 8)
  store i64* %1097, i64** %21, align 8
  %1098 = load i64*, i64** %21, align 8
  %1099 = icmp ne i64* %1098, null
  br i1 %1099, label %1101, label %1100

1100:                                             ; preds = %1095
  br label %1387

1101:                                             ; preds = %1095
  %1102 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 3
  %1103 = load i64, i64* %1102, align 8
  %1104 = trunc i64 %1103 to i32
  %1105 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 1
  %1106 = load i64, i64* %1105, align 8
  %1107 = trunc i64 %1106 to i32
  %1108 = mul nsw i32 %1104, %1107
  store i32 %1108, i32* %26, align 4
  %1109 = load i64*, i64** %21, align 8
  %1110 = load i32, i32* %26, align 4
  %1111 = call i64* @xdr_encode_hyper(i64* %1109, i32 %1110)
  store i64* %1111, i64** %21, align 8
  br label %1112

1112:                                             ; preds = %1101, %1090
  %1113 = load i32, i32* %16, align 4
  %1114 = load i32, i32* @FATTR4_WORD1_SPACE_TOTAL, align 4
  %1115 = and i32 %1113, %1114
  %1116 = icmp ne i32 %1115, 0
  br i1 %1116, label %1117, label %1134

1117:                                             ; preds = %1112
  %1118 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1119 = call i64* @xdr_reserve_space(%struct.xdr_stream* %1118, i32 8)
  store i64* %1119, i64** %21, align 8
  %1120 = load i64*, i64** %21, align 8
  %1121 = icmp ne i64* %1120, null
  br i1 %1121, label %1123, label %1122

1122:                                             ; preds = %1117
  br label %1387

1123:                                             ; preds = %1117
  %1124 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 2
  %1125 = load i64, i64* %1124, align 8
  %1126 = trunc i64 %1125 to i32
  %1127 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 1
  %1128 = load i64, i64* %1127, align 8
  %1129 = trunc i64 %1128 to i32
  %1130 = mul nsw i32 %1126, %1129
  store i32 %1130, i32* %26, align 4
  %1131 = load i64*, i64** %21, align 8
  %1132 = load i32, i32* %26, align 4
  %1133 = call i64* @xdr_encode_hyper(i64* %1131, i32 %1132)
  store i64* %1133, i64** %21, align 8
  br label %1134

1134:                                             ; preds = %1123, %1112
  %1135 = load i32, i32* %16, align 4
  %1136 = load i32, i32* @FATTR4_WORD1_SPACE_USED, align 4
  %1137 = and i32 %1135, %1136
  %1138 = icmp ne i32 %1137, 0
  br i1 %1138, label %1139, label %1153

1139:                                             ; preds = %1134
  %1140 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1141 = call i64* @xdr_reserve_space(%struct.xdr_stream* %1140, i32 8)
  store i64* %1141, i64** %21, align 8
  %1142 = load i64*, i64** %21, align 8
  %1143 = icmp ne i64* %1142, null
  br i1 %1143, label %1145, label %1144

1144:                                             ; preds = %1139
  br label %1387

1145:                                             ; preds = %1139
  %1146 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 8
  %1147 = load i64, i64* %1146, align 8
  %1148 = trunc i64 %1147 to i32
  %1149 = shl i32 %1148, 9
  store i32 %1149, i32* %26, align 4
  %1150 = load i64*, i64** %21, align 8
  %1151 = load i32, i32* %26, align 4
  %1152 = call i64* @xdr_encode_hyper(i64* %1150, i32 %1151)
  store i64* %1152, i64** %21, align 8
  br label %1153

1153:                                             ; preds = %1145, %1134
  %1154 = load i32, i32* %16, align 4
  %1155 = load i32, i32* @FATTR4_WORD1_TIME_ACCESS, align 4
  %1156 = and i32 %1154, %1155
  %1157 = icmp ne i32 %1156, 0
  br i1 %1157, label %1158, label %1178

1158:                                             ; preds = %1153
  %1159 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1160 = call i64* @xdr_reserve_space(%struct.xdr_stream* %1159, i32 12)
  store i64* %1160, i64** %21, align 8
  %1161 = load i64*, i64** %21, align 8
  %1162 = icmp ne i64* %1161, null
  br i1 %1162, label %1164, label %1163

1163:                                             ; preds = %1158
  br label %1387

1164:                                             ; preds = %1158
  %1165 = load i64*, i64** %21, align 8
  %1166 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 7
  %1167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1166, i32 0, i32 1
  %1168 = load i64, i64* %1167, align 8
  %1169 = trunc i64 %1168 to i32
  %1170 = call i64* @xdr_encode_hyper(i64* %1165, i32 %1169)
  store i64* %1170, i64** %21, align 8
  %1171 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 7
  %1172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1171, i32 0, i32 0
  %1173 = load i32, i32* %1172, align 8
  %1174 = call i8* @cpu_to_be32(i32 %1173)
  %1175 = ptrtoint i8* %1174 to i64
  %1176 = load i64*, i64** %21, align 8
  %1177 = getelementptr inbounds i64, i64* %1176, i32 1
  store i64* %1177, i64** %21, align 8
  store i64 %1175, i64* %1176, align 8
  br label %1178

1178:                                             ; preds = %1164, %1153
  %1179 = load i32, i32* %16, align 4
  %1180 = load i32, i32* @FATTR4_WORD1_TIME_DELTA, align 4
  %1181 = and i32 %1179, %1180
  %1182 = icmp ne i32 %1181, 0
  br i1 %1182, label %1183, label %1194

1183:                                             ; preds = %1178
  %1184 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1185 = call i64* @xdr_reserve_space(%struct.xdr_stream* %1184, i32 12)
  store i64* %1185, i64** %21, align 8
  %1186 = load i64*, i64** %21, align 8
  %1187 = icmp ne i64* %1186, null
  br i1 %1187, label %1189, label %1188

1188:                                             ; preds = %1183
  br label %1387

1189:                                             ; preds = %1183
  %1190 = load i64*, i64** %21, align 8
  %1191 = load %struct.dentry*, %struct.dentry** %11, align 8
  %1192 = call i32 @d_inode(%struct.dentry* %1191)
  %1193 = call i64* @encode_time_delta(i64* %1190, i32 %1192)
  store i64* %1193, i64** %21, align 8
  br label %1194

1194:                                             ; preds = %1189, %1178
  %1195 = load i32, i32* %16, align 4
  %1196 = load i32, i32* @FATTR4_WORD1_TIME_METADATA, align 4
  %1197 = and i32 %1195, %1196
  %1198 = icmp ne i32 %1197, 0
  br i1 %1198, label %1199, label %1219

1199:                                             ; preds = %1194
  %1200 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1201 = call i64* @xdr_reserve_space(%struct.xdr_stream* %1200, i32 12)
  store i64* %1201, i64** %21, align 8
  %1202 = load i64*, i64** %21, align 8
  %1203 = icmp ne i64* %1202, null
  br i1 %1203, label %1205, label %1204

1204:                                             ; preds = %1199
  br label %1387

1205:                                             ; preds = %1199
  %1206 = load i64*, i64** %21, align 8
  %1207 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1207, i32 0, i32 1
  %1209 = load i64, i64* %1208, align 8
  %1210 = trunc i64 %1209 to i32
  %1211 = call i64* @xdr_encode_hyper(i64* %1206, i32 %1210)
  store i64* %1211, i64** %21, align 8
  %1212 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1212, i32 0, i32 0
  %1214 = load i32, i32* %1213, align 8
  %1215 = call i8* @cpu_to_be32(i32 %1214)
  %1216 = ptrtoint i8* %1215 to i64
  %1217 = load i64*, i64** %21, align 8
  %1218 = getelementptr inbounds i64, i64* %1217, i32 1
  store i64* %1218, i64** %21, align 8
  store i64 %1216, i64* %1217, align 8
  br label %1219

1219:                                             ; preds = %1205, %1194
  %1220 = load i32, i32* %16, align 4
  %1221 = load i32, i32* @FATTR4_WORD1_TIME_MODIFY, align 4
  %1222 = and i32 %1220, %1221
  %1223 = icmp ne i32 %1222, 0
  br i1 %1223, label %1224, label %1244

1224:                                             ; preds = %1219
  %1225 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1226 = call i64* @xdr_reserve_space(%struct.xdr_stream* %1225, i32 12)
  store i64* %1226, i64** %21, align 8
  %1227 = load i64*, i64** %21, align 8
  %1228 = icmp ne i64* %1227, null
  br i1 %1228, label %1230, label %1229

1229:                                             ; preds = %1224
  br label %1387

1230:                                             ; preds = %1224
  %1231 = load i64*, i64** %21, align 8
  %1232 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 5
  %1233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1232, i32 0, i32 1
  %1234 = load i64, i64* %1233, align 8
  %1235 = trunc i64 %1234 to i32
  %1236 = call i64* @xdr_encode_hyper(i64* %1231, i32 %1235)
  store i64* %1236, i64** %21, align 8
  %1237 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 5
  %1238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1237, i32 0, i32 0
  %1239 = load i32, i32* %1238, align 8
  %1240 = call i8* @cpu_to_be32(i32 %1239)
  %1241 = ptrtoint i8* %1240 to i64
  %1242 = load i64*, i64** %21, align 8
  %1243 = getelementptr inbounds i64, i64* %1242, i32 1
  store i64* %1243, i64** %21, align 8
  store i64 %1241, i64* %1242, align 8
  br label %1244

1244:                                             ; preds = %1230, %1219
  %1245 = load i32, i32* %16, align 4
  %1246 = load i32, i32* @FATTR4_WORD1_MOUNTED_ON_FILEID, align 4
  %1247 = and i32 %1245, %1246
  %1248 = icmp ne i32 %1247, 0
  br i1 %1248, label %1249, label %1282

1249:                                             ; preds = %1244
  %1250 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 2
  %1251 = load i32, i32* %1250, align 8
  store i32 %1251, i32* %39, align 4
  %1252 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1253 = call i64* @xdr_reserve_space(%struct.xdr_stream* %1252, i32 8)
  store i64* %1253, i64** %21, align 8
  %1254 = load i64*, i64** %21, align 8
  %1255 = icmp ne i64* %1254, null
  br i1 %1255, label %1257, label %1256

1256:                                             ; preds = %1249
  br label %1387

1257:                                             ; preds = %1249
  %1258 = load i32, i32* %14, align 4
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1260, label %1278

1260:                                             ; preds = %1257
  %1261 = load %struct.dentry*, %struct.dentry** %11, align 8
  %1262 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %1263 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %1262, i32 0, i32 2
  %1264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1263, i32 0, i32 0
  %1265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %1264, align 8
  %1266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1265, i32 0, i32 0
  %1267 = load %struct.dentry*, %struct.dentry** %1266, align 8
  %1268 = icmp eq %struct.dentry* %1261, %1267
  br i1 %1268, label %1269, label %1278

1269:                                             ; preds = %1260
  %1270 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %1271 = call i32 @get_parent_attributes(%struct.svc_export* %1270, %struct.kstat* %38)
  store i32 %1271, i32* %29, align 4
  %1272 = load i32, i32* %29, align 4
  %1273 = icmp ne i32 %1272, 0
  br i1 %1273, label %1274, label %1275

1274:                                             ; preds = %1269
  br label %1384

1275:                                             ; preds = %1269
  %1276 = getelementptr inbounds %struct.kstat, %struct.kstat* %38, i32 0, i32 2
  %1277 = load i32, i32* %1276, align 8
  store i32 %1277, i32* %39, align 4
  br label %1278

1278:                                             ; preds = %1275, %1260, %1257
  %1279 = load i64*, i64** %21, align 8
  %1280 = load i32, i32* %39, align 4
  %1281 = call i64* @xdr_encode_hyper(i64* %1279, i32 %1280)
  store i64* %1281, i64** %21, align 8
  br label %1282

1282:                                             ; preds = %1278, %1244
  %1283 = load i32, i32* %17, align 4
  %1284 = load i32, i32* @FATTR4_WORD2_SUPPATTR_EXCLCREAT, align 4
  %1285 = and i32 %1283, %1284
  %1286 = icmp ne i32 %1285, 0
  br i1 %1286, label %1287, label %1319

1287:                                             ; preds = %1282
  %1288 = getelementptr inbounds [3 x i32], [3 x i32]* %40, i64 0, i64 0
  %1289 = load i32*, i32** @nfsd_suppattrs, align 8
  %1290 = load i32, i32* %33, align 4
  %1291 = sext i32 %1290 to i64
  %1292 = getelementptr inbounds i32, i32* %1289, i64 %1291
  %1293 = load i32, i32* %1292, align 4
  %1294 = call i32 @memcpy(i32* %1288, i32 %1293, i32 12)
  %1295 = load i32, i32* @NFSD_SUPPATTR_EXCLCREAT_WORD0, align 4
  %1296 = getelementptr inbounds [3 x i32], [3 x i32]* %40, i64 0, i64 0
  %1297 = load i32, i32* %1296, align 4
  %1298 = and i32 %1297, %1295
  store i32 %1298, i32* %1296, align 4
  %1299 = load i32, i32* @NFSD_SUPPATTR_EXCLCREAT_WORD1, align 4
  %1300 = getelementptr inbounds [3 x i32], [3 x i32]* %40, i64 0, i64 1
  %1301 = load i32, i32* %1300, align 4
  %1302 = and i32 %1301, %1299
  store i32 %1302, i32* %1300, align 4
  %1303 = load i32, i32* @NFSD_SUPPATTR_EXCLCREAT_WORD2, align 4
  %1304 = getelementptr inbounds [3 x i32], [3 x i32]* %40, i64 0, i64 2
  %1305 = load i32, i32* %1304, align 4
  %1306 = and i32 %1305, %1303
  store i32 %1306, i32* %1304, align 4
  %1307 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1308 = getelementptr inbounds [3 x i32], [3 x i32]* %40, i64 0, i64 0
  %1309 = load i32, i32* %1308, align 4
  %1310 = getelementptr inbounds [3 x i32], [3 x i32]* %40, i64 0, i64 1
  %1311 = load i32, i32* %1310, align 4
  %1312 = getelementptr inbounds [3 x i32], [3 x i32]* %40, i64 0, i64 2
  %1313 = load i32, i32* %1312, align 4
  %1314 = call i64 @nfsd4_encode_bitmap(%struct.xdr_stream* %1307, i32 %1309, i32 %1311, i32 %1313)
  store i64 %1314, i64* %28, align 8
  %1315 = load i64, i64* %28, align 8
  %1316 = icmp ne i64 %1315, 0
  br i1 %1316, label %1317, label %1318

1317:                                             ; preds = %1287
  br label %1364

1318:                                             ; preds = %1287
  br label %1319

1319:                                             ; preds = %1318, %1282
  %1320 = load i32, i32* %17, align 4
  %1321 = load i32, i32* @FATTR4_WORD2_CHANGE_ATTR_TYPE, align 4
  %1322 = and i32 %1320, %1321
  %1323 = icmp ne i32 %1322, 0
  br i1 %1323, label %1324, label %1348

1324:                                             ; preds = %1319
  %1325 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1326 = call i64* @xdr_reserve_space(%struct.xdr_stream* %1325, i32 4)
  store i64* %1326, i64** %21, align 8
  %1327 = load i64*, i64** %21, align 8
  %1328 = icmp ne i64* %1327, null
  br i1 %1328, label %1330, label %1329

1329:                                             ; preds = %1324
  br label %1387

1330:                                             ; preds = %1324
  %1331 = load %struct.dentry*, %struct.dentry** %11, align 8
  %1332 = call i32 @d_inode(%struct.dentry* %1331)
  %1333 = call i64 @IS_I_VERSION(i32 %1332)
  %1334 = icmp ne i64 %1333, 0
  br i1 %1334, label %1335, label %1341

1335:                                             ; preds = %1330
  %1336 = load i32, i32* @NFS4_CHANGE_TYPE_IS_MONOTONIC_INCR, align 4
  %1337 = call i8* @cpu_to_be32(i32 %1336)
  %1338 = ptrtoint i8* %1337 to i64
  %1339 = load i64*, i64** %21, align 8
  %1340 = getelementptr inbounds i64, i64* %1339, i32 1
  store i64* %1340, i64** %21, align 8
  store i64 %1338, i64* %1339, align 8
  br label %1347

1341:                                             ; preds = %1330
  %1342 = load i32, i32* @NFS4_CHANGE_TYPE_IS_TIME_METADATA, align 4
  %1343 = call i8* @cpu_to_be32(i32 %1342)
  %1344 = ptrtoint i8* %1343 to i64
  %1345 = load i64*, i64** %21, align 8
  %1346 = getelementptr inbounds i64, i64* %1345, i32 1
  store i64* %1346, i64** %21, align 8
  store i64 %1344, i64* %1345, align 8
  br label %1347

1347:                                             ; preds = %1341, %1335
  br label %1348

1348:                                             ; preds = %1347, %1319
  %1349 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1350 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %1349, i32 0, i32 0
  %1351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1350, align 8
  %1352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1351, i32 0, i32 0
  %1353 = load i32, i32* %1352, align 4
  %1354 = load i32, i32* %23, align 4
  %1355 = sub nsw i32 %1353, %1354
  %1356 = sub nsw i32 %1355, 4
  %1357 = call i64 @htonl(i32 %1356)
  store i64 %1357, i64* %24, align 8
  %1358 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1359 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %1358, i32 0, i32 0
  %1360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1359, align 8
  %1361 = load i32, i32* %23, align 4
  %1362 = call i32 @write_bytes_to_xdr_buf(%struct.TYPE_11__* %1360, i32 %1361, i64* %24, i32 4)
  %1363 = load i64, i64* @nfs_ok, align 8
  store i64 %1363, i64* %28, align 8
  br label %1364

1364:                                             ; preds = %1387, %1384, %1348, %1317, %1040, %1025, %850, %646, %321, %199, %182, %155, %144, %93
  %1365 = load %struct.nfs4_acl*, %struct.nfs4_acl** %30, align 8
  %1366 = bitcast %struct.nfs4_acl* %1365 to %struct.svc_fh*
  %1367 = call i32 @kfree(%struct.svc_fh* %1366)
  %1368 = load %struct.svc_fh*, %struct.svc_fh** %19, align 8
  %1369 = icmp ne %struct.svc_fh* %1368, null
  br i1 %1369, label %1370, label %1375

1370:                                             ; preds = %1364
  %1371 = load %struct.svc_fh*, %struct.svc_fh** %19, align 8
  %1372 = call i32 @fh_put(%struct.svc_fh* %1371)
  %1373 = load %struct.svc_fh*, %struct.svc_fh** %19, align 8
  %1374 = call i32 @kfree(%struct.svc_fh* %1373)
  br label %1375

1375:                                             ; preds = %1370, %1364
  %1376 = load i64, i64* %28, align 8
  %1377 = icmp ne i64 %1376, 0
  br i1 %1377, label %1378, label %1382

1378:                                             ; preds = %1375
  %1379 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %1380 = load i32, i32* %22, align 4
  %1381 = call i32 @xdr_truncate_encode(%struct.xdr_stream* %1379, i32 %1380)
  br label %1382

1382:                                             ; preds = %1378, %1375
  %1383 = load i64, i64* %28, align 8
  ret i64 %1383

1384:                                             ; preds = %1274, %187, %126, %101
  %1385 = load i32, i32* %29, align 4
  %1386 = call i64 @nfserrno(i32 %1385)
  store i64 %1386, i64* %28, align 8
  br label %1364

1387:                                             ; preds = %1329, %1256, %1229, %1204, %1188, %1163, %1144, %1122, %1100, %1078, %1052, %1004, %988, %968, %951, %934, %916, %900, %878, %862, %831, %814, %797, %781, %760, %739, %723, %707, %691, %663, %615, %587, %576, %556, %537, %521, %453, %437, %421, %405, %389, %372, %339, %313, %278, %255, %210
  %1388 = load i64, i64* @nfserr_resource, align 8
  store i64 %1388, i64* %28, align 8
  br label %1364
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nfsd_attrs_supported(i32, i32*) #1

declare dso_local i64 @fattr_handle_absent_fs(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @vfs_getattr(%struct.path*, %struct.kstat*, i32, i32) #1

declare dso_local i32 @vfs_statfs(%struct.path*, %struct.kstatfs*) #1

declare dso_local %struct.svc_fh* @kmalloc(i32, i32) #1

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i64 @fh_compose(%struct.svc_fh*, %struct.svc_export*, %struct.dentry*, i32*) #1

declare dso_local i32 @nfsd4_get_nfs4_acl(%struct.svc_rqst*, %struct.dentry*, %struct.svc_fh**) #1

declare dso_local i64 @nfsd4_encode_bitmap(%struct.xdr_stream*, i32, i32, i32) #1

declare dso_local i64* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @IS_POSIXACL(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @nfs4_file_type(i32) #1

declare dso_local i64* @encode_change(i64*, %struct.kstat*, i32, %struct.svc_export*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64* @xdr_encode_hyper(i64*, i32) #1

declare dso_local i32 @fsid_source(%struct.svc_fh*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64* @xdr_encode_opaque_fixed(i64*, i32, i32) #1

declare dso_local i64 @nfsd4_encode_aclname(%struct.xdr_stream*, %struct.svc_rqst*, %struct.nfs4_ace*) #1

declare dso_local i64* @xdr_encode_opaque(i64*, i32*, i32) #1

declare dso_local i64 @nfsd4_encode_fs_locations(%struct.xdr_stream*, %struct.svc_rqst*, %struct.svc_export*) #1

declare dso_local i64 @svc_max_payload(%struct.svc_rqst*) #1

declare dso_local i64 @nfsd4_encode_user(%struct.xdr_stream*, %struct.svc_rqst*, i32) #1

declare dso_local i64 @nfsd4_encode_group(%struct.xdr_stream*, %struct.svc_rqst*, i32) #1

declare dso_local i64* @encode_time_delta(i64*, i32) #1

declare dso_local i32 @get_parent_attributes(%struct.svc_export*, %struct.kstat*) #1

declare dso_local i64 @IS_I_VERSION(i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @write_bytes_to_xdr_buf(%struct.TYPE_11__*, i32, i64*, i32) #1

declare dso_local i32 @kfree(%struct.svc_fh*) #1

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

declare dso_local i32 @xdr_truncate_encode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
