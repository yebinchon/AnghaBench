; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c__nfs42_proc_clone.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c__nfs42_proc_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_message = type { %struct.nfs42_clone_res*, %struct.nfs42_clone_args* }
%struct.nfs42_clone_res = type { i32, i32, %struct.nfs_server* }
%struct.nfs_server = type { i32, i32 }
%struct.nfs42_clone_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.file = type { i32 }
%struct.nfs_lock_context = type { i32 }
%struct.inode = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_message*, %struct.file*, %struct.file*, %struct.nfs_lock_context*, %struct.nfs_lock_context*, i32, i32, i32)* @_nfs42_proc_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs42_proc_clone(%struct.rpc_message* %0, %struct.file* %1, %struct.file* %2, %struct.nfs_lock_context* %3, %struct.nfs_lock_context* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpc_message*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.nfs_lock_context*, align 8
  %14 = alloca %struct.nfs_lock_context*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.inode*, align 8
  %19 = alloca %struct.inode*, align 8
  %20 = alloca %struct.nfs_server*, align 8
  %21 = alloca %struct.nfs42_clone_args, align 4
  %22 = alloca %struct.nfs42_clone_res, align 8
  %23 = alloca i32, align 4
  store %struct.rpc_message* %0, %struct.rpc_message** %10, align 8
  store %struct.file* %1, %struct.file** %11, align 8
  store %struct.file* %2, %struct.file** %12, align 8
  store %struct.nfs_lock_context* %3, %struct.nfs_lock_context** %13, align 8
  store %struct.nfs_lock_context* %4, %struct.nfs_lock_context** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %24 = load %struct.file*, %struct.file** %11, align 8
  %25 = call %struct.inode* @file_inode(%struct.file* %24)
  store %struct.inode* %25, %struct.inode** %18, align 8
  %26 = load %struct.file*, %struct.file** %12, align 8
  %27 = call %struct.inode* @file_inode(%struct.file* %26)
  store %struct.inode* %27, %struct.inode** %19, align 8
  %28 = load %struct.inode*, %struct.inode** %19, align 8
  %29 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %28)
  store %struct.nfs_server* %29, %struct.nfs_server** %20, align 8
  %30 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %21, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %21, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %21, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %21, i32 0, i32 3
  %34 = load %struct.nfs_server*, %struct.nfs_server** %20, align 8
  %35 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  %37 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %21, i32 0, i32 4
  %38 = load i32, i32* %17, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %21, i32 0, i32 5
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %21, i32 0, i32 6
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %21, i32 0, i32 7
  %44 = load %struct.inode*, %struct.inode** %19, align 8
  %45 = call i32 @NFS_FH(%struct.inode* %44)
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %21, i32 0, i32 8
  %47 = load %struct.inode*, %struct.inode** %18, align 8
  %48 = call i32 @NFS_FH(%struct.inode* %47)
  store i32 %48, i32* %46, align 4
  %49 = getelementptr inbounds %struct.nfs42_clone_res, %struct.nfs42_clone_res* %22, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.nfs42_clone_res, %struct.nfs42_clone_res* %22, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.nfs42_clone_res, %struct.nfs42_clone_res* %22, i32 0, i32 2
  %52 = load %struct.nfs_server*, %struct.nfs_server** %20, align 8
  store %struct.nfs_server* %52, %struct.nfs_server** %51, align 8
  %53 = load %struct.rpc_message*, %struct.rpc_message** %10, align 8
  %54 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %53, i32 0, i32 1
  store %struct.nfs42_clone_args* %21, %struct.nfs42_clone_args** %54, align 8
  %55 = load %struct.rpc_message*, %struct.rpc_message** %10, align 8
  %56 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %55, i32 0, i32 0
  store %struct.nfs42_clone_res* %22, %struct.nfs42_clone_res** %56, align 8
  %57 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %21, i32 0, i32 2
  %58 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  %59 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  %62 = load i32, i32* @FMODE_READ, align 4
  %63 = call i32 @nfs4_set_rw_stateid(i32* %57, i32 %60, %struct.nfs_lock_context* %61, i32 %62)
  store i32 %63, i32* %23, align 4
  %64 = load i32, i32* %23, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %8
  %67 = load i32, i32* %23, align 4
  store i32 %67, i32* %9, align 4
  br label %110

68:                                               ; preds = %8
  %69 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %21, i32 0, i32 1
  %70 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %14, align 8
  %71 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %14, align 8
  %74 = load i32, i32* @FMODE_WRITE, align 4
  %75 = call i32 @nfs4_set_rw_stateid(i32* %69, i32 %72, %struct.nfs_lock_context* %73, i32 %74)
  store i32 %75, i32* %23, align 4
  %76 = load i32, i32* %23, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* %23, align 4
  store i32 %79, i32* %9, align 4
  br label %110

80:                                               ; preds = %68
  %81 = call i32 (...) @nfs_alloc_fattr()
  %82 = getelementptr inbounds %struct.nfs42_clone_res, %struct.nfs42_clone_res* %22, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds %struct.nfs42_clone_res, %struct.nfs42_clone_res* %22, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %9, align 4
  br label %110

89:                                               ; preds = %80
  %90 = load %struct.nfs_server*, %struct.nfs_server** %20, align 8
  %91 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.nfs_server*, %struct.nfs_server** %20, align 8
  %94 = load %struct.rpc_message*, %struct.rpc_message** %10, align 8
  %95 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %21, i32 0, i32 0
  %96 = getelementptr inbounds %struct.nfs42_clone_res, %struct.nfs42_clone_res* %22, i32 0, i32 1
  %97 = call i32 @nfs4_call_sync(i32 %92, %struct.nfs_server* %93, %struct.rpc_message* %94, i32* %95, i32* %96, i32 0)
  store i32 %97, i32* %23, align 4
  %98 = load i32, i32* %23, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %89
  %101 = load %struct.inode*, %struct.inode** %19, align 8
  %102 = getelementptr inbounds %struct.nfs42_clone_res, %struct.nfs42_clone_res* %22, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @nfs_post_op_update_inode(%struct.inode* %101, i32 %103)
  store i32 %104, i32* %23, align 4
  br label %105

105:                                              ; preds = %100, %89
  %106 = getelementptr inbounds %struct.nfs42_clone_res, %struct.nfs42_clone_res* %22, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @kfree(i32 %107)
  %109 = load i32, i32* %23, align 4
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %105, %86, %78, %66
  %111 = load i32, i32* %9, align 4
  ret i32 %111
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
