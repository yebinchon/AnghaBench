; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__reset_callgraph.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__reset_callgraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32 }
%struct.callchain_param = type { i64 }

@CALLCHAIN = common dso_local global i32 0, align 4
@CALLCHAIN_LBR = common dso_local global i64 0, align 8
@BRANCH_STACK = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_USER = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_CALL_STACK = common dso_local global i32 0, align 4
@CALLCHAIN_DWARF = common dso_local global i64 0, align 8
@REGS_USER = common dso_local global i32 0, align 4
@STACK_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evsel*, %struct.callchain_param*)* @perf_evsel__reset_callgraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_evsel__reset_callgraph(%struct.evsel* %0, %struct.callchain_param* %1) #0 {
  %3 = alloca %struct.evsel*, align 8
  %4 = alloca %struct.callchain_param*, align 8
  %5 = alloca %struct.perf_event_attr*, align 8
  store %struct.evsel* %0, %struct.evsel** %3, align 8
  store %struct.callchain_param* %1, %struct.callchain_param** %4, align 8
  %6 = load %struct.evsel*, %struct.evsel** %3, align 8
  %7 = getelementptr inbounds %struct.evsel, %struct.evsel* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.perf_event_attr* %8, %struct.perf_event_attr** %5, align 8
  %9 = load %struct.evsel*, %struct.evsel** %3, align 8
  %10 = load i32, i32* @CALLCHAIN, align 4
  %11 = call i32 @perf_evsel__reset_sample_bit(%struct.evsel* %9, i32 %10)
  %12 = load %struct.callchain_param*, %struct.callchain_param** %4, align 8
  %13 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CALLCHAIN_LBR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.evsel*, %struct.evsel** %3, align 8
  %19 = load i32, i32* @BRANCH_STACK, align 4
  %20 = call i32 @perf_evsel__reset_sample_bit(%struct.evsel* %18, i32 %19)
  %21 = load i32, i32* @PERF_SAMPLE_BRANCH_USER, align 4
  %22 = load i32, i32* @PERF_SAMPLE_BRANCH_CALL_STACK, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %26 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %17, %2
  %30 = load %struct.callchain_param*, %struct.callchain_param** %4, align 8
  %31 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CALLCHAIN_DWARF, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.evsel*, %struct.evsel** %3, align 8
  %37 = load i32, i32* @REGS_USER, align 4
  %38 = call i32 @perf_evsel__reset_sample_bit(%struct.evsel* %36, i32 %37)
  %39 = load %struct.evsel*, %struct.evsel** %3, align 8
  %40 = load i32, i32* @STACK_USER, align 4
  %41 = call i32 @perf_evsel__reset_sample_bit(%struct.evsel* %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %29
  ret void
}

declare dso_local i32 @perf_evsel__reset_sample_bit(%struct.evsel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
