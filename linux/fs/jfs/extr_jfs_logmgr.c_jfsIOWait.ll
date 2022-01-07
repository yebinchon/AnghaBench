; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_jfsIOWait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_jfsIOWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbuf = type { %struct.lbuf* }

@log_redrive_lock = common dso_local global i32 0, align 4
@log_redrive_list = common dso_local global %struct.lbuf* null, align 8
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"jfsIOWait being killed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jfsIOWait(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lbuf*, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %32, %1
  %5 = call i32 @spin_lock_irq(i32* @log_redrive_lock)
  br label %6

6:                                                ; preds = %9, %4
  %7 = load %struct.lbuf*, %struct.lbuf** @log_redrive_list, align 8
  store %struct.lbuf* %7, %struct.lbuf** %3, align 8
  %8 = icmp ne %struct.lbuf* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %11 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %10, i32 0, i32 0
  %12 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  store %struct.lbuf* %12, %struct.lbuf** @log_redrive_list, align 8
  %13 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %14 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %13, i32 0, i32 0
  store %struct.lbuf* null, %struct.lbuf** %14, align 8
  %15 = call i32 @spin_unlock_irq(i32* @log_redrive_lock)
  %16 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %17 = call i32 @lbmStartIO(%struct.lbuf* %16)
  %18 = call i32 @spin_lock_irq(i32* @log_redrive_lock)
  br label %6

19:                                               ; preds = %6
  %20 = load i32, i32* @current, align 4
  %21 = call i64 @freezing(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = call i32 @spin_unlock_irq(i32* @log_redrive_lock)
  %25 = call i32 (...) @try_to_freeze()
  br label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %28 = call i32 @set_current_state(i32 %27)
  %29 = call i32 @spin_unlock_irq(i32* @log_redrive_lock)
  %30 = call i32 (...) @schedule()
  br label %31

31:                                               ; preds = %26, %23
  br label %32

32:                                               ; preds = %31
  %33 = call i32 (...) @kthread_should_stop()
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %4, label %36

36:                                               ; preds = %32
  %37 = call i32 @jfs_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lbmStartIO(%struct.lbuf*) #1

declare dso_local i64 @freezing(i32) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @jfs_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
