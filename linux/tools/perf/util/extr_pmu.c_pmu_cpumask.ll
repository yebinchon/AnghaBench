; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_pmu_cpumask.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_pmu_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@CPUS_TEMPLATE_UNCORE = common dso_local global i8* null, align 8
@CPUS_TEMPLATE_CPU = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_cpu_map* (i8*)* @pmu_cpumask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_cpu_map* @pmu_cpumask(i8* %0) #0 {
  %2 = alloca %struct.perf_cpu_map*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.perf_cpu_map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x i8*], align 16
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = call i8* (...) @sysfs__mountpoint()
  store i8* %15, i8** %7, align 8
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %17 = load i8*, i8** @CPUS_TEMPLATE_UNCORE, align 8
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 1
  %19 = load i8*, i8** @CPUS_TEMPLATE_CPU, align 8
  store i8* %19, i8** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* null, i8** %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store %struct.perf_cpu_map* null, %struct.perf_cpu_map** %2, align 8
  store i32 1, i32* %10, align 4
  br label %47

24:                                               ; preds = %1
  %25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  store i8** %25, i8*** %9, align 8
  br label %26

26:                                               ; preds = %43, %24
  %27 = load i8**, i8*** %9, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i32, i32* @PATH_MAX, align 4
  %32 = load i8**, i8*** %9, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @snprintf(i8* %14, i32 %31, i8* %33, i8* %34, i8* %35)
  %37 = call %struct.perf_cpu_map* @__pmu_cpumask(i8* %14)
  store %struct.perf_cpu_map* %37, %struct.perf_cpu_map** %6, align 8
  %38 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %6, align 8
  %39 = icmp ne %struct.perf_cpu_map* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %6, align 8
  store %struct.perf_cpu_map* %41, %struct.perf_cpu_map** %2, align 8
  store i32 1, i32* %10, align 4
  br label %47

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i8**, i8*** %9, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %9, align 8
  br label %26

46:                                               ; preds = %26
  store %struct.perf_cpu_map* null, %struct.perf_cpu_map** %2, align 8
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %40, %23
  %48 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %2, align 8
  ret %struct.perf_cpu_map* %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @sysfs__mountpoint(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local %struct.perf_cpu_map* @__pmu_cpumask(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
