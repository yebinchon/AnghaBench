; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_context_tracking.c___context_tracking_enter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_context_tracking.c___context_tracking_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@context_tracking = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@CONTEXT_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__context_tracking_enter(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = call i32 (...) @context_tracking_recursion_enter()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %38

13:                                               ; preds = %1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @context_tracking, i32 0, i32 0), align 4
  %15 = call i32 @__this_cpu_read(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @context_tracking, i32 0, i32 1), align 4
  %20 = call i32 @__this_cpu_read(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @CONTEXT_USER, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call i32 @trace_user_enter(i32 0)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %29 = call i32 @vtime_user_enter(%struct.TYPE_4__* %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = call i32 (...) @rcu_user_enter()
  br label %32

32:                                               ; preds = %30, %18
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @context_tracking, i32 0, i32 0), align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @__this_cpu_write(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %13
  %37 = call i32 (...) @context_tracking_recursion_exit()
  br label %38

38:                                               ; preds = %36, %12
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @context_tracking_recursion_enter(...) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @trace_user_enter(i32) #1

declare dso_local i32 @vtime_user_enter(%struct.TYPE_4__*) #1

declare dso_local i32 @rcu_user_enter(...) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

declare dso_local i32 @context_tracking_recursion_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
