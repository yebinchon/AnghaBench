; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_rotate_queues.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_rotate_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ordered_events = type { i32 }
%struct.perf_top = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ordered_events*, %struct.ordered_events* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ordered_events* (%struct.perf_top*)* @rotate_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ordered_events* @rotate_queues(%struct.perf_top* %0) #0 {
  %2 = alloca %struct.perf_top*, align 8
  %3 = alloca %struct.ordered_events*, align 8
  store %struct.perf_top* %0, %struct.perf_top** %2, align 8
  %4 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %5 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.ordered_events*, %struct.ordered_events** %6, align 8
  store %struct.ordered_events* %7, %struct.ordered_events** %3, align 8
  %8 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %9 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.ordered_events*, %struct.ordered_events** %10, align 8
  %12 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %13 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ordered_events*, %struct.ordered_events** %14, align 8
  %16 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %15, i64 1
  %17 = icmp eq %struct.ordered_events* %11, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %20 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ordered_events*, %struct.ordered_events** %21, align 8
  %23 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %22, i64 0
  %24 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %25 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store %struct.ordered_events* %23, %struct.ordered_events** %26, align 8
  br label %36

27:                                               ; preds = %1
  %28 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %29 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.ordered_events*, %struct.ordered_events** %30, align 8
  %32 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %31, i64 1
  %33 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %34 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store %struct.ordered_events* %32, %struct.ordered_events** %35, align 8
  br label %36

36:                                               ; preds = %27, %18
  %37 = load %struct.ordered_events*, %struct.ordered_events** %3, align 8
  ret %struct.ordered_events* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
