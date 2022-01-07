; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_torture.c_stutter_wait.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_torture.c_stutter_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stutter_pause_test = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stutter_wait(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 (...) @cond_resched_tasks_rcu_qs()
  %6 = load i32, i32* @stutter_pause_test, align 4
  %7 = call i32 @READ_ONCE(i32 %6)
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %8
  store i32 1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %32

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %24, %19
  %21 = load i32, i32* @stutter_pause_test, align 4
  %22 = call i32 @READ_ONCE(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (...) @cond_resched()
  br label %20

26:                                               ; preds = %20
  br label %31

27:                                               ; preds = %16
  %28 = load i32, i32* @HZ, align 4
  %29 = call i32 @round_jiffies_relative(i32 %28)
  %30 = call i32 @schedule_timeout_interruptible(i32 %29)
  br label %31

31:                                               ; preds = %27, %26
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @torture_shutdown_absorb(i8* %33)
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @stutter_pause_test, align 4
  %37 = call i32 @READ_ONCE(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %8

38:                                               ; preds = %8
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @cond_resched_tasks_rcu_qs(...) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

declare dso_local i32 @torture_shutdown_absorb(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
