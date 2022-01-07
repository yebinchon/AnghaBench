; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_writeback_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_writeback_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64 }
%struct.nfs_pgio_header = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.inode = type { i32 }
%struct.TYPE_13__ = type { i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)* }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@NFSIOS_SERVERWRITTENBYTES = common dso_local global i32 0, align 4
@nfs_writeback_done.complain = internal global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"NFS:       faulty NFS server %s: (committed = %d) != (stable = %d)\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@NFS_INO_INVALID_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_pgio_header*, %struct.inode*)* @nfs_writeback_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_writeback_done(%struct.rpc_task* %0, %struct.nfs_pgio_header* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.nfs_pgio_header*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %5, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %7, align 8
  %10 = call %struct.TYPE_13__* @NFS_PROTO(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)*, i32 (%struct.rpc_task*, %struct.nfs_pgio_header*)** %11, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %14 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %15 = call i32 %12(%struct.rpc_task* %13, %struct.nfs_pgio_header* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %104

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = load i32, i32* @NFSIOS_SERVERWRITTENBYTES, align 4
  %23 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @nfs_add_stats(%struct.inode* %21, i32 %22, i32 %26)
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %30 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %33 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %37 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = call i32 @trace_nfs_writeback_done(%struct.inode* %28, i64 %31, i32 %35, %struct.TYPE_11__* %39)
  %41 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %42 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %48 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %46, %50
  br i1 %51, label %52, label %86

52:                                               ; preds = %20
  %53 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %54 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %52
  %58 = load i64, i64* @nfs_writeback_done.complain, align 8
  %59 = load i32, i32* @jiffies, align 4
  %60 = call i64 @time_before(i64 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %57
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = call %struct.TYPE_12__* @NFS_SERVER(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %70 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %76 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @dprintk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %68, i64 %74, i64 %78)
  %80 = load i32, i32* @jiffies, align 4
  %81 = load i32, i32* @HZ, align 4
  %82 = mul nsw i32 300, %81
  %83 = add nsw i32 %80, %82
  %84 = sext i32 %83 to i64
  store i64 %84, i64* @nfs_writeback_done.complain, align 8
  br label %85

85:                                               ; preds = %62, %57
  br label %86

86:                                               ; preds = %85, %52, %20
  %87 = load %struct.inode*, %struct.inode** %7, align 8
  %88 = call i64 @nfs_should_remove_suid(%struct.inode* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load %struct.inode*, %struct.inode** %7, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = call i32 @spin_lock(i32* %92)
  %94 = load i32, i32* @NFS_INO_INVALID_OTHER, align 4
  %95 = load %struct.inode*, %struct.inode** %7, align 8
  %96 = call %struct.TYPE_14__* @NFS_I(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 4
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock(i32* %101)
  br label %103

103:                                              ; preds = %90, %86
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %18
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.TYPE_13__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @nfs_add_stats(%struct.inode*, i32, i32) #1

declare dso_local i32 @trace_nfs_writeback_done(%struct.inode*, i64, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i64, i64) #1

declare dso_local %struct.TYPE_12__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i64 @nfs_should_remove_suid(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_14__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
