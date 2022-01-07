; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c__nfs42_proc_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c__nfs42_proc_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_message = type { %struct.nfs42_falloc_res*, %struct.nfs42_falloc_args* }
%struct.nfs42_falloc_res = type { i32, i32, %struct.nfs_server* }
%struct.nfs_server = type { i32, i32 }
%struct.nfs42_falloc_args = type { i32, i32, i32, i32, i32, i32 }
%struct.file = type { i32 }
%struct.nfs_lock_context = type { i32 }
%struct.inode = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_message*, %struct.file*, %struct.nfs_lock_context*, i32, i32)* @_nfs42_proc_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs42_proc_fallocate(%struct.rpc_message* %0, %struct.file* %1, %struct.nfs_lock_context* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_message*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.nfs_lock_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.nfs_server*, align 8
  %14 = alloca %struct.nfs42_falloc_args, align 4
  %15 = alloca %struct.nfs42_falloc_res, align 8
  %16 = alloca i32, align 4
  store %struct.rpc_message* %0, %struct.rpc_message** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store %struct.nfs_lock_context* %2, %struct.nfs_lock_context** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.file*, %struct.file** %8, align 8
  %18 = call %struct.inode* @file_inode(%struct.file* %17)
  store %struct.inode* %18, %struct.inode** %12, align 8
  %19 = load %struct.inode*, %struct.inode** %12, align 8
  %20 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %19)
  store %struct.nfs_server* %20, %struct.nfs_server** %13, align 8
  %21 = getelementptr inbounds %struct.nfs42_falloc_args, %struct.nfs42_falloc_args* %14, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.nfs42_falloc_args, %struct.nfs42_falloc_args* %14, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.nfs42_falloc_args, %struct.nfs42_falloc_args* %14, i32 0, i32 2
  %24 = load %struct.nfs_server*, %struct.nfs_server** %13, align 8
  %25 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds %struct.nfs42_falloc_args, %struct.nfs42_falloc_args* %14, i32 0, i32 3
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.nfs42_falloc_args, %struct.nfs42_falloc_args* %14, i32 0, i32 4
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.nfs42_falloc_args, %struct.nfs42_falloc_args* %14, i32 0, i32 5
  %32 = load %struct.inode*, %struct.inode** %12, align 8
  %33 = call i32 @NFS_FH(%struct.inode* %32)
  store i32 %33, i32* %31, align 4
  %34 = getelementptr inbounds %struct.nfs42_falloc_res, %struct.nfs42_falloc_res* %15, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.nfs42_falloc_res, %struct.nfs42_falloc_res* %15, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.nfs42_falloc_res, %struct.nfs42_falloc_res* %15, i32 0, i32 2
  %37 = load %struct.nfs_server*, %struct.nfs_server** %13, align 8
  store %struct.nfs_server* %37, %struct.nfs_server** %36, align 8
  %38 = load %struct.rpc_message*, %struct.rpc_message** %7, align 8
  %39 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %38, i32 0, i32 1
  store %struct.nfs42_falloc_args* %14, %struct.nfs42_falloc_args** %39, align 8
  %40 = load %struct.rpc_message*, %struct.rpc_message** %7, align 8
  %41 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %40, i32 0, i32 0
  store %struct.nfs42_falloc_res* %15, %struct.nfs42_falloc_res** %41, align 8
  %42 = getelementptr inbounds %struct.nfs42_falloc_args, %struct.nfs42_falloc_args* %14, i32 0, i32 1
  %43 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %9, align 8
  %44 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %9, align 8
  %47 = load i32, i32* @FMODE_WRITE, align 4
  %48 = call i32 @nfs4_set_rw_stateid(i32* %42, i32 %45, %struct.nfs_lock_context* %46, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %5
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %6, align 4
  br label %83

53:                                               ; preds = %5
  %54 = call i32 (...) @nfs_alloc_fattr()
  %55 = getelementptr inbounds %struct.nfs42_falloc_res, %struct.nfs42_falloc_res* %15, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.nfs42_falloc_res, %struct.nfs42_falloc_res* %15, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %83

62:                                               ; preds = %53
  %63 = load %struct.nfs_server*, %struct.nfs_server** %13, align 8
  %64 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nfs_server*, %struct.nfs_server** %13, align 8
  %67 = load %struct.rpc_message*, %struct.rpc_message** %7, align 8
  %68 = getelementptr inbounds %struct.nfs42_falloc_args, %struct.nfs42_falloc_args* %14, i32 0, i32 0
  %69 = getelementptr inbounds %struct.nfs42_falloc_res, %struct.nfs42_falloc_res* %15, i32 0, i32 1
  %70 = call i32 @nfs4_call_sync(i32 %65, %struct.nfs_server* %66, %struct.rpc_message* %67, i32* %68, i32* %69, i32 0)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load %struct.inode*, %struct.inode** %12, align 8
  %75 = getelementptr inbounds %struct.nfs42_falloc_res, %struct.nfs42_falloc_res* %15, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @nfs_post_op_update_inode(%struct.inode* %74, i32 %76)
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %73, %62
  %79 = getelementptr inbounds %struct.nfs42_falloc_res, %struct.nfs42_falloc_res* %15, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @kfree(i32 %80)
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %78, %59, %51
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs4_set_rw_stateid(i32*, i32, %struct.nfs_lock_context*, i32) #1

declare dso_local i32 @nfs_alloc_fattr(...) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

declare dso_local i32 @nfs_post_op_update_inode(%struct.inode*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
