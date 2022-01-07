; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_perf_session__auxtrace_error_inc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_perf_session__auxtrace_error_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%union.perf_event = type { %struct.perf_record_auxtrace_error }
%struct.perf_record_auxtrace_error = type { i64 }

@PERF_AUXTRACE_ERROR_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_session__auxtrace_error_inc(%struct.perf_session* %0, %union.perf_event* %1) #0 {
  %3 = alloca %struct.perf_session*, align 8
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca %struct.perf_record_auxtrace_error*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %3, align 8
  store %union.perf_event* %1, %union.perf_event** %4, align 8
  %6 = load %union.perf_event*, %union.perf_event** %4, align 8
  %7 = bitcast %union.perf_event* %6 to %struct.perf_record_auxtrace_error*
  store %struct.perf_record_auxtrace_error* %7, %struct.perf_record_auxtrace_error** %5, align 8
  %8 = load %struct.perf_record_auxtrace_error*, %struct.perf_record_auxtrace_error** %5, align 8
  %9 = getelementptr inbounds %struct.perf_record_auxtrace_error, %struct.perf_record_auxtrace_error* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PERF_AUXTRACE_ERROR_MAX, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %15 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.perf_record_auxtrace_error*, %struct.perf_record_auxtrace_error** %5, align 8
  %21 = getelementptr inbounds %struct.perf_record_auxtrace_error, %struct.perf_record_auxtrace_error* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %13, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
