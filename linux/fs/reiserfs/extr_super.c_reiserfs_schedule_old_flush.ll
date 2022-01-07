; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_reiserfs_schedule_old_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_reiserfs_schedule_old_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_sb_info = type { i32, i32, i32 }

@SB_ACTIVE = common dso_local global i32 0, align 4
@dirty_writeback_interval = common dso_local global i32 0, align 4
@system_long_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_schedule_old_flush(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.reiserfs_sb_info*, align 8
  %4 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block* %5)
  store %struct.reiserfs_sb_info* %6, %struct.reiserfs_sb_info** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call i64 @sb_rdonly(%struct.super_block* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SB_ACTIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10, %1
  br label %41

18:                                               ; preds = %10
  %19 = load %struct.reiserfs_sb_info*, %struct.reiserfs_sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.reiserfs_sb_info, %struct.reiserfs_sb_info* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.reiserfs_sb_info*, %struct.reiserfs_sb_info** %3, align 8
  %23 = getelementptr inbounds %struct.reiserfs_sb_info, %struct.reiserfs_sb_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @dirty_writeback_interval, align 4
  %28 = mul nsw i32 %27, 10
  %29 = call i64 @msecs_to_jiffies(i32 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i32, i32* @system_long_wq, align 4
  %31 = load %struct.reiserfs_sb_info*, %struct.reiserfs_sb_info** %3, align 8
  %32 = getelementptr inbounds %struct.reiserfs_sb_info, %struct.reiserfs_sb_info* %31, i32 0, i32 2
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @queue_delayed_work(i32 %30, i32* %32, i64 %33)
  %35 = load %struct.reiserfs_sb_info*, %struct.reiserfs_sb_info** %3, align 8
  %36 = getelementptr inbounds %struct.reiserfs_sb_info, %struct.reiserfs_sb_info* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %26, %18
  %38 = load %struct.reiserfs_sb_info*, %struct.reiserfs_sb_info** %3, align 8
  %39 = getelementptr inbounds %struct.reiserfs_sb_info, %struct.reiserfs_sb_info* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  br label %41

41:                                               ; preds = %37, %17
  ret void
}

declare dso_local %struct.reiserfs_sb_info* @REISERFS_SB(%struct.super_block*) #1

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
