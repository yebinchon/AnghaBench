; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c___writeback_inodes_sb_nr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c___writeback_inodes_sb_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backing_dev_info = type { i32 }
%struct.super_block = type { %struct.backing_dev_info*, i32 }
%struct.wb_writeback_work = type { i32, i64, i32, i32*, i32, %struct.super_block* }

@done = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i32 0, align 4
@noop_backing_dev_info = common dso_local global %struct.backing_dev_info zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i64, i32, i32)* @__writeback_inodes_sb_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__writeback_inodes_sb_nr(%struct.super_block* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.backing_dev_info*, align 8
  %10 = alloca %struct.wb_writeback_work, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = load %struct.backing_dev_info*, %struct.backing_dev_info** %12, align 8
  store %struct.backing_dev_info* %13, %struct.backing_dev_info** %9, align 8
  %14 = load i32, i32* @done, align 4
  %15 = load %struct.backing_dev_info*, %struct.backing_dev_info** %9, align 8
  %16 = call i32 @DEFINE_WB_COMPLETION(i32 %14, %struct.backing_dev_info* %15)
  %17 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %10, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %10, i32 0, i32 1
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %10, i32 0, i32 2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %10, i32 0, i32 3
  store i32* @done, i32** %22, align 8
  %23 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %10, i32 0, i32 4
  %24 = load i32, i32* @WB_SYNC_NONE, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %10, i32 0, i32 5
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  store %struct.super_block* %26, %struct.super_block** %25, align 8
  %27 = load %struct.backing_dev_info*, %struct.backing_dev_info** %9, align 8
  %28 = call i32 @bdi_has_dirty_io(%struct.backing_dev_info* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load %struct.backing_dev_info*, %struct.backing_dev_info** %9, align 8
  %32 = icmp eq %struct.backing_dev_info* %31, @noop_backing_dev_info
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %4
  br label %48

34:                                               ; preds = %30
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 1
  %37 = call i32 @rwsem_is_locked(i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 0
  %44 = load %struct.backing_dev_info*, %struct.backing_dev_info** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @bdi_split_work_to_wbs(%struct.backing_dev_info* %44, %struct.wb_writeback_work* %10, i32 %45)
  %47 = call i32 @wb_wait_for_completion(i32* @done)
  br label %48

48:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @DEFINE_WB_COMPLETION(i32, %struct.backing_dev_info*) #1

declare dso_local i32 @bdi_has_dirty_io(%struct.backing_dev_info*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rwsem_is_locked(i32*) #1

declare dso_local i32 @bdi_split_work_to_wbs(%struct.backing_dev_info*, %struct.wb_writeback_work*, i32) #1

declare dso_local i32 @wb_wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
