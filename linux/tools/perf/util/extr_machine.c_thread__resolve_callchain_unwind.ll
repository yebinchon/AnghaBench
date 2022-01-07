; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_thread__resolve_callchain_unwind.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_thread__resolve_callchain_unwind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.callchain_cursor = type { i32 }
%struct.evsel = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.perf_sample = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@PERF_SAMPLE_REGS_USER = common dso_local global i32 0, align 4
@PERF_SAMPLE_STACK_USER = common dso_local global i32 0, align 4
@unwind_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.callchain_cursor*, %struct.evsel*, %struct.perf_sample*, i32)* @thread__resolve_callchain_unwind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread__resolve_callchain_unwind(%struct.thread* %0, %struct.callchain_cursor* %1, %struct.evsel* %2, %struct.perf_sample* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.callchain_cursor*, align 8
  %9 = alloca %struct.evsel*, align 8
  %10 = alloca %struct.perf_sample*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.callchain_cursor* %1, %struct.callchain_cursor** %8, align 8
  store %struct.evsel* %2, %struct.evsel** %9, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.evsel*, %struct.evsel** %9, align 8
  %13 = getelementptr inbounds %struct.evsel, %struct.evsel* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PERF_SAMPLE_REGS_USER, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %5
  %21 = load %struct.evsel*, %struct.evsel** %9, align 8
  %22 = getelementptr inbounds %struct.evsel, %struct.evsel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PERF_SAMPLE_STACK_USER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20, %5
  store i32 0, i32* %6, align 4
  br label %50

30:                                               ; preds = %20
  %31 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %32 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %38 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36, %30
  store i32 0, i32* %6, align 4
  br label %50

43:                                               ; preds = %36
  %44 = load i32, i32* @unwind_entry, align 4
  %45 = load %struct.callchain_cursor*, %struct.callchain_cursor** %8, align 8
  %46 = load %struct.thread*, %struct.thread** %7, align 8
  %47 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @unwind__get_entries(i32 %44, %struct.callchain_cursor* %45, %struct.thread* %46, %struct.perf_sample* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %43, %42, %29
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @unwind__get_entries(i32, %struct.callchain_cursor*, %struct.thread*, %struct.perf_sample*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
