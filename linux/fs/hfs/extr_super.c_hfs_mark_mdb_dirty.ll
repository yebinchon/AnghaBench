; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_super.c_hfs_mark_mdb_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_super.c_hfs_mark_mdb_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfs_sb_info = type { i32, i32, i32 }

@dirty_writeback_interval = common dso_local global i32 0, align 4
@system_long_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_mark_mdb_dirty(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.hfs_sb_info*, align 8
  %4 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.hfs_sb_info* @HFS_SB(%struct.super_block* %5)
  store %struct.hfs_sb_info* %6, %struct.hfs_sb_info** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call i64 @sb_rdonly(%struct.super_block* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %3, align 8
  %13 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %3, align 8
  %16 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %11
  %20 = load i32, i32* @dirty_writeback_interval, align 4
  %21 = mul nsw i32 %20, 10
  %22 = call i64 @msecs_to_jiffies(i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load i32, i32* @system_long_wq, align 4
  %24 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %3, align 8
  %25 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %24, i32 0, i32 2
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @queue_delayed_work(i32 %23, i32* %25, i64 %26)
  %28 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %3, align 8
  %29 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %19, %11
  %31 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %3, align 8
  %32 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  br label %34

34:                                               ; preds = %30, %10
  ret void
}

declare dso_local %struct.hfs_sb_info* @HFS_SB(%struct.super_block*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
