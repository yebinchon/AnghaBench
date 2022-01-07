; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__deliver_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__deliver_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%union.perf_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*, %union.perf_event*)* @trace__deliver_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__deliver_event(%struct.trace* %0, %union.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca i32, align 4
  store %struct.trace* %0, %struct.trace** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  %7 = load %struct.trace*, %struct.trace** %4, align 8
  %8 = getelementptr inbounds %struct.trace, %struct.trace* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.trace*, %struct.trace** %4, align 8
  %13 = load %union.perf_event*, %union.perf_event** %5, align 8
  %14 = call i32 @__trace__deliver_event(%struct.trace* %12, %union.perf_event* %13)
  store i32 %14, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = load %struct.trace*, %struct.trace** %4, align 8
  %17 = getelementptr inbounds %struct.trace, %struct.trace* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %union.perf_event*, %union.perf_event** %5, align 8
  %20 = load %struct.trace*, %struct.trace** %4, align 8
  %21 = getelementptr inbounds %struct.trace, %struct.trace* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @perf_evlist__parse_sample_timestamp(i32 %18, %union.perf_event* %19, i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %48

31:                                               ; preds = %26, %15
  %32 = load %struct.trace*, %struct.trace** %4, align 8
  %33 = getelementptr inbounds %struct.trace, %struct.trace* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %union.perf_event*, %union.perf_event** %5, align 8
  %36 = load %struct.trace*, %struct.trace** %4, align 8
  %37 = getelementptr inbounds %struct.trace, %struct.trace* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ordered_events__queue(i32* %34, %union.perf_event* %35, i32 %39, i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %48

45:                                               ; preds = %31
  %46 = load %struct.trace*, %struct.trace** %4, align 8
  %47 = call i32 @trace__flush_events(%struct.trace* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %43, %29, %11
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @__trace__deliver_event(%struct.trace*, %union.perf_event*) #1

declare dso_local i32 @perf_evlist__parse_sample_timestamp(i32, %union.perf_event*, i32*) #1

declare dso_local i32 @ordered_events__queue(i32*, %union.perf_event*, i32, i32) #1

declare dso_local i32 @trace__flush_events(%struct.trace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
