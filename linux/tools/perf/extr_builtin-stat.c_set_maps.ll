; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_set_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_set_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.perf_stat = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"stats double allocation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@evsel_list = common dso_local global %struct.TYPE_3__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_stat*)* @set_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_maps(%struct.perf_stat* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_stat*, align 8
  store %struct.perf_stat* %0, %struct.perf_stat** %3, align 8
  %4 = load %struct.perf_stat*, %struct.perf_stat** %3, align 8
  %5 = getelementptr inbounds %struct.perf_stat, %struct.perf_stat* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.perf_stat*, %struct.perf_stat** %3, align 8
  %10 = getelementptr inbounds %struct.perf_stat, %struct.perf_stat* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %42

14:                                               ; preds = %8
  %15 = load %struct.perf_stat*, %struct.perf_stat** %3, align 8
  %16 = getelementptr inbounds %struct.perf_stat, %struct.perf_stat* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @WARN_ONCE(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %42

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @evsel_list, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.perf_stat*, %struct.perf_stat** %3, align 8
  %27 = getelementptr inbounds %struct.perf_stat, %struct.perf_stat* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.perf_stat*, %struct.perf_stat** %3, align 8
  %30 = getelementptr inbounds %struct.perf_stat, %struct.perf_stat* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @perf_evlist__set_maps(i32* %25, i32 %28, i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @evsel_list, align 8
  %34 = call i64 @perf_evlist__alloc_stats(%struct.TYPE_3__* %33, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %42

39:                                               ; preds = %23
  %40 = load %struct.perf_stat*, %struct.perf_stat** %3, align 8
  %41 = getelementptr inbounds %struct.perf_stat, %struct.perf_stat* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %36, %20, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @perf_evlist__set_maps(i32*, i32, i32) #1

declare dso_local i64 @perf_evlist__alloc_stats(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
