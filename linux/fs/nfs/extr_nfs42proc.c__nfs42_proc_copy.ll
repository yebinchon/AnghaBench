; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c__nfs42_proc_copy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c__nfs42_proc_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.nfs_lock_context = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.nfs42_copy_args = type { i64, i64, i32, i32, i32, i64, i64 }
%struct.nfs42_copy_res = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.rpc_message = type { %struct.nfs42_copy_res*, %struct.nfs42_copy_args*, i32* }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32, i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_COPY = common dso_local global i64 0, align 8
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@NFS_CLNT_DST_SSC_COPY_STATE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i64 0, align 8
@NFS_CAP_COPY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@NFS_FILE_SYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.nfs_lock_context*, %struct.file*, %struct.nfs_lock_context*, %struct.nfs42_copy_args*, %struct.nfs42_copy_res*)* @_nfs42_proc_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_nfs42_proc_copy(%struct.file* %0, %struct.nfs_lock_context* %1, %struct.file* %2, %struct.nfs_lock_context* %3, %struct.nfs42_copy_args* %4, %struct.nfs42_copy_res* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.nfs_lock_context*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.nfs_lock_context*, align 8
  %12 = alloca %struct.nfs42_copy_args*, align 8
  %13 = alloca %struct.nfs42_copy_res*, align 8
  %14 = alloca %struct.rpc_message, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.nfs_server*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.nfs_lock_context* %1, %struct.nfs_lock_context** %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store %struct.nfs_lock_context* %3, %struct.nfs_lock_context** %11, align 8
  store %struct.nfs42_copy_args* %4, %struct.nfs42_copy_args** %12, align 8
  store %struct.nfs42_copy_res* %5, %struct.nfs42_copy_res** %13, align 8
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 0
  %22 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  store %struct.nfs42_copy_res* %22, %struct.nfs42_copy_res** %21, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 1
  %24 = load %struct.nfs42_copy_args*, %struct.nfs42_copy_args** %12, align 8
  store %struct.nfs42_copy_args* %24, %struct.nfs42_copy_args** %23, align 8
  %25 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 2
  %26 = load i32*, i32** @nfs4_procedures, align 8
  %27 = load i64, i64* @NFSPROC4_CLNT_COPY, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %25, align 8
  %29 = load %struct.file*, %struct.file** %10, align 8
  %30 = call %struct.inode* @file_inode(%struct.file* %29)
  store %struct.inode* %30, %struct.inode** %15, align 8
  %31 = load %struct.inode*, %struct.inode** %15, align 8
  %32 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %31)
  store %struct.nfs_server* %32, %struct.nfs_server** %16, align 8
  %33 = load %struct.nfs42_copy_args*, %struct.nfs42_copy_args** %12, align 8
  %34 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %17, align 8
  %36 = load %struct.nfs42_copy_args*, %struct.nfs42_copy_args** %12, align 8
  %37 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %18, align 8
  %39 = load %struct.nfs42_copy_args*, %struct.nfs42_copy_args** %12, align 8
  %40 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %19, align 8
  %42 = load %struct.nfs42_copy_args*, %struct.nfs42_copy_args** %12, align 8
  %43 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %42, i32 0, i32 2
  %44 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %9, align 8
  %45 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %9, align 8
  %48 = load i32, i32* @FMODE_READ, align 4
  %49 = call i64 @nfs4_set_rw_stateid(i32* %43, %struct.TYPE_12__* %46, %struct.nfs_lock_context* %47, i32 %48)
  store i64 %49, i64* %20, align 8
  %50 = load i64, i64* %20, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %6
  %53 = load i64, i64* %20, align 8
  store i64 %53, i64* %7, align 8
  br label %238

54:                                               ; preds = %6
  %55 = load %struct.file*, %struct.file** %8, align 8
  %56 = call %struct.inode* @file_inode(%struct.file* %55)
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* %19, align 8
  %62 = add nsw i64 %60, %61
  %63 = sub nsw i64 %62, 1
  %64 = call i64 @nfs_filemap_write_and_wait_range(i32 %58, i64 %59, i64 %63)
  store i64 %64, i64* %20, align 8
  %65 = load i64, i64* %20, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i64, i64* %20, align 8
  store i64 %68, i64* %7, align 8
  br label %238

69:                                               ; preds = %54
  %70 = load %struct.nfs42_copy_args*, %struct.nfs42_copy_args** %12, align 8
  %71 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %70, i32 0, i32 4
  %72 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %11, align 8
  %73 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %11, align 8
  %76 = load i32, i32* @FMODE_WRITE, align 4
  %77 = call i64 @nfs4_set_rw_stateid(i32* %71, %struct.TYPE_12__* %74, %struct.nfs_lock_context* %75, i32 %76)
  store i64 %77, i64* %20, align 8
  %78 = load i64, i64* %20, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i64, i64* %20, align 8
  store i64 %81, i64* %7, align 8
  br label %238

82:                                               ; preds = %69
  %83 = load %struct.inode*, %struct.inode** %15, align 8
  %84 = call i64 @nfs_sync_inode(%struct.inode* %83)
  store i64 %84, i64* %20, align 8
  %85 = load i64, i64* %20, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i64, i64* %20, align 8
  store i64 %88, i64* %7, align 8
  br label %238

