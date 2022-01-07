; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_time_filter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_time_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { i64, i64, i32, i32, i32, i32, i64, i64 }

@INTEL_PT_SS_UNKNOWN = common dso_local global i32 0, align 4
@INTEL_PT_SS_NOT_TRACING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_queue*, i64*)* @intel_pt_time_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_time_filter(%struct.intel_pt_queue* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_pt_queue*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_pt_queue* %0, %struct.intel_pt_queue** %4, align 8
  store i64* %1, i64** %5, align 8
  br label %7

7:                                                ; preds = %2, %28, %88
  %8 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %9 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %7
  %13 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %14 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %17 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %12
  %21 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %22 = call i32 @intel_pt_next_time(%struct.intel_pt_queue* %21)
  %23 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %24 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %90

28:                                               ; preds = %20
  br label %7

29:                                               ; preds = %12
  %30 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %31 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %33 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %34, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %29
  %39 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %40 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %45 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %48 = call i32 @intel_pt_next_tid(i32 %46, %struct.intel_pt_queue* %47)
  %49 = load i32, i32* @INTEL_PT_SS_UNKNOWN, align 4
  %50 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %51 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %38
  %53 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %54 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %5, align 8
  store i64 %55, i64* %56, align 8
  %57 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %58 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %61 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @intel_pt_fast_forward(i32 %59, i64 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %90

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68, %29
  store i32 0, i32* %3, align 4
  br label %90

70:                                               ; preds = %7
  %71 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %72 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %75 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %70
  %79 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %80 = call i32 @intel_pt_next_time(%struct.intel_pt_queue* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %84 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %83, i32 0, i32 2
  store i32 0, i32* %84, align 8
  %85 = load i32, i32* @INTEL_PT_SS_NOT_TRACING, align 4
  %86 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %4, align 8
  %87 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  store i32 1, i32* %3, align 4
  br label %90

88:                                               ; preds = %78
  br label %7

89:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %82, %69, %66, %27
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @intel_pt_next_time(%struct.intel_pt_queue*) #1

declare dso_local i32 @intel_pt_next_tid(i32, %struct.intel_pt_queue*) #1

declare dso_local i32 @intel_pt_fast_forward(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
