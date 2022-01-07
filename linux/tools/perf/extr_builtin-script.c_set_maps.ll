; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_set_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_set_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_script = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.evlist* }
%struct.evlist = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"stats double allocation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_script*)* @set_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_maps(%struct.perf_script* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_script*, align 8
  %4 = alloca %struct.evlist*, align 8
  store %struct.perf_script* %0, %struct.perf_script** %3, align 8
  %5 = load %struct.perf_script*, %struct.perf_script** %3, align 8
  %6 = getelementptr inbounds %struct.perf_script, %struct.perf_script* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.evlist*, %struct.evlist** %8, align 8
  store %struct.evlist* %9, %struct.evlist** %4, align 8
  %10 = load %struct.perf_script*, %struct.perf_script** %3, align 8
  %11 = getelementptr inbounds %struct.perf_script, %struct.perf_script* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.perf_script*, %struct.perf_script** %3, align 8
  %16 = getelementptr inbounds %struct.perf_script, %struct.perf_script* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %48

20:                                               ; preds = %14
  %21 = load %struct.perf_script*, %struct.perf_script** %3, align 8
  %22 = getelementptr inbounds %struct.perf_script, %struct.perf_script* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @WARN_ONCE(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %48

29:                                               ; preds = %20
  %30 = load %struct.evlist*, %struct.evlist** %4, align 8
  %31 = getelementptr inbounds %struct.evlist, %struct.evlist* %30, i32 0, i32 0
  %32 = load %struct.perf_script*, %struct.perf_script** %3, align 8
  %33 = getelementptr inbounds %struct.perf_script, %struct.perf_script* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.perf_script*, %struct.perf_script** %3, align 8
  %36 = getelementptr inbounds %struct.perf_script, %struct.perf_script* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @perf_evlist__set_maps(i32* %31, i32 %34, i32 %37)
  %39 = load %struct.evlist*, %struct.evlist** %4, align 8
  %40 = call i64 @perf_evlist__alloc_stats(%struct.evlist* %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %29
  %46 = load %struct.perf_script*, %struct.perf_script** %3, align 8
  %47 = getelementptr inbounds %struct.perf_script, %struct.perf_script* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %42, %26, %19
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @perf_evlist__set_maps(i32*, i32, i32) #1

declare dso_local i64 @perf_evlist__alloc_stats(%struct.evlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
