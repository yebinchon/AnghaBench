; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_mem-functions.c_bench_mem_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_mem-functions.c_bench_mem_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bench_mem_info = type { i32, i32, i32, i32, i32 }

@bench_mem_memcpy_usage = common dso_local global i32 0, align 4
@do_memcpy_gettimeofday = common dso_local global i32 0, align 4
@do_memcpy_cycles = common dso_local global i32 0, align 4
@memcpy_functions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bench_mem_memcpy(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.bench_mem_info, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %5, i32 0, i32 1
  %8 = load i32, i32* @bench_mem_memcpy_usage, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %5, i32 0, i32 2
  %10 = load i32, i32* @do_memcpy_gettimeofday, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %5, i32 0, i32 3
  %12 = load i32, i32* @do_memcpy_cycles, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %5, i32 0, i32 4
  %14 = load i32, i32* @memcpy_functions, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i8**, i8*** %4, align 8
  %17 = call i32 @bench_mem_common(i32 %15, i8** %16, %struct.bench_mem_info* %5)
  ret i32 %17
}

declare dso_local i32 @bench_mem_common(i32, i8**, %struct.bench_mem_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
