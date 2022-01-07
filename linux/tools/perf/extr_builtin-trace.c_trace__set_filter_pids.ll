; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__set_filter_pids.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__set_filter_pids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*)* @trace__set_filter_pids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__set_filter_pids(%struct.trace* %0) #0 {
  %2 = alloca %struct.trace*, align 8
  %3 = alloca i32, align 4
  store %struct.trace* %0, %struct.trace** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.trace*, %struct.trace** %2, align 8
  %5 = getelementptr inbounds %struct.trace, %struct.trace* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load %struct.trace*, %struct.trace** %2, align 8
  %11 = getelementptr inbounds %struct.trace, %struct.trace* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load %struct.trace*, %struct.trace** %2, align 8
  %14 = getelementptr inbounds %struct.trace, %struct.trace* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.trace*, %struct.trace** %2, align 8
  %18 = getelementptr inbounds %struct.trace, %struct.trace* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @perf_evlist__set_tp_filter_pids(%struct.TYPE_6__* %12, i64 %16, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %9
  %25 = load %struct.trace*, %struct.trace** %2, align 8
  %26 = getelementptr inbounds %struct.trace, %struct.trace* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.trace*, %struct.trace** %2, align 8
  %32 = getelementptr inbounds %struct.trace, %struct.trace* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.trace*, %struct.trace** %2, align 8
  %36 = getelementptr inbounds %struct.trace, %struct.trace* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.trace*, %struct.trace** %2, align 8
  %40 = getelementptr inbounds %struct.trace, %struct.trace* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bpf_map__set_filter_pids(i64 %34, i64 %38, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %30, %24, %9
  br label %58

45:                                               ; preds = %1
  %46 = load %struct.trace*, %struct.trace** %2, align 8
  %47 = getelementptr inbounds %struct.trace, %struct.trace* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @perf_thread_map__pid(i32 %51, i32 0)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load %struct.trace*, %struct.trace** %2, align 8
  %56 = call i32 @trace__set_filter_loop_pids(%struct.trace* %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %45
  br label %58

58:                                               ; preds = %57, %44
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @perf_evlist__set_tp_filter_pids(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @bpf_map__set_filter_pids(i64, i64, i32) #1

declare dso_local i32 @perf_thread_map__pid(i32, i32) #1

declare dso_local i32 @trace__set_filter_loop_pids(%struct.trace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
