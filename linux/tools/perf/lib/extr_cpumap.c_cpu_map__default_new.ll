; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/extr_cpumap.c_cpu_map__default_new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/extr_cpumap.c_cpu_map__default_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32*, i32, i32 }

@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_cpu_map* ()* @cpu_map__default_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_cpu_map* @cpu_map__default_new() #0 {
  %1 = alloca %struct.perf_cpu_map*, align 8
  %2 = alloca %struct.perf_cpu_map*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %6 = call i32 @sysconf(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store %struct.perf_cpu_map* null, %struct.perf_cpu_map** %1, align 8
  br label %44

10:                                               ; preds = %0
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 16, %13
  %15 = trunc i64 %14 to i32
  %16 = call %struct.perf_cpu_map* @malloc(i32 %15)
  store %struct.perf_cpu_map* %16, %struct.perf_cpu_map** %2, align 8
  %17 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %2, align 8
  %18 = icmp ne %struct.perf_cpu_map* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %2, align 8
  %27 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %2, align 8
  %38 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %2, align 8
  %40 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %39, i32 0, i32 2
  %41 = call i32 @refcount_set(i32* %40, i32 1)
  br label %42

42:                                               ; preds = %35, %10
  %43 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %2, align 8
  store %struct.perf_cpu_map* %43, %struct.perf_cpu_map** %1, align 8
  br label %44

44:                                               ; preds = %42, %9
  %45 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %1, align 8
  ret %struct.perf_cpu_map* %45
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local %struct.perf_cpu_map* @malloc(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
