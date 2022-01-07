; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c_sync_inodes_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c_sync_inodes_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backing_dev_info = type { i32 }
%struct.super_block = type { i32, %struct.backing_dev_info* }
%struct.wb_writeback_work = type { i32, i32, i32*, i32, i32, i32, %struct.super_block* }

@done = common dso_local global i32 0, align 4
@WB_REASON_SYNC = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i32 0, align 4
@noop_backing_dev_info = common dso_local global %struct.backing_dev_info zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sync_inodes_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.backing_dev_info*, align 8
  %4 = alloca %struct.wb_writeback_work, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 1
  %7 = load %struct.backing_dev_info*, %struct.backing_dev_info** %6, align 8
  store %struct.backing_dev_info* %7, %struct.backing_dev_info** %3, align 8
  %8 = load i32, i32* @done, align 4
  %9 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %10 = call i32 @DEFINE_WB_COMPLETION(i32 %8, %struct.backing_dev_info* %9)
  %11 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %4, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %4, i32 0, i32 1
  %13 = load i32, i32* @WB_REASON_SYNC, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %4, i32 0, i32 2
  store i32* @done, i32** %14, align 8
  %15 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %4, i32 0, i32 3
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %4, i32 0, i32 4
  %17 = load i32, i32* @LONG_MAX, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %4, i32 0, i32 5
  %19 = load i32, i32* @WB_SYNC_ALL, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %4, i32 0, i32 6
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  store %struct.super_block* %21, %struct.super_block** %20, align 8
  %22 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %23 = icmp eq %struct.backing_dev_info* %22, @noop_backing_dev_info
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %42

25:                                               ; preds = %1
  %26 = load %struct.super_block*, %struct.super_block** %2, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 0
  %28 = call i32 @rwsem_is_locked(i32* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %34 = call i32 @bdi_down_write_wb_switch_rwsem(%struct.backing_dev_info* %33)
  %35 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %36 = call i32 @bdi_split_work_to_wbs(%struct.backing_dev_info* %35, %struct.wb_writeback_work* %4, i32 0)
  %37 = call i32 @wb_wait_for_completion(i32* @done)
  %38 = load %struct.backing_dev_info*, %struct.backing_dev_info** %3, align 8
  %39 = call i32 @bdi_up_write_wb_switch_rwsem(%struct.backing_dev_info* %38)
  %40 = load %struct.super_block*, %struct.super_block** %2, align 8
  %41 = call i32 @wait_sb_inodes(%struct.super_block* %40)
  br label %42

42:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @DEFINE_WB_COMPLETION(i32, %struct.backing_dev_info*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rwsem_is_locked(i32*) #1

declare dso_local i32 @bdi_down_write_wb_switch_rwsem(%struct.backing_dev_info*) #1

declare dso_local i32 @bdi_split_work_to_wbs(%struct.backing_dev_info*, %struct.wb_writeback_work*, i32) #1

declare dso_local i32 @wb_wait_for_completion(i32*) #1

declare dso_local i32 @bdi_up_write_wb_switch_rwsem(%struct.backing_dev_info*) #1

declare dso_local i32 @wait_sb_inodes(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
