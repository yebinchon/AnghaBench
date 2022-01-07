; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_ail.c_xfs_ail_push_all_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_ail.c_xfs_ail_push_all_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ail = type { i32, i32, i32, i32 }
%struct.xfs_log_item = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_ail_push_all_sync(%struct.xfs_ail* %0) #0 {
  %2 = alloca %struct.xfs_ail*, align 8
  %3 = alloca %struct.xfs_log_item*, align 8
  store %struct.xfs_ail* %0, %struct.xfs_ail** %2, align 8
  %4 = load i32, i32* @wait, align 4
  %5 = call i32 @DEFINE_WAIT(i32 %4)
  %6 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %7 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  br label %9

9:                                                ; preds = %13, %1
  %10 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %11 = call %struct.xfs_log_item* @xfs_ail_max(%struct.xfs_ail* %10)
  store %struct.xfs_log_item* %11, %struct.xfs_log_item** %3, align 8
  %12 = icmp ne %struct.xfs_log_item* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %15 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %14, i32 0, i32 0
  %16 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %17 = call i32 @prepare_to_wait(i32* %15, i32* @wait, i32 %16)
  %18 = load %struct.xfs_log_item*, %struct.xfs_log_item** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %22 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %24 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wake_up_process(i32 %25)
  %27 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %28 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = call i32 (...) @schedule()
  %31 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %32 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %31, i32 0, i32 1
  %33 = call i32 @spin_lock(i32* %32)
  br label %9

34:                                               ; preds = %9
  %35 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %36 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.xfs_ail*, %struct.xfs_ail** %2, align 8
  %39 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %38, i32 0, i32 0
  %40 = call i32 @finish_wait(i32* %39, i32* @wait)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.xfs_log_item* @xfs_ail_max(%struct.xfs_ail*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
