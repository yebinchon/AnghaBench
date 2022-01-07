; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_setup_map_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_setup_map_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.perf_cpu_map*, i32, i32, i64 }
%struct.perf_cpu_map = type { i32 }

@_SC_NPROCESSORS_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to get cpus map from %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sched*)* @setup_map_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_map_cpus(%struct.perf_sched* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_sched*, align 8
  %4 = alloca %struct.perf_cpu_map*, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %3, align 8
  %5 = load i32, i32* @_SC_NPROCESSORS_CONF, align 4
  %6 = call i32 @sysconf(i32 %5)
  %7 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %8 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %10 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %16 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @zalloc(i32 %20)
  %22 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %23 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %26 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %58

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %34 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %58

39:                                               ; preds = %32
  %40 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %41 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.perf_cpu_map* @perf_cpu_map__new(i32 %43)
  store %struct.perf_cpu_map* %44, %struct.perf_cpu_map** %4, align 8
  %45 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %4, align 8
  %46 = icmp ne %struct.perf_cpu_map* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %49 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 -1, i32* %2, align 4
  br label %58

53:                                               ; preds = %39
  %54 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %4, align 8
  %55 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %56 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.perf_cpu_map* %54, %struct.perf_cpu_map** %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %47, %38, %30
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @zalloc(i32) #1

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
