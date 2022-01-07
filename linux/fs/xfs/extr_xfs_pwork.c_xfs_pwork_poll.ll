; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_pwork.c_xfs_pwork_poll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_pwork.c_xfs_pwork_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_pwork_ctl = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_pwork_poll(%struct.xfs_pwork_ctl* %0) #0 {
  %2 = alloca %struct.xfs_pwork_ctl*, align 8
  store %struct.xfs_pwork_ctl* %0, %struct.xfs_pwork_ctl** %2, align 8
  br label %3

3:                                                ; preds = %15, %1
  %4 = load %struct.xfs_pwork_ctl*, %struct.xfs_pwork_ctl** %2, align 8
  %5 = getelementptr inbounds %struct.xfs_pwork_ctl, %struct.xfs_pwork_ctl* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.xfs_pwork_ctl*, %struct.xfs_pwork_ctl** %2, align 8
  %8 = getelementptr inbounds %struct.xfs_pwork_ctl, %struct.xfs_pwork_ctl* %7, i32 0, i32 0
  %9 = call i64 @atomic_read(i32* %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* @HZ, align 4
  %13 = call i64 @wait_event_timeout(i32 %6, i32 %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 (...) @touch_softlockup_watchdog()
  br label %3

17:                                               ; preds = %3
  ret void
}

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @touch_softlockup_watchdog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
