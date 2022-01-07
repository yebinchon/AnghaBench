; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-inject.c_dso__inject_build_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-inject.c_dso__inject_build_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32, i64 }
%struct.perf_tool = type { i32 }
%struct.machine = type { i32 }

@PERF_RECORD_MISC_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no build_id found for %s\0A\00", align 1
@PERF_RECORD_MISC_KERNEL = common dso_local global i32 0, align 4
@perf_event__repipe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Can't synthesize build_id event for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, %struct.perf_tool*, %struct.machine*)* @dso__inject_build_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dso__inject_build_id(%struct.dso* %0, %struct.perf_tool* %1, %struct.machine* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dso*, align 8
  %6 = alloca %struct.perf_tool*, align 8
  %7 = alloca %struct.machine*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %5, align 8
  store %struct.perf_tool* %1, %struct.perf_tool** %6, align 8
  store %struct.machine* %2, %struct.machine** %7, align 8
  %10 = load i32, i32* @PERF_RECORD_MISC_USER, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.dso*, %struct.dso** %5, align 8
  %12 = call i64 @dso__read_build_id(%struct.dso* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.dso*, %struct.dso** %5, align 8
  %16 = getelementptr inbounds %struct.dso, %struct.dso* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 -1, i32* %4, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load %struct.dso*, %struct.dso** %5, align 8
  %21 = getelementptr inbounds %struct.dso, %struct.dso* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @PERF_RECORD_MISC_KERNEL, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %24, %19
  %27 = load %struct.perf_tool*, %struct.perf_tool** %6, align 8
  %28 = load %struct.dso*, %struct.dso** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @perf_event__repipe, align 4
  %31 = load %struct.machine*, %struct.machine** %7, align 8
  %32 = call i32 @perf_event__synthesize_build_id(%struct.perf_tool* %27, %struct.dso* %28, i32 %29, i32 %30, %struct.machine* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.dso*, %struct.dso** %5, align 8
  %37 = getelementptr inbounds %struct.dso, %struct.dso* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %4, align 4
  br label %41

40:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %35, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @dso__read_build_id(%struct.dso*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @perf_event__synthesize_build_id(%struct.perf_tool*, %struct.dso*, i32, i32, %struct.machine*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
