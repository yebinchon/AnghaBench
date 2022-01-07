; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-ftrace.c_set_tracing_cpumask.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-ftrace.c_set_tracing_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"failed to allocate cpu mask\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"tracing_cpumask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_cpu_map*)* @set_tracing_cpumask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tracing_cpumask(%struct.perf_cpu_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_cpu_map*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_cpu_map* %0, %struct.perf_cpu_map** %3, align 8
  %8 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %3, align 8
  %9 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %3, align 8
  %10 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @cpu_map__cpu(%struct.perf_cpu_map* %8, i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sdiv i32 %14, 4
  %16 = add nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sdiv i32 %18, 32
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i8* @malloc(i64 %23)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %39

29:                                               ; preds = %1
  %30 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @cpu_map__snprint_mask(%struct.perf_cpu_map* %30, i8* %31, i64 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @write_tracing_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @free(i8* %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %29, %27
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @cpu_map__cpu(%struct.perf_cpu_map*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @cpu_map__snprint_mask(%struct.perf_cpu_map*, i8*, i64) #1

declare dso_local i32 @write_tracing_file(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
