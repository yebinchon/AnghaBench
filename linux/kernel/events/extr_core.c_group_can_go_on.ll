; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_group_can_go_on.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_group_can_go_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.perf_cpu_context = type { i64, i64 }

@PERF_EV_CAP_SOFTWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.perf_cpu_context*, i32)* @group_can_go_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group_can_go_on(%struct.perf_event* %0, %struct.perf_cpu_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_cpu_context*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store %struct.perf_cpu_context* %1, %struct.perf_cpu_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PERF_EV_CAP_SOFTWARE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %35

15:                                               ; preds = %3
  %16 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %17 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %35

21:                                               ; preds = %15
  %22 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %29 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %35

33:                                               ; preds = %27, %21
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %32, %20, %14
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
