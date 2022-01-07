; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_proc_deallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_proc_deallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.rpc_message = type { i32* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_DEALLOCATE = common dso_local global i64 0, align 8
@NFS_CAP_DEALLOCATE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs42_proc_deallocate(%struct.file* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rpc_message, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 0
  %12 = load i32*, i32** @nfs4_procedures, align 8
  %13 = load i64, i64* @NFSPROC4_CLNT_DEALLOCATE, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32* %14, i32** %11, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call %struct.inode* @file_inode(%struct.file* %15)
  store %struct.inode* %16, %struct.inode** %9, align 8
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = load i32, i32* @NFS_CAP_DEALLOCATE, align 4
  %19 = call i32 @nfs_server_capable(%struct.inode* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = call i32 @inode_lock(%struct.inode* %25)
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = call i32 @nfs_sync_inode(%struct.inode* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %61

32:                                               ; preds = %24
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @nfs42_proc_fallocate(%struct.rpc_message* %8, %struct.file* %33, i64 %34, i64 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %42, %43
  %45 = sub nsw i64 %44, 1
  %46 = call i32 @truncate_pagecache_range(%struct.inode* %40, i64 %41, i64 %45)
  br label %47

47:                                               ; preds = %39, %32
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32, i32* @NFS_CAP_DEALLOCATE, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = call %struct.TYPE_2__* @NFS_SERVER(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %54
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %52, %47
  br label %61

61:                                               ; preds = %60, %31
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = call i32 @inode_unlock(%struct.inode* %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @nfs_server_capable(%struct.inode*, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @nfs_sync_inode(%struct.inode*) #1

declare dso_local i32 @nfs42_proc_fallocate(%struct.rpc_message*, %struct.file*, i64, i64) #1

declare dso_local i32 @truncate_pagecache_range(%struct.inode*, i64, i64) #1

declare dso_local %struct.TYPE_2__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
