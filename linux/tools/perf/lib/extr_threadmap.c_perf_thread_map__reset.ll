; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/extr_threadmap.c_perf_thread_map__reset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/extr_threadmap.c_perf_thread_map__reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_thread_map = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_thread_map*, i32, i32)* @perf_thread_map__reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_thread_map__reset(%struct.perf_thread_map* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.perf_thread_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.perf_thread_map* %0, %struct.perf_thread_map** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sub nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  store i64 %12, i64* %7, align 8
  %13 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %14 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @memset(i32* %18, i32 0, i64 %19)
  %21 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %22 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
