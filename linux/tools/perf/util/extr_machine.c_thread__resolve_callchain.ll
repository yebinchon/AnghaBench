; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_thread__resolve_callchain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_thread__resolve_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.thread = type { i32 }
%struct.callchain_cursor = type { i32 }
%struct.evsel = type { i32 }
%struct.perf_sample = type { i32 }
%struct.symbol = type { i32 }
%struct.addr_location = type { i32 }

@callchain_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ORDER_CALLEE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread__resolve_callchain(%struct.thread* %0, %struct.callchain_cursor* %1, %struct.evsel* %2, %struct.perf_sample* %3, %struct.symbol** %4, %struct.addr_location* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.callchain_cursor*, align 8
  %11 = alloca %struct.evsel*, align 8
  %12 = alloca %struct.perf_sample*, align 8
  %13 = alloca %struct.symbol**, align 8
  %14 = alloca %struct.addr_location*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store %struct.callchain_cursor* %1, %struct.callchain_cursor** %10, align 8
  store %struct.evsel* %2, %struct.evsel** %11, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %12, align 8
  store %struct.symbol** %4, %struct.symbol*** %13, align 8
  store %struct.addr_location* %5, %struct.addr_location** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.callchain_cursor*, %struct.callchain_cursor** %10, align 8
  %18 = call i32 @callchain_cursor_reset(%struct.callchain_cursor* %17)
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @callchain_param, i32 0, i32 0), align 8
  %20 = load i64, i64* @ORDER_CALLEE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %7
  %23 = load %struct.thread*, %struct.thread** %9, align 8
  %24 = load %struct.callchain_cursor*, %struct.callchain_cursor** %10, align 8
  %25 = load %struct.evsel*, %struct.evsel** %11, align 8
  %26 = load %struct.perf_sample*, %struct.perf_sample** %12, align 8
  %27 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %28 = load %struct.addr_location*, %struct.addr_location** %14, align 8
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @thread__resolve_callchain_sample(%struct.thread* %23, %struct.callchain_cursor* %24, %struct.evsel* %25, %struct.perf_sample* %26, %struct.symbol** %27, %struct.addr_location* %28, i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %8, align 4
  br label %64

35:                                               ; preds = %22
  %36 = load %struct.thread*, %struct.thread** %9, align 8
  %37 = load %struct.callchain_cursor*, %struct.callchain_cursor** %10, align 8
  %38 = load %struct.evsel*, %struct.evsel** %11, align 8
  %39 = load %struct.perf_sample*, %struct.perf_sample** %12, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @thread__resolve_callchain_unwind(%struct.thread* %36, %struct.callchain_cursor* %37, %struct.evsel* %38, %struct.perf_sample* %39, i32 %40)
  store i32 %41, i32* %16, align 4
  br label %62

42:                                               ; preds = %7
  %43 = load %struct.thread*, %struct.thread** %9, align 8
  %44 = load %struct.callchain_cursor*, %struct.callchain_cursor** %10, align 8
  %45 = load %struct.evsel*, %struct.evsel** %11, align 8
  %46 = load %struct.perf_sample*, %struct.perf_sample** %12, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @thread__resolve_callchain_unwind(%struct.thread* %43, %struct.callchain_cursor* %44, %struct.evsel* %45, %struct.perf_sample* %46, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %8, align 4
  br label %64

53:                                               ; preds = %42
  %54 = load %struct.thread*, %struct.thread** %9, align 8
  %55 = load %struct.callchain_cursor*, %struct.callchain_cursor** %10, align 8
  %56 = load %struct.evsel*, %struct.evsel** %11, align 8
  %57 = load %struct.perf_sample*, %struct.perf_sample** %12, align 8
  %58 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %59 = load %struct.addr_location*, %struct.addr_location** %14, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @thread__resolve_callchain_sample(%struct.thread* %54, %struct.callchain_cursor* %55, %struct.evsel* %56, %struct.perf_sample* %57, %struct.symbol** %58, %struct.addr_location* %59, i32 %60)
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %53, %35
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %51, %33
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32 @callchain_cursor_reset(%struct.callchain_cursor*) #1

declare dso_local i32 @thread__resolve_callchain_sample(%struct.thread*, %struct.callchain_cursor*, %struct.evsel*, %struct.perf_sample*, %struct.symbol**, %struct.addr_location*, i32) #1

declare dso_local i32 @thread__resolve_callchain_unwind(%struct.thread*, %struct.callchain_cursor*, %struct.evsel*, %struct.perf_sample*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
