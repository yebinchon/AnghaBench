; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-sample-raw.c_get_counter_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-sample-raw.c_get_counter_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_events_map = type { %struct.pmu_event* }
%struct.pmu_event = type { i8*, i32*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"event=%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, %struct.pmu_events_map*)* @get_counter_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_counter_name(i32 %0, i32 %1, %struct.pmu_events_map* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pmu_events_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pmu_event*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.pmu_events_map* %2, %struct.pmu_events_map** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @get_counterset_start(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.pmu_events_map*, %struct.pmu_events_map** %7, align 8
  %17 = icmp ne %struct.pmu_events_map* %16, null
  br i1 %17, label %18, label %70

18:                                               ; preds = %3
  %19 = load %struct.pmu_events_map*, %struct.pmu_events_map** %7, align 8
  %20 = getelementptr inbounds %struct.pmu_events_map, %struct.pmu_events_map* %19, i32 0, i32 0
  %21 = load %struct.pmu_event*, %struct.pmu_event** %20, align 8
  store %struct.pmu_event* %21, %struct.pmu_event** %11, align 8
  br label %22

22:                                               ; preds = %66, %18
  %23 = load %struct.pmu_event*, %struct.pmu_event** %11, align 8
  %24 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.pmu_event*, %struct.pmu_event** %11, align 8
  %29 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.pmu_event*, %struct.pmu_event** %11, align 8
  %34 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %27, %22
  %38 = phi i1 [ true, %27 ], [ true, %22 ], [ %36, %32 ]
  br i1 %38, label %39, label %69

39:                                               ; preds = %37
  %40 = load %struct.pmu_event*, %struct.pmu_event** %11, align 8
  %41 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.pmu_event*, %struct.pmu_event** %11, align 8
  %46 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39
  br label %66

50:                                               ; preds = %44
  %51 = load %struct.pmu_event*, %struct.pmu_event** %11, align 8
  %52 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @sscanf(i32* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.pmu_event*, %struct.pmu_event** %11, align 8
  %63 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %4, align 8
  br label %71

65:                                               ; preds = %57, %50
  br label %66

66:                                               ; preds = %65, %49
  %67 = load %struct.pmu_event*, %struct.pmu_event** %11, align 8
  %68 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %67, i32 1
  store %struct.pmu_event* %68, %struct.pmu_event** %11, align 8
  br label %22

69:                                               ; preds = %37
  br label %70

70:                                               ; preds = %69, %3
  store i8* null, i8** %4, align 8
  br label %71

71:                                               ; preds = %70, %61
  %72 = load i8*, i8** %4, align 8
  ret i8* %72
}

declare dso_local i32 @get_counterset_start(i32) #1

declare dso_local i32 @sscanf(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
