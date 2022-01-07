; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_thread__find_map_fb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_thread__find_map_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 }
%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.machine* }
%struct.machine = type { i32 }
%struct.addr_location = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.map* @thread__find_map_fb(%struct.thread* %0, i64 %1, i32 %2, %struct.addr_location* %3) #0 {
  %5 = alloca %struct.map*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.addr_location*, align 8
  %10 = alloca %struct.map*, align 8
  %11 = alloca %struct.machine*, align 8
  %12 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.addr_location* %3, %struct.addr_location** %9, align 8
  %13 = load %struct.thread*, %struct.thread** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %17 = call %struct.map* @thread__find_map(%struct.thread* %13, i64 %14, i32 %15, %struct.addr_location* %16)
  store %struct.map* %17, %struct.map** %10, align 8
  %18 = load %struct.thread*, %struct.thread** %6, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.machine*, %struct.machine** %21, align 8
  store %struct.machine* %22, %struct.machine** %11, align 8
  %23 = load %struct.machine*, %struct.machine** %11, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @machine__addr_cpumode(%struct.machine* %23, i64 %24, i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load %struct.map*, %struct.map** %10, align 8
  %28 = icmp ne %struct.map* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %4
  %34 = load %struct.map*, %struct.map** %10, align 8
  store %struct.map* %34, %struct.map** %5, align 8
  br label %41

35:                                               ; preds = %29
  %36 = load %struct.thread*, %struct.thread** %6, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %40 = call %struct.map* @thread__find_map(%struct.thread* %36, i64 %37, i32 %38, %struct.addr_location* %39)
  store %struct.map* %40, %struct.map** %5, align 8
  br label %41

41:                                               ; preds = %35, %33
  %42 = load %struct.map*, %struct.map** %5, align 8
  ret %struct.map* %42
}

declare dso_local %struct.map* @thread__find_map(%struct.thread*, i64, i32, %struct.addr_location*) #1

declare dso_local i64 @machine__addr_cpumode(%struct.machine*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
