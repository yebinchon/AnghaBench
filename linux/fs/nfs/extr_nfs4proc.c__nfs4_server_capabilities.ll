; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_server_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_server_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32*, i32, i32*, i32*, i32*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs4_server_caps_arg = type { i32*, i32, %struct.nfs_fh* }
%struct.nfs4_server_caps_res = type { i32*, i32, i64, i64, i32*, i32, i32 }
%struct.rpc_message = type { %struct.nfs4_server_caps_res*, %struct.nfs4_server_caps_arg*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_SERVER_CAPS = common dso_local global i64 0, align 8
@FATTR4_WORD0_SUPPORTED_ATTRS = common dso_local global i32 0, align 4
@FATTR4_WORD0_FH_EXPIRE_TYPE = common dso_local global i32 0, align 4
@FATTR4_WORD0_LINK_SUPPORT = common dso_local global i32 0, align 4
@FATTR4_WORD0_SYMLINK_SUPPORT = common dso_local global i32 0, align 4
@FATTR4_WORD0_ACLSUPPORT = common dso_local global i32 0, align 4
@FATTR4_WORD2_SUPPATTR_EXCLCREAT = common dso_local global i32 0, align 4
@FATTR4_WORD1_NFS40_MASK = common dso_local global i32 0, align 4
@FATTR4_WORD2_NFS41_MASK = common dso_local global i32 0, align 4
@FATTR4_WORD2_NFS42_MASK = common dso_local global i32 0, align 4
@NFS_CAP_ACLS = common dso_local global i32 0, align 4
@NFS_CAP_HARDLINKS = common dso_local global i32 0, align 4
@NFS_CAP_SYMLINKS = common dso_local global i32 0, align 4
@NFS_CAP_FILEID = common dso_local global i32 0, align 4
@NFS_CAP_MODE = common dso_local global i32 0, align 4
@NFS_CAP_NLINK = common dso_local global i32 0, align 4
@NFS_CAP_OWNER = common dso_local global i32 0, align 4
@NFS_CAP_OWNER_GROUP = common dso_local global i32 0, align 4
@NFS_CAP_ATIME = common dso_local global i32 0, align 4
@NFS_CAP_CTIME = common dso_local global i32 0, align 4
@NFS_CAP_MTIME = common dso_local global i32 0, align 4
@NFS_CAP_SECURITY_LABEL = common dso_local global i32 0, align 4
@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@ACL4_SUPPORT_ALLOW_ACL = common dso_local global i32 0, align 4
@FATTR4_WORD0_FILEID = common dso_local global i32 0, align 4
@FATTR4_WORD1_MODE = common dso_local global i32 0, align 4
@FATTR4_WORD1_NUMLINKS = common dso_local global i32 0, align 4
@FATTR4_WORD1_OWNER = common dso_local global i32 0, align 4
@FATTR4_WORD1_OWNER_GROUP = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_ACCESS = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_METADATA = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_MODIFY = common dso_local global i32 0, align 4
@FATTR4_WORD2_SECURITY_LABEL = common dso_local global i32 0, align 4
@FATTR4_WORD0_CHANGE = common dso_local global i32 0, align 4
@FATTR4_WORD0_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*)* @_nfs4_server_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_server_capabilities(%struct.nfs_server* %0, %struct.nfs_fh* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs_fh*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs4_server_caps_arg, align 8
  %8 = alloca %struct.nfs4_server_caps_res, align 8
  %9 = alloca %struct.rpc_message, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %4, align 8
  %12 = bitcast [3 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 12, i1 false)
  %13 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %14 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %13, i32 0, i32 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = getelementptr inbounds %struct.nfs4_server_caps_arg, %struct.nfs4_server_caps_arg* %7, i32 0, i32 0
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32* %19, i32** %18, align 8
  %20 = getelementptr inbounds %struct.nfs4_server_caps_arg, %struct.nfs4_server_caps_arg* %7, i32 0, i32 1
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.nfs4_server_caps_arg, %struct.nfs4_server_caps_arg* %7, i32 0, i32 2
  %22 = load %struct.nfs_fh*, %struct.nfs_fh** %4, align 8
  store %struct.nfs_fh* %22, %struct.nfs_fh** %21, align 8
  %23 = bitcast %struct.nfs4_server_caps_res* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 48, i1 false)
  %24 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 0
  store %struct.nfs4_server_caps_res* %8, %struct.nfs4_server_caps_res** %24, align 8
  %25 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 1
  store %struct.nfs4_server_caps_arg* %7, %struct.nfs4_server_caps_arg** %25, align 8
  %26 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 2
  %27 = load i32*, i32** @nfs4_procedures, align 8
  %28 = load i64, i64* @NFSPROC4_CLNT_SERVER_CAPS, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %26, align 8
  %30 = load i32, i32* @FATTR4_WORD0_SUPPORTED_ATTRS, align 4
  %31 = load i32, i32* @FATTR4_WORD0_FH_EXPIRE_TYPE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FATTR4_WORD0_LINK_SUPPORT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FATTR4_WORD0_SYMLINK_SUPPORT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @FATTR4_WORD0_ACLSUPPORT, align 4
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @FATTR4_WORD2_SUPPATTR_EXCLCREAT, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %2
  %46 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %47 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %50 = getelementptr inbounds %struct.nfs4_server_caps_arg, %struct.nfs4_server_caps_arg* %7, i32 0, i32 1
  %51 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 6
  %52 = call i32 @nfs4_call_sync(i32 %48, %struct.nfs_server* %49, %struct.rpc_message* %9, i32* %50, i32* %51, i32 0)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %348

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %81 [
    i32 0, label %57
    i32 1, label %67
    i32 2, label %74
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* @FATTR4_WORD1_NFS40_MASK, align 4
  %59 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %58
  store i32 %63, i32* %61, align 4
  %64 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 0, i32* %66, align 4
  br label %81

67:                                               ; preds = %55
  %68 = load i32, i32* @FATTR4_WORD2_NFS41_MASK, align 4
  %69 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %68
  store i32 %73, i32* %71, align 4
  br label %81

74:                                               ; preds = %55
  %75 = load i32, i32* @FATTR4_WORD2_NFS42_MASK, align 4
  %76 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %75
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %74, %55, %67, %57
  %82 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %83 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @memcpy(i32* %84, i32* %86, i32 8)
  %88 = load i32, i32* @NFS_CAP_ACLS, align 4
  %89 = load i32, i32* @NFS_CAP_HARDLINKS, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @NFS_CAP_SYMLINKS, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @NFS_CAP_FILEID, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @NFS_CAP_MODE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @NFS_CAP_NLINK, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @NFS_CAP_OWNER, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @NFS_CAP_OWNER_GROUP, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @NFS_CAP_ATIME, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @NFS_CAP_CTIME, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @NFS_CAP_MTIME, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @NFS_CAP_SECURITY_LABEL, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %113 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %81
  %124 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ACL4_SUPPORT_ALLOW_ACL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load i32, i32* @NFS_CAP_ACLS, align 4
  %131 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %132 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %129, %123, %81
  %136 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load i32, i32* @NFS_CAP_HARDLINKS, align 4
  %141 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %142 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %139, %135
  %146 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i32, i32* @NFS_CAP_SYMLINKS, align 4
  %151 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %152 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %145
  %156 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @FATTR4_WORD0_FILEID, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %155
  %164 = load i32, i32* @NFS_CAP_FILEID, align 4
  %165 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %166 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %163, %155
  %170 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @FATTR4_WORD1_MODE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %169
  %178 = load i32, i32* @NFS_CAP_MODE, align 4
  %179 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %180 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %177, %169
  %184 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @FATTR4_WORD1_NUMLINKS, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %183
  %192 = load i32, i32* @NFS_CAP_NLINK, align 4
  %193 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %194 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %191, %183
  %198 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @FATTR4_WORD1_OWNER, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %197
  %206 = load i32, i32* @NFS_CAP_OWNER, align 4
  %207 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %208 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %205, %197
  %212 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @FATTR4_WORD1_OWNER_GROUP, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %211
  %220 = load i32, i32* @NFS_CAP_OWNER_GROUP, align 4
  %221 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %222 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 8
  br label %225

225:                                              ; preds = %219, %211
  %226 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @FATTR4_WORD1_TIME_ACCESS, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %225
  %234 = load i32, i32* @NFS_CAP_ATIME, align 4
  %235 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %236 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %233, %225
  %240 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @FATTR4_WORD1_TIME_METADATA, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %239
  %248 = load i32, i32* @NFS_CAP_CTIME, align 4
  %249 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %250 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  br label %253

253:                                              ; preds = %247, %239
  %254 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @FATTR4_WORD1_TIME_MODIFY, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %253
  %262 = load i32, i32* @NFS_CAP_MTIME, align 4
  %263 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %264 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 8
  br label %267

267:                                              ; preds = %261, %253
  %268 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %269 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @memcpy(i32* %270, i32* %272, i32 8)
  %274 = load i32, i32* @FATTR4_WORD2_SECURITY_LABEL, align 4
  %275 = xor i32 %274, -1
  %276 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %277 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 2
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, %275
  store i32 %281, i32* %279, align 4
  %282 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %283 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %282, i32 0, i32 3
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = call i32 @memcpy(i32* %284, i32* %286, i32 8)
  %288 = load i32, i32* @FATTR4_WORD0_CHANGE, align 4
  %289 = load i32, i32* @FATTR4_WORD0_SIZE, align 4
  %290 = or i32 %288, %289
  %291 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %292 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %295, %290
  store i32 %296, i32* %294, align 4
  %297 = load i32, i32* @FATTR4_WORD1_TIME_METADATA, align 4
  %298 = load i32, i32* @FATTR4_WORD1_TIME_MODIFY, align 4
  %299 = or i32 %297, %298
  %300 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %301 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %300, i32 0, i32 3
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  %304 = load i32, i32* %303, align 4
  %305 = and i32 %304, %299
  store i32 %305, i32* %303, align 4
  %306 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %307 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %306, i32 0, i32 3
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 2
  store i32 0, i32* %309, align 4
  store i32 0, i32* %11, align 4
  br label %310

310:                                              ; preds = %330, %267
  %311 = load i32, i32* %11, align 4
  %312 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 4
  %313 = load i32*, i32** %312, align 8
  %314 = call i32 @ARRAY_SIZE(i32* %313)
  %315 = icmp slt i32 %311, %314
  br i1 %315, label %316, label %333

316:                                              ; preds = %310
  %317 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %11, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 4
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %11, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, %322
  store i32 %329, i32* %327, align 4
  br label %330

330:                                              ; preds = %316
  %331 = load i32, i32* %11, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %11, align 4
  br label %310

333:                                              ; preds = %310
  %334 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %335 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %334, i32 0, i32 4
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 4
  %338 = load i32*, i32** %337, align 8
  %339 = call i32 @memcpy(i32* %336, i32* %338, i32 8)
  %340 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %343 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %342, i32 0, i32 5
  store i32 %341, i32* %343, align 8
  %344 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %8, i32 0, i32 5
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %347 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %346, i32 0, i32 6
  store i32 %345, i32* %347, align 4
  br label %348

348:                                              ; preds = %333, %45
  %349 = load i32, i32* %10, align 4
  ret i32 %349
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
