; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_ail.c_xfsaild.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_ail.c_xfsaild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.xfs_ail = type { i64, i64, i32, i32, i32 }

@PF_MEMALLOC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_KILLABLE = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @xfsaild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfsaild(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xfs_ail*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.xfs_ail*
  store %struct.xfs_ail* %6, %struct.xfs_ail** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i32, i32* @PF_MEMALLOC, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = call i32 (...) @set_freezable()
  br label %13

13:                                               ; preds = %1, %64, %79
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = icmp sle i64 %17, 20
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @TASK_KILLABLE, align 4
  %21 = call i32 @set_current_state(i32 %20)
  br label %25

22:                                               ; preds = %16, %13
  %23 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %24 = call i32 @set_current_state(i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = call i64 (...) @kthread_should_stop()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i32, i32* @TASK_RUNNING, align 4
  %30 = call i32 @__set_current_state(i32 %29)
  %31 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %32 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %31, i32 0, i32 3
  %33 = call i64 @list_empty(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %37 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @XFS_FORCED_SHUTDOWN(i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %35, %28
  %42 = phi i1 [ true, %28 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %46 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %45, i32 0, i32 3
  %47 = call i32 @xfs_buf_delwri_cancel(i32* %46)
  br label %85

48:                                               ; preds = %25
  %49 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %50 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %49, i32 0, i32 2
  %51 = call i32 @spin_lock(i32* %50)
  %52 = call i32 (...) @smp_rmb()
  %53 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %54 = call i32 @xfs_ail_min(%struct.xfs_ail* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %48
  %57 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %58 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %61 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %66 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %65, i32 0, i32 2
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = call i32 (...) @freezable_schedule()
  store i64 0, i64* %4, align 8
  br label %13

69:                                               ; preds = %56, %48
  %70 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %71 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %70, i32 0, i32 2
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load i64, i64* %4, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @msecs_to_jiffies(i64 %76)
  %78 = call i32 @freezable_schedule_timeout(i32 %77)
  br label %79

79:                                               ; preds = %75, %69
  %80 = load i32, i32* @TASK_RUNNING, align 4
  %81 = call i32 @__set_current_state(i32 %80)
  %82 = call i32 (...) @try_to_freeze()
  %83 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %84 = call i64 @xfsaild_push(%struct.xfs_ail* %83)
  store i64 %84, i64* %4, align 8
  br label %13

85:                                               ; preds = %41
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i32 @xfs_buf_delwri_cancel(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @xfs_ail_min(%struct.xfs_ail*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @freezable_schedule(...) #1

declare dso_local i32 @freezable_schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i64 @xfsaild_push(%struct.xfs_ail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
