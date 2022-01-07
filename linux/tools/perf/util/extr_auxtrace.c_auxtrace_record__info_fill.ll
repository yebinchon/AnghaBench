; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_record__info_fill.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_record__info_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_record = type { {}* }
%struct.perf_session = type { i32 }
%struct.perf_record_auxtrace_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auxtrace_record__info_fill(%struct.auxtrace_record* %0, %struct.perf_session* %1, %struct.perf_record_auxtrace_info* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.auxtrace_record*, align 8
  %7 = alloca %struct.perf_session*, align 8
  %8 = alloca %struct.perf_record_auxtrace_info*, align 8
  %9 = alloca i64, align 8
  store %struct.auxtrace_record* %0, %struct.auxtrace_record** %6, align 8
  store %struct.perf_session* %1, %struct.perf_session** %7, align 8
  store %struct.perf_record_auxtrace_info* %2, %struct.perf_record_auxtrace_info** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.auxtrace_record*, %struct.auxtrace_record** %6, align 8
  %11 = icmp ne %struct.auxtrace_record* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = load %struct.auxtrace_record*, %struct.auxtrace_record** %6, align 8
  %14 = getelementptr inbounds %struct.auxtrace_record, %struct.auxtrace_record* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.auxtrace_record*, %struct.perf_session*, %struct.perf_record_auxtrace_info*, i64)**
  %16 = load i32 (%struct.auxtrace_record*, %struct.perf_session*, %struct.perf_record_auxtrace_info*, i64)*, i32 (%struct.auxtrace_record*, %struct.perf_session*, %struct.perf_record_auxtrace_info*, i64)** %15, align 8
  %17 = load %struct.auxtrace_record*, %struct.auxtrace_record** %6, align 8
  %18 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %19 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 %16(%struct.auxtrace_record* %17, %struct.perf_session* %18, %struct.perf_record_auxtrace_info* %19, i64 %20)
  store i32 %21, i32* %5, align 4
  br label %24

22:                                               ; preds = %4
  %23 = call i32 (...) @auxtrace_not_supported()
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %12
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @auxtrace_not_supported(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
