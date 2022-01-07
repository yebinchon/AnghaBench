; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_write_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.writeback_control = type { i64 }
%struct.nfs_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FLUSH_SYNC = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@PAGECACHE_TAG_WRITEBACK = common dso_local global i32 0, align 4
@I_DIRTY_DATASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.nfs_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.nfs_inode* @NFS_I(%struct.inode* %9)
  store %struct.nfs_inode* %10, %struct.nfs_inode** %6, align 8
  %11 = load i32, i32* @FLUSH_SYNC, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %13 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WB_SYNC_NONE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %19 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i64 @atomic_long_read(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %56

24:                                               ; preds = %17
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PAGECACHE_TAG_WRITEBACK, align 4
  %29 = call i64 @mapping_tagged(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %65

32:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %37 = call i32 @__nfs_commit_inode(%struct.inode* %34, i32 %35, %struct.writeback_control* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @FLUSH_SYNC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %70

46:                                               ; preds = %40
  br label %55

47:                                               ; preds = %33
  %48 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %49 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = call i64 @atomic_long_read(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %65

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %46
  br label %56

56:                                               ; preds = %55, %23
  %57 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %58 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @atomic_read(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %70

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %53, %31
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = load i32, i32* @I_DIRTY_DATASYNC, align 4
  %68 = call i32 @__mark_inode_dirty(%struct.inode* %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %62, %45
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i64 @mapping_tagged(i32, i32) #1

declare dso_local i32 @__nfs_commit_inode(%struct.inode*, i32, %struct.writeback_control*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @__mark_inode_dirty(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
