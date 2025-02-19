; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_thread__resolve.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_thread__resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.addr_location = type { i32, i64, i32*, i32 }
%struct.perf_sample = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread__resolve(%struct.thread* %0, %struct.addr_location* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.addr_location*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.addr_location* %1, %struct.addr_location** %5, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %6, align 8
  %7 = load %struct.thread*, %struct.thread** %4, align 8
  %8 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %9 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %12 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %15 = call i32 @thread__find_map_fb(%struct.thread* %7, i32 %10, i32 %13, %struct.addr_location* %14)
  %16 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %17 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %20 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %22 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %24 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %29 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %32 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32* @map__find_symbol(i64 %30, i32 %33)
  %35 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %36 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  br label %37

37:                                               ; preds = %27, %3
  ret void
}

declare dso_local i32 @thread__find_map_fb(%struct.thread*, i32, i32, %struct.addr_location*) #1

declare dso_local i32* @map__find_symbol(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
