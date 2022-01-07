; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_cgroup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_cgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i8*, i32 }
%struct.evsel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@nr_cgroups = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, %struct.evsel*)* @print_cgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cgroup(%struct.perf_stat_config* %0, %struct.evsel* %1) #0 {
  %3 = alloca %struct.perf_stat_config*, align 8
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca i8*, align 8
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %3, align 8
  store %struct.evsel* %1, %struct.evsel** %4, align 8
  %6 = load i64, i64* @nr_cgroups, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = load %struct.evsel*, %struct.evsel** %4, align 8
  %10 = getelementptr inbounds %struct.evsel, %struct.evsel* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.evsel*, %struct.evsel** %4, align 8
  %15 = getelementptr inbounds %struct.evsel, %struct.evsel* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  br label %20

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi i8* [ %18, %13 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %19 ]
  store i8* %21, i8** %5, align 8
  %22 = load %struct.perf_stat_config*, %struct.perf_stat_config** %3, align 8
  %23 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.perf_stat_config*, %struct.perf_stat_config** %3, align 8
  %26 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  br label %30

30:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
