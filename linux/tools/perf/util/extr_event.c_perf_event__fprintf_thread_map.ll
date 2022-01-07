; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_perf_event__fprintf_thread_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_perf_event__fprintf_thread_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { i32 }
%struct.perf_thread_map = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c" nr: \00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get threads from event\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @perf_event__fprintf_thread_map(%union.perf_event* %0, i32* %1) #0 {
  %3 = alloca %union.perf_event*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.perf_thread_map*, align 8
  %6 = alloca i64, align 8
  store %union.perf_event* %0, %union.perf_event** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %union.perf_event*, %union.perf_event** %3, align 8
  %8 = bitcast %union.perf_event* %7 to i32*
  %9 = call %struct.perf_thread_map* @thread_map__new_event(i32* %8)
  store %struct.perf_thread_map* %9, %struct.perf_thread_map** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @fprintf(i32* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i64 %11, i64* %6, align 8
  %12 = load %struct.perf_thread_map*, %struct.perf_thread_map** %5, align 8
  %13 = icmp ne %struct.perf_thread_map* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.perf_thread_map*, %struct.perf_thread_map** %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @thread_map__fprintf(%struct.perf_thread_map* %15, i32* %16)
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %6, align 8
  br label %25

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @fprintf(i32* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %20, %14
  %26 = load %struct.perf_thread_map*, %struct.perf_thread_map** %5, align 8
  %27 = call i32 @perf_thread_map__put(%struct.perf_thread_map* %26)
  %28 = load i64, i64* %6, align 8
  ret i64 %28
}

declare dso_local %struct.perf_thread_map* @thread_map__new_event(i32*) #1

declare dso_local i64 @fprintf(i32*, i8*) #1

declare dso_local i64 @thread_map__fprintf(%struct.perf_thread_map*, i32*) #1

declare dso_local i32 @perf_thread_map__put(%struct.perf_thread_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
