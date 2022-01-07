; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_rename_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_proc_rename_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64, %struct.nfs_renamedata* }
%struct.nfs_renamedata = type { i32, %struct.nfs_renameres }
%struct.nfs_renameres = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@NFS_INO_INVALID_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.inode*, %struct.inode*)* @nfs4_proc_rename_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_rename_done(%struct.rpc_task* %0, %struct.inode* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.nfs_renamedata*, align 8
  %9 = alloca %struct.nfs_renameres*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %10 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %11 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %10, i32 0, i32 1
  %12 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %11, align 8
  store %struct.nfs_renamedata* %12, %struct.nfs_renamedata** %8, align 8
  %13 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %8, align 8
  %14 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %13, i32 0, i32 1
  store %struct.nfs_renameres* %14, %struct.nfs_renameres** %9, align 8
  %15 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %16 = load %struct.nfs_renameres*, %struct.nfs_renameres** %9, align 8
  %17 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %16, i32 0, i32 5
  %18 = call i32 @nfs4_sequence_done(%struct.rpc_task* %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %75

21:                                               ; preds = %3
  %22 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %23 = load %struct.nfs_renameres*, %struct.nfs_renameres** %9, align 8
  %24 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %8, align 8
  %27 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %26, i32 0, i32 0
  %28 = call i32 @nfs4_async_handle_error(%struct.rpc_task* %22, i32 %25, i32* null, i32* %27)
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %75

33:                                               ; preds = %21
  %34 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %35 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %33
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = icmp ne %struct.inode* %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = load %struct.nfs_renameres*, %struct.nfs_renameres** %9, align 8
  %45 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %44, i32 0, i32 1
  %46 = load %struct.nfs_renameres*, %struct.nfs_renameres** %9, align 8
  %47 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NFS_INO_INVALID_OTHER, align 4
  %52 = call i32 @update_changeattr(%struct.inode* %43, i32* %45, i32 %50, i32 %51)
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = load %struct.nfs_renameres*, %struct.nfs_renameres** %9, align 8
  %55 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %54, i32 0, i32 3
  %56 = load %struct.nfs_renameres*, %struct.nfs_renameres** %9, align 8
  %57 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NFS_INO_INVALID_OTHER, align 4
  %62 = call i32 @update_changeattr(%struct.inode* %53, i32* %55, i32 %60, i32 %61)
  br label %73

63:                                               ; preds = %38
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = load %struct.nfs_renameres*, %struct.nfs_renameres** %9, align 8
  %66 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %65, i32 0, i32 1
  %67 = load %struct.nfs_renameres*, %struct.nfs_renameres** %9, align 8
  %68 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @update_changeattr(%struct.inode* %64, i32* %66, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %63, %42
  br label %74

74:                                               ; preds = %73, %33
  store i32 1, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %32, %20
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @nfs4_sequence_done(%struct.rpc_task*, i32*) #1

declare dso_local i32 @nfs4_async_handle_error(%struct.rpc_task*, i32, i32*, i32*) #1

declare dso_local i32 @update_changeattr(%struct.inode*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
