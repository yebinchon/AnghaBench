; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_context_tracking.c___context_tracking_exit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_context_tracking.c___context_tracking_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@context_tracking = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CONTEXT_USER = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@CONTEXT_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__context_tracking_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @context_tracking_recursion_enter()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %31

6:                                                ; preds = %1
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @context_tracking, i32 0, i32 0), align 4
  %8 = call i32 @__this_cpu_read(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @context_tracking, i32 0, i32 1), align 4
  %13 = call i32 @__this_cpu_read(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = call i32 (...) @rcu_user_exit()
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @CONTEXT_USER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @current, align 4
  %22 = call i32 @vtime_user_exit(i32 %21)
  %23 = call i32 @trace_user_exit(i32 0)
  br label %24

24:                                               ; preds = %20, %15
  br label %25

25:                                               ; preds = %24, %11
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @context_tracking, i32 0, i32 0), align 4
  %27 = load i32, i32* @CONTEXT_KERNEL, align 4
  %28 = call i32 @__this_cpu_write(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %6
  %30 = call i32 (...) @context_tracking_recursion_exit()
  br label %31

31:                                               ; preds = %29, %5
  ret void
}

declare dso_local i32 @context_tracking_recursion_enter(...) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @rcu_user_exit(...) #1

declare dso_local i32 @vtime_user_exit(i32) #1

declare dso_local i32 @trace_user_exit(i32) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

declare dso_local i32 @context_tracking_recursion_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
