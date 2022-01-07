; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__resolve_callchain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__resolve_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { i32, i32 }
%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.perf_sample = type { i32 }
%struct.callchain_cursor = type { i32 }
%struct.addr_location = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*, %struct.evsel*, %struct.perf_sample*, %struct.callchain_cursor*)* @trace__resolve_callchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__resolve_callchain(%struct.trace* %0, %struct.evsel* %1, %struct.perf_sample* %2, %struct.callchain_cursor* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca %struct.callchain_cursor*, align 8
  %10 = alloca %struct.addr_location, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.trace* %0, %struct.trace** %6, align 8
  store %struct.evsel* %1, %struct.evsel** %7, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %8, align 8
  store %struct.callchain_cursor* %3, %struct.callchain_cursor** %9, align 8
  %13 = load %struct.evsel*, %struct.evsel** %7, align 8
  %14 = getelementptr inbounds %struct.evsel, %struct.evsel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.evsel*, %struct.evsel** %7, align 8
  %21 = getelementptr inbounds %struct.evsel, %struct.evsel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %29

25:                                               ; preds = %4
  %26 = load %struct.trace*, %struct.trace** %6, align 8
  %27 = getelementptr inbounds %struct.trace, %struct.trace* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i32 [ %24, %19 ], [ %28, %25 ]
  store i32 %30, i32* %11, align 4
  %31 = load %struct.trace*, %struct.trace** %6, align 8
  %32 = getelementptr inbounds %struct.trace, %struct.trace* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %35 = call i64 @machine__resolve(i32 %33, %struct.addr_location* %10, %struct.perf_sample* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %48

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.callchain_cursor*, %struct.callchain_cursor** %9, align 8
  %42 = load %struct.evsel*, %struct.evsel** %7, align 8
  %43 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @thread__resolve_callchain(i32 %40, %struct.callchain_cursor* %41, %struct.evsel* %42, %struct.perf_sample* %43, i32* null, i32* null, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = call i32 @addr_location__put(%struct.addr_location* %10)
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %38, %37
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @machine__resolve(i32, %struct.addr_location*, %struct.perf_sample*) #1

declare dso_local i32 @thread__resolve_callchain(i32, %struct.callchain_cursor*, %struct.evsel*, %struct.perf_sample*, i32*, i32*, i32) #1

declare dso_local i32 @addr_location__put(%struct.addr_location*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
