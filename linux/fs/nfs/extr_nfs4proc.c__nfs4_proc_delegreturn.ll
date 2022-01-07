; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_delegreturn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_delegreturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.cred = type { i32 }
%struct.nfs4_delegreturndata = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32*, i32, %struct.nfs_server*, i32 }
%struct.nfs_server = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32, i32*, i32*, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_9__, i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_message = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.cred*, i32* }
%struct.rpc_task_setup = type { %struct.nfs4_delegreturndata*, i32, i32, i32*, %struct.rpc_message* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_DELEGRETURN = common dso_local global i64 0, align 8
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@nfs4_delegreturn_ops = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFS_SP4_MACH_CRED_CLEANUP = common dso_local global i32 0, align 4
@NFS4ERR_NOMATCHING_LAYOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.cred*, i32*, i32)* @_nfs4_proc_delegreturn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_delegreturn(%struct.inode* %0, %struct.cred* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs4_delegreturndata*, align 8
  %11 = alloca %struct.nfs_server*, align 8
  %12 = alloca %struct.rpc_task*, align 8
  %13 = alloca %struct.rpc_message, align 8
  %14 = alloca %struct.rpc_task_setup, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.cred* %1, %struct.cred** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %16)
  store %struct.nfs_server* %17, %struct.nfs_server** %11, align 8
  %18 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %18, align 8
  %19 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %19, align 8
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 2
  %21 = load %struct.cred*, %struct.cred** %7, align 8
  store %struct.cred* %21, %struct.cred** %20, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 3
  %23 = load i32*, i32** @nfs4_procedures, align 8
  %24 = load i64, i64* @NFSPROC4_CLNT_DELEGRETURN, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 0
  store %struct.nfs4_delegreturndata* null, %struct.nfs4_delegreturndata** %26, align 8
  %27 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 1
  %28 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %29 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 8
  %31 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 2
  %32 = load i32, i32* @RPC_TASK_ASYNC, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 3
  store i32* @nfs4_delegreturn_ops, i32** %33, align 8
  %34 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 4
  store %struct.rpc_message* %13, %struct.rpc_message** %34, align 8
  store i32 0, i32* %15, align 4
  %35 = load i32, i32* @GFP_NOFS, align 4
  %36 = call %struct.nfs4_delegreturndata* @kzalloc(i32 136, i32 %35)
  store %struct.nfs4_delegreturndata* %36, %struct.nfs4_delegreturndata** %10, align 8
  %37 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %38 = icmp eq %struct.nfs4_delegreturndata* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %4
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %204

42:                                               ; preds = %4
  %43 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %44 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  %46 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %47 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  %49 = call i32 @nfs4_init_sequence(i32* %45, i32* %48, i32 1, i32 0)
  %50 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %51 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NFS_SP4_MACH_CRED_CLEANUP, align 4
  %54 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 1
  %55 = call i32 @nfs4_state_protect(i32 %52, i32 %53, i32* %54, %struct.rpc_message* %13)
  %56 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %57 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %56, i32 0, i32 8
  %58 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %59 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  store i32* %57, i32** %60, align 8
  %61 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %62 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %61, i32 0, i32 7
  %63 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %64 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i32* %62, i32** %65, align 8
  %66 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %67 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %70 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  %72 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %73 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %72, i32 0, i32 8
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = call i32 @NFS_FH(%struct.inode* %74)
  %76 = call i32 @nfs_copy_fh(i32* %73, i32 %75)
  %77 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %78 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %77, i32 0, i32 7
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @nfs4_stateid_copy(i32* %78, i32* %79)
  %81 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %82 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %81, i32 0, i32 6
  %83 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %84 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i32* %82, i32** %85, align 8
  %86 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %87 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %88 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  store %struct.nfs_server* %86, %struct.nfs_server** %89, align 8
  %90 = load i32, i32* @NFS4ERR_NOMATCHING_LAYOUT, align 4
  %91 = sub nsw i32 0, %90
  %92 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %93 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  %95 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %96 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %99 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i32* %97, i32** %101, align 8
  %102 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %103 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @nfs_fattr_init(i32* %105)
  %107 = load i32, i32* @jiffies, align 4
  %108 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %109 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  %110 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %111 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %114 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %117 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load %struct.cred*, %struct.cred** %7, align 8
  %120 = call i32 @pnfs_roc(%struct.inode* %112, %struct.TYPE_9__* %115, i32* %118, %struct.cred* %119)
  %121 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %122 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  %124 = load %struct.inode*, %struct.inode** %6, align 8
  %125 = call i64 @nfs_igrab_and_active(%struct.inode* %124)
  %126 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %127 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %126, i32 0, i32 4
  store i64 %125, i64* %127, align 8
  %128 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %129 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %42
  %133 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %134 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %132
  %139 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %140 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %143 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %144, align 8
  %145 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %146 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %149 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  store i32* %147, i32** %150, align 8
  br label %151

151:                                              ; preds = %138, %132
  br label %170

152:                                              ; preds = %42
  %153 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %154 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %152
  %159 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %160 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %163 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = call i32 @pnfs_roc_release(%struct.TYPE_9__* %161, i32* %164, i32 0)
  %166 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %167 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  store i32 0, i32* %168, align 8
  br label %169

169:                                              ; preds = %158, %152
  br label %170

170:                                              ; preds = %169, %151
  %171 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %172 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 0
  store %struct.nfs4_delegreturndata* %171, %struct.nfs4_delegreturndata** %172, align 8
  %173 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %174 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 1
  store %struct.TYPE_7__* %174, %struct.TYPE_7__** %175, align 8
  %176 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %177 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %13, i32 0, i32 0
  store %struct.TYPE_8__* %177, %struct.TYPE_8__** %178, align 8
  %179 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %14)
  store %struct.rpc_task* %179, %struct.rpc_task** %12, align 8
  %180 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %181 = call i64 @IS_ERR(%struct.rpc_task* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %170
  %184 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %185 = call i32 @PTR_ERR(%struct.rpc_task* %184)
  store i32 %185, i32* %5, align 4
  br label %204

186:                                              ; preds = %170
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %186
  br label %200

190:                                              ; preds = %186
  %191 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %192 = call i32 @rpc_wait_for_completion_task(%struct.rpc_task* %191)
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %200

196:                                              ; preds = %190
  %197 = load %struct.nfs4_delegreturndata*, %struct.nfs4_delegreturndata** %10, align 8
  %198 = getelementptr inbounds %struct.nfs4_delegreturndata, %struct.nfs4_delegreturndata* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %15, align 4
  br label %200

200:                                              ; preds = %196, %195, %189
  %201 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %202 = call i32 @rpc_put_task(%struct.rpc_task* %201)
  %203 = load i32, i32* %15, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %200, %183, %39
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local %struct.nfs4_delegreturndata* @kzalloc(i32, i32) #1

declare dso_local i32 @nfs4_init_sequence(i32*, i32*, i32, i32) #1

declare dso_local i32 @nfs4_state_protect(i32, i32, i32*, %struct.rpc_message*) #1

declare dso_local i32 @nfs_copy_fh(i32*, i32) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @nfs_fattr_init(i32*) #1

declare dso_local i32 @pnfs_roc(%struct.inode*, %struct.TYPE_9__*, i32*, %struct.cred*) #1

declare dso_local i64 @nfs_igrab_and_active(%struct.inode*) #1

declare dso_local i32 @pnfs_roc_release(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_wait_for_completion_task(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
