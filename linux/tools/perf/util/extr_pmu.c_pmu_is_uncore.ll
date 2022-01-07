; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_pmu_is_uncore.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_pmu_is_uncore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@CPUS_TEMPLATE_UNCORE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pmu_is_uncore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_is_uncore(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.perf_cpu_map*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @PATH_MAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = call i8* (...) @sysfs__mountpoint()
  store i8* %11, i8** %6, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = load i8*, i8** @CPUS_TEMPLATE_UNCORE, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @snprintf(i8* %10, i32 %12, i8* %13, i8* %14, i8* %15)
  %17 = call %struct.perf_cpu_map* @__pmu_cpumask(i8* %10)
  store %struct.perf_cpu_map* %17, %struct.perf_cpu_map** %5, align 8
  %18 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %19 = call i32 @perf_cpu_map__put(%struct.perf_cpu_map* %18)
  %20 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %21 = icmp ne %struct.perf_cpu_map* %20, null
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %25)
  ret i32 %24
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @sysfs__mountpoint(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local %struct.perf_cpu_map* @__pmu_cpumask(i8*) #2

declare dso_local i32 @perf_cpu_map__put(%struct.perf_cpu_map*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
