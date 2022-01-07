; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_sync_switch.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_sync_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { i32, i32, i32 }
%struct.intel_pt_queue = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"ERROR: cpu %d expecting switch ip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt*, i32, i32, i32)* @intel_pt_sync_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_sync_switch(%struct.intel_pt* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_pt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_pt_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_pt* %0, %struct.intel_pt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.intel_pt*, %struct.intel_pt** %6, align 8
  %13 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %78

17:                                               ; preds = %4
  %18 = load %struct.intel_pt*, %struct.intel_pt** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.intel_pt_queue* @intel_pt_cpu_to_ptq(%struct.intel_pt* %18, i32 %19)
  store %struct.intel_pt_queue* %20, %struct.intel_pt_queue** %10, align 8
  %21 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %10, align 8
  %22 = icmp ne %struct.intel_pt_queue* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %10, align 8
  %25 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %17
  store i32 1, i32* %5, align 4
  br label %78

29:                                               ; preds = %23
  %30 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %10, align 8
  %31 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %74 [
    i32 130, label %33
    i32 128, label %34
    i32 129, label %34
    i32 132, label %40
    i32 131, label %71
  ]

33:                                               ; preds = %29
  br label %75

34:                                               ; preds = %29, %29
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %10, align 8
  %37 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %10, align 8
  %39 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %38, i32 0, i32 0
  store i32 131, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %78

40:                                               ; preds = %29
  %41 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %10, align 8
  %42 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %68, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.intel_pt*, %struct.intel_pt** %6, align 8
  %48 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %47, i32 0, i32 1
  %49 = call i32 @perf_time_to_tsc(i32 %46, i32* %48)
  %50 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %10, align 8
  %51 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.intel_pt*, %struct.intel_pt** %6, align 8
  %53 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %52, i32 0, i32 0
  %54 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %10, align 8
  %55 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %10, align 8
  %58 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @auxtrace_heap__add(i32* %53, i32 %56, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %45
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %78

65:                                               ; preds = %45
  %66 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %10, align 8
  %67 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %66, i32 0, i32 2
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %40
  %69 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %10, align 8
  %70 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %69, i32 0, i32 0
  store i32 129, i32* %70, align 4
  br label %75

71:                                               ; preds = %29
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @intel_pt_log(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %75

74:                                               ; preds = %29
  br label %75

75:                                               ; preds = %74, %71, %68, %33
  %76 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %10, align 8
  %77 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %76, i32 0, i32 1
  store i32 -1, i32* %77, align 4
  store i32 1, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %63, %34, %28, %16
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.intel_pt_queue* @intel_pt_cpu_to_ptq(%struct.intel_pt*, i32) #1

declare dso_local i32 @perf_time_to_tsc(i32, i32*) #1

declare dso_local i32 @auxtrace_heap__add(i32*, i32, i32) #1

declare dso_local i32 @intel_pt_log(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
