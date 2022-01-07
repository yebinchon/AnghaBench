; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_hw_breakpoint.c_modify_user_hw_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_hw_breakpoint.c_modify_user_hw_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.perf_event_attr = type { i32 }

@current = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @modify_user_hw_breakpoint(%struct.perf_event* %0, %struct.perf_event_attr* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %4, align 8
  %6 = call i64 (...) @irqs_disabled()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @current, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %23 = call i32 @perf_event_disable_local(%struct.perf_event* %22)
  br label %27

24:                                               ; preds = %13, %8, %2
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = call i32 @perf_event_disable(%struct.perf_event* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %30 = call i32 @modify_user_hw_breakpoint_check(%struct.perf_event* %28, %struct.perf_event_attr* %29, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %38 = call i32 @perf_event_enable(%struct.perf_event* %37)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @irqs_disabled(...) #1

declare dso_local i32 @perf_event_disable_local(%struct.perf_event*) #1

declare dso_local i32 @perf_event_disable(%struct.perf_event*) #1

declare dso_local i32 @modify_user_hw_breakpoint_check(%struct.perf_event*, %struct.perf_event_attr*, i32) #1

declare dso_local i32 @perf_event_enable(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