89:                                               ; preds = %82
  %90 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  %91 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %92, align 8
  %93 = load %struct.nfs42_copy_args*, %struct.nfs42_copy_args** %12, align 8
  %94 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %89
  %98 = load i32, i32* @GFP_NOFS, align 4
  %99 = call %struct.TYPE_13__* @kzalloc(i32 4, i32 %98)
  %100 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  %101 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %102, align 8
  %103 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  %104 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = icmp ne %struct.TYPE_13__* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %97
  %109 = load i64, i64* @ENOMEM, align 8
  %110 = sub i64 0, %109
  store i64 %110, i64* %7, align 8
  br label %238

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111, %89
  %113 = load i32, i32* @NFS_CLNT_DST_SSC_COPY_STATE, align 4
  %114 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %11, align 8
  %115 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %114, i32 0, i32 0
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = call i32 @set_bit(i32 %113, i32* %119)
  %121 = load %struct.nfs_server*, %struct.nfs_server** %16, align 8
  %122 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.nfs_server*, %struct.nfs_server** %16, align 8
  %125 = load %struct.nfs42_copy_args*, %struct.nfs42_copy_args** %12, align 8
  %126 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %125, i32 0, i32 3
  %127 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  %128 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %127, i32 0, i32 3
  %129 = call i64 @nfs4_call_sync(i32 %123, %struct.nfs_server* %124, %struct.rpc_message* %14, i32* %126, i32* %128, i32 0)
  store i64 %129, i64* %20, align 8
  %130 = load i64, i64* %20, align 8
  %131 = load i64, i64* @ENOTSUPP, align 8
  %132 = sub i64 0, %131
  %133 = icmp eq i64 %130, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %112
  %135 = load i32, i32* @NFS_CAP_COPY, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.nfs_server*, %struct.nfs_server** %16, align 8
  %138 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %134, %112
  %142 = load i64, i64* %20, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %225

145:                                              ; preds = %141
  %146 = load %struct.nfs42_copy_args*, %struct.nfs42_copy_args** %12, align 8
  %147 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %145
  %151 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  %152 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  %156 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = call i64 @nfs_write_verifier_cmp(i32* %154, i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %150
  %163 = load i64, i64* @EAGAIN, align 8
  %164 = sub i64 0, %163
  store i64 %164, i64* %20, align 8
  br label %225

165:                                              ; preds = %150, %145
  %166 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  %167 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %183, label %170

170:                                              ; preds = %165
  %171 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  %172 = load %struct.nfs_server*, %struct.nfs_server** %16, align 8
  %173 = load %struct.file*, %struct.file** %8, align 8
  %174 = load %struct.file*, %struct.file** %10, align 8
  %175 = load %struct.nfs42_copy_args*, %struct.nfs42_copy_args** %12, align 8
  %176 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %175, i32 0, i32 2
  %177 = call i64 @handle_async_copy(%struct.nfs42_copy_res* %171, %struct.nfs_server* %172, %struct.file* %173, %struct.file* %174, i32* %176)
  store i64 %177, i64* %20, align 8
  %178 = load i64, i64* %20, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %170
  %181 = load i64, i64* %20, align 8
  store i64 %181, i64* %7, align 8
  br label %238

182:                                              ; preds = %170
  br label %183

183:                                              ; preds = %182, %165
  %184 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  %185 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load %struct.nfs42_copy_args*, %struct.nfs42_copy_args** %12, align 8
  %190 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %211, label %193

193:                                              ; preds = %188, %183
  %194 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  %195 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @NFS_FILE_SYNC, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %211

201:                                              ; preds = %193
  %202 = load %struct.file*, %struct.file** %10, align 8
  %203 = load i64, i64* %18, align 8
  %204 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  %205 = call i64 @process_copy_commit(%struct.file* %202, i64 %203, %struct.nfs42_copy_res* %204)
  store i64 %205, i64* %20, align 8
  %206 = load i64, i64* %20, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %201
  %209 = load i64, i64* %20, align 8
  store i64 %209, i64* %7, align 8
  br label %238

210:                                              ; preds = %201
  br label %211

211:                                              ; preds = %210, %193, %188
  %212 = load %struct.inode*, %struct.inode** %15, align 8
  %213 = load i64, i64* %18, align 8
  %214 = load i64, i64* %18, align 8
  %215 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  %216 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = add i64 %214, %218
  %220 = call i32 @truncate_pagecache_range(%struct.inode* %212, i64 %213, i64 %219)
  %221 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  %222 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %20, align 8
  br label %225

225:                                              ; preds = %211, %162, %144
  %226 = load %struct.nfs42_copy_args*, %struct.nfs42_copy_args** %12, align 8
  %227 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %225
  %231 = load %struct.nfs42_copy_res*, %struct.nfs42_copy_res** %13, align 8
  %232 = getelementptr inbounds %struct.nfs42_copy_res, %struct.nfs42_copy_res* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %233, align 8
  %235 = call i32 @kfree(%struct.TYPE_13__* %234)
  br label %236

236:                                              ; preds = %230, %225
  %237 = load i64, i64* %20, align 8
  store i64 %237, i64* %7, align 8
  br label %238

238:                                              ; preds = %236, %208, %180, %108, %87, %80, %67, %52
  %239 = load i64, i64* %7, align 8
  ret i64 %239
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i64 @nfs4_set_rw_stateid(i32*, %struct.TYPE_12__*, %struct.nfs_lock_context*, i32) #1

declare dso_local i64 @nfs_filemap_write_and_wait_range(i32, i64, i64) #1

declare dso_local i64 @nfs_sync_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_13__* @kzalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

declare dso_local i64 @nfs_write_verifier_cmp(i32*, i32*) #1

declare dso_local i64 @handle_async_copy(%struct.nfs42_copy_res*, %struct.nfs_server*, %struct.file*, %struct.file*, i32*) #1

declare dso_local i64 @process_copy_commit(%struct.file*, i64, %struct.nfs42_copy_res*) #1

declare dso_local i32 @truncate_pagecache_range(%struct.inode*, i64, i64) #1

declare dso_local i32 @kfree(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
