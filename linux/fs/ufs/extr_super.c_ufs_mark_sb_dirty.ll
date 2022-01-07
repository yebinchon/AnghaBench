; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_mark_sb_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_mark_sb_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_sb_info = type { i32, i32, i32 }

@dirty_writeback_interval = common dso_local global i32 0, align 4
@system_long_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ufs_mark_sb_dirty(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ufs_sb_info*, align 8
  %4 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.ufs_sb_info* @UFS_SB(%struct.super_block* %5)
  store %struct.ufs_sb_info* %6, %struct.ufs_sb_info** %3, align 8
  %7 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %8 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %11 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @dirty_writeback_interval, align 4
  %16 = mul nsw i32 %15, 10
  %17 = call i64 @msecs_to_jiffies(i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i32, i32* @system_long_wq, align 4
  %19 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %19, i32 0, i32 2
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @queue_delayed_work(i32 %18, i32* %20, i64 %21)
  %23 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %24 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %14, %1
  %26 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %27 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  ret void
}

declare dso_local %struct.ufs_sb_info* @UFS_SB(%struct.super_block*) #1

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
