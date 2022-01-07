; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_wait_on_all_pages_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_wait_on_all_pages_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@F2FS_WB_CP_DATA = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_wait_on_all_pages_writeback(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %3 = load i32, i32* @wait, align 4
  %4 = call i32 @DEFINE_WAIT(i32 %3)
  br label %5

5:                                                ; preds = %21, %1
  %6 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %7 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %6, i32 0, i32 0
  %8 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %9 = call i32 @prepare_to_wait(i32* %7, i32* @wait, i32 %8)
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %11 = load i32, i32* @F2FS_WB_CP_DATA, align 4
  %12 = call i32 @get_pages(%struct.f2fs_sb_info* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  br label %25

15:                                               ; preds = %5
  %16 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %17 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %16)
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 5, %22
  %24 = call i32 @io_schedule_timeout(i32 %23)
  br label %5

25:                                               ; preds = %20, %14
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %27 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %26, i32 0, i32 0
  %28 = call i32 @finish_wait(i32* %27, i32* @wait)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @get_pages(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @io_schedule_timeout(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
