; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_code-reading.c_process_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_code-reading.c_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.evlist = type { %struct.mmap*, %struct.TYPE_2__ }
%struct.mmap = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.state = type { i32 }
%union.perf_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.machine*, %struct.evlist*, %struct.state*)* @process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_events(%struct.machine* %0, %struct.evlist* %1, %struct.state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.machine*, align 8
  %6 = alloca %struct.evlist*, align 8
  %7 = alloca %struct.state*, align 8
  %8 = alloca %union.perf_event*, align 8
  %9 = alloca %struct.mmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %5, align 8
  store %struct.evlist* %1, %struct.evlist** %6, align 8
  store %struct.state* %2, %struct.state** %7, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %51, %3
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.evlist*, %struct.evlist** %6, align 8
  %15 = getelementptr inbounds %struct.evlist, %struct.evlist* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %12
  %20 = load %struct.evlist*, %struct.evlist** %6, align 8
  %21 = getelementptr inbounds %struct.evlist, %struct.evlist* %20, i32 0, i32 0
  %22 = load %struct.mmap*, %struct.mmap** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mmap, %struct.mmap* %22, i64 %24
  store %struct.mmap* %25, %struct.mmap** %9, align 8
  %26 = load %struct.mmap*, %struct.mmap** %9, align 8
  %27 = call i64 @perf_mmap__read_init(%struct.mmap* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %51

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %47, %30
  %32 = load %struct.mmap*, %struct.mmap** %9, align 8
  %33 = call %union.perf_event* @perf_mmap__read_event(%struct.mmap* %32)
  store %union.perf_event* %33, %union.perf_event** %8, align 8
  %34 = icmp ne %union.perf_event* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.machine*, %struct.machine** %5, align 8
  %37 = load %struct.evlist*, %struct.evlist** %6, align 8
  %38 = load %union.perf_event*, %union.perf_event** %8, align 8
  %39 = load %struct.state*, %struct.state** %7, align 8
  %40 = call i32 @process_event(%struct.machine* %36, %struct.evlist* %37, %union.perf_event* %38, %struct.state* %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.mmap*, %struct.mmap** %9, align 8
  %42 = call i32 @perf_mmap__consume(%struct.mmap* %41)
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %55

47:                                               ; preds = %35
  br label %31

48:                                               ; preds = %31
  %49 = load %struct.mmap*, %struct.mmap** %9, align 8
  %50 = call i32 @perf_mmap__read_done(%struct.mmap* %49)
  br label %51

51:                                               ; preds = %48, %29
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %12

54:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @perf_mmap__read_init(%struct.mmap*) #1

declare dso_local %union.perf_event* @perf_mmap__read_event(%struct.mmap*) #1

declare dso_local i32 @process_event(%struct.machine*, %struct.evlist*, %union.perf_event*, %struct.state*) #1

declare dso_local i32 @perf_mmap__consume(%struct.mmap*) #1

declare dso_local i32 @perf_mmap__read_done(%struct.mmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
