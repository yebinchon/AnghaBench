; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_mmap__read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_mmap__read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmap = type { i32 }
%struct.auxtrace_record = type { i32 }
%struct.perf_tool = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auxtrace_mmap__read(%struct.mmap* %0, %struct.auxtrace_record* %1, %struct.perf_tool* %2, i32 %3) #0 {
  %5 = alloca %struct.mmap*, align 8
  %6 = alloca %struct.auxtrace_record*, align 8
  %7 = alloca %struct.perf_tool*, align 8
  %8 = alloca i32, align 4
  store %struct.mmap* %0, %struct.mmap** %5, align 8
  store %struct.auxtrace_record* %1, %struct.auxtrace_record** %6, align 8
  store %struct.perf_tool* %2, %struct.perf_tool** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mmap*, %struct.mmap** %5, align 8
  %10 = load %struct.auxtrace_record*, %struct.auxtrace_record** %6, align 8
  %11 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @__auxtrace_mmap__read(%struct.mmap* %9, %struct.auxtrace_record* %10, %struct.perf_tool* %11, i32 %12, i32 0, i32 0)
  ret i32 %13
}

declare dso_local i32 @__auxtrace_mmap__read(%struct.mmap*, %struct.auxtrace_record*, %struct.perf_tool*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
