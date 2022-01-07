; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_bp_account.c___event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_bp_account.c___event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i64, i32, i32, i32, i32, i64, i32, i32, i32 }

@PERF_TYPE_BREAKPOINT = common dso_local global i32 0, align 4
@HW_BREAKPOINT_X = common dso_local global i32 0, align 4
@HW_BREAKPOINT_W = common dso_local global i32 0, align 4
@PERF_SAMPLE_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed opening event %llx\0A\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.perf_event_attr*)* @__event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__event(i32 %0, i8* %1, %struct.perf_event_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.perf_event_attr*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.perf_event_attr* %2, %struct.perf_event_attr** %7, align 8
  %9 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %10 = call i32 @memset(%struct.perf_event_attr* %9, i32 0, i32 56)
  %11 = load i32, i32* @PERF_TYPE_BREAKPOINT, align 4
  %12 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %13 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 8
  %14 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %15 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 0
  store i32 56, i32* %15, align 8
  %16 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %17 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @HW_BREAKPOINT_X, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @HW_BREAKPOINT_W, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %27 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %31 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %33 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %32, i32 0, i32 2
  store i32 8, i32* %33, align 8
  %34 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %35 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %34, i32 0, i32 3
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* @PERF_SAMPLE_IP, align 4
  %37 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %38 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 8
  %39 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %40 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %39, i32 0, i32 4
  store i32 1, i32* %40, align 8
  %41 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %42 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %41, i32 0, i32 5
  store i32 1, i32* %42, align 4
  %43 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %44 = call i32 (...) @perf_event_open_cloexec_flag()
  %45 = call i32 @sys_perf_event_open(%struct.perf_event_attr* %43, i32 -1, i32 0, i32 -1, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %24
  %49 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %50 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @TEST_FAIL, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %24
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %48
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #1

declare dso_local i32 @sys_perf_event_open(%struct.perf_event_attr*, i32, i32, i32, i32) #1

declare dso_local i32 @perf_event_open_cloexec_flag(...) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
