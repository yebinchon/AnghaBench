; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_first_shadow_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_first_shadow_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i32 (%struct.perf_stat_config*, i32, i32)*, i64 }
%struct.evsel = type { %struct.evlist* }
%struct.evlist = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@AGGR_NONE = common dso_local global i64 0, align 8
@AGGR_GLOBAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_stat_config*, %struct.evsel*, i32)* @first_shadow_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @first_shadow_cpu(%struct.perf_stat_config* %0, %struct.evsel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_stat_config*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.evlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %5, align 8
  store %struct.evsel* %1, %struct.evsel** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.evsel*, %struct.evsel** %6, align 8
  %12 = getelementptr inbounds %struct.evsel, %struct.evsel* %11, i32 0, i32 0
  %13 = load %struct.evlist*, %struct.evlist** %12, align 8
  store %struct.evlist* %13, %struct.evlist** %8, align 8
  %14 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %15 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %14, i32 0, i32 0
  %16 = load i32 (%struct.perf_stat_config*, i32, i32)*, i32 (%struct.perf_stat_config*, i32, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.perf_stat_config*, i32, i32)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %68

19:                                               ; preds = %3
  %20 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %21 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AGGR_NONE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %4, align 4
  br label %68

27:                                               ; preds = %19
  %28 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %29 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AGGR_GLOBAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %68

34:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %64, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.evsel*, %struct.evsel** %6, align 8
  %38 = call i32 @perf_evsel__nr_cpus(%struct.evsel* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = load %struct.evsel*, %struct.evsel** %6, align 8
  %42 = call %struct.TYPE_4__* @evsel__cpus(%struct.evsel* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %50 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %49, i32 0, i32 0
  %51 = load i32 (%struct.perf_stat_config*, i32, i32)*, i32 (%struct.perf_stat_config*, i32, i32)** %50, align 8
  %52 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %53 = load %struct.evlist*, %struct.evlist** %8, align 8
  %54 = getelementptr inbounds %struct.evlist, %struct.evlist* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 %51(%struct.perf_stat_config* %52, i32 %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %40
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %68

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %35

67:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %61, %33, %25, %18
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @perf_evsel__nr_cpus(%struct.evsel*) #1

declare dso_local %struct.TYPE_4__* @evsel__cpus(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
