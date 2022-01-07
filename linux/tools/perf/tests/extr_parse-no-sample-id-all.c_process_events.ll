; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-no-sample-id-all.c_process_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-no-sample-id-all.c_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { i32 }
%struct.evlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.perf_event**, i64)* @process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_events(%union.perf_event** %0, i64 %1) #0 {
  %3 = alloca %union.perf_event**, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %union.perf_event** %0, %union.perf_event*** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.evlist* null, %struct.evlist** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  %19 = load %union.perf_event**, %union.perf_event*** %3, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %union.perf_event*, %union.perf_event** %19, i64 %20
  %22 = load %union.perf_event*, %union.perf_event** %21, align 8
  %23 = call i32 @process_event(%struct.evlist** %5, %union.perf_event* %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %7, align 8
  br label %8

27:                                               ; preds = %16
  %28 = load %struct.evlist*, %struct.evlist** %5, align 8
  %29 = call i32 @evlist__delete(%struct.evlist* %28)
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @process_event(%struct.evlist**, %union.perf_event*) #1

declare dso_local i32 @evlist__delete(%struct.evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
