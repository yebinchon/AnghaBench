; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_debug.c_trace_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_debug.c_trace_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@dump_trace = common dso_local global i32 0, align 4
@trace_event_printer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_event(%union.perf_event* %0) #0 {
  %2 = alloca %union.perf_event*, align 8
  %3 = alloca i8*, align 8
  store %union.perf_event* %0, %union.perf_event** %2, align 8
  %4 = load %union.perf_event*, %union.perf_event** %2, align 8
  %5 = bitcast %union.perf_event* %4 to i8*
  store i8* %5, i8** %3, align 8
  %6 = load i32, i32* @dump_trace, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %18

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load %union.perf_event*, %union.perf_event** %2, align 8
  %12 = bitcast %union.perf_event* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @trace_event_printer, align 4
  %16 = load %union.perf_event*, %union.perf_event** %2, align 8
  %17 = call i32 @print_binary(i8* %10, i32 %14, i32 16, i32 %15, %union.perf_event* %16)
  br label %18

18:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @print_binary(i8*, i32, i32, i32, %union.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
