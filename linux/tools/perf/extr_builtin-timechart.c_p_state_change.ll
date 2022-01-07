; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_p_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_p_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i32, i32, i32, i32, %struct.power_event* }
%struct.power_event = type { i32, i32, i32, i32, %struct.power_event*, i32 }

@cpus_pstate_state = common dso_local global i32* null, align 8
@cpus_pstate_start_times = common dso_local global i32* null, align 8
@PSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*, i32, i32, i32)* @p_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_state_change(%struct.timechart* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.timechart*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.power_event*, align 8
  store %struct.timechart* %0, %struct.timechart** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp sgt i32 %10, 8000000
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %108

13:                                               ; preds = %4
  %14 = call %struct.power_event* @zalloc(i32 32)
  store %struct.power_event* %14, %struct.power_event** %9, align 8
  %15 = load %struct.power_event*, %struct.power_event** %9, align 8
  %16 = icmp ne %struct.power_event* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %108

18:                                               ; preds = %13
  %19 = load i32*, i32** @cpus_pstate_state, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.power_event*, %struct.power_event** %9, align 8
  %25 = getelementptr inbounds %struct.power_event, %struct.power_event* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32*, i32** @cpus_pstate_start_times, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.power_event*, %struct.power_event** %9, align 8
  %32 = getelementptr inbounds %struct.power_event, %struct.power_event* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.power_event*, %struct.power_event** %9, align 8
  %35 = getelementptr inbounds %struct.power_event, %struct.power_event* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.power_event*, %struct.power_event** %9, align 8
  %38 = getelementptr inbounds %struct.power_event, %struct.power_event* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @PSTATE, align 4
  %40 = load %struct.power_event*, %struct.power_event** %9, align 8
  %41 = getelementptr inbounds %struct.power_event, %struct.power_event* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.timechart*, %struct.timechart** %5, align 8
  %43 = getelementptr inbounds %struct.timechart, %struct.timechart* %42, i32 0, i32 4
  %44 = load %struct.power_event*, %struct.power_event** %43, align 8
  %45 = load %struct.power_event*, %struct.power_event** %9, align 8
  %46 = getelementptr inbounds %struct.power_event, %struct.power_event* %45, i32 0, i32 4
  store %struct.power_event* %44, %struct.power_event** %46, align 8
  %47 = load %struct.power_event*, %struct.power_event** %9, align 8
  %48 = getelementptr inbounds %struct.power_event, %struct.power_event* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %18
  %52 = load %struct.timechart*, %struct.timechart** %5, align 8
  %53 = getelementptr inbounds %struct.timechart, %struct.timechart* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.power_event*, %struct.power_event** %9, align 8
  %56 = getelementptr inbounds %struct.power_event, %struct.power_event* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %18
  %58 = load %struct.power_event*, %struct.power_event** %9, align 8
  %59 = load %struct.timechart*, %struct.timechart** %5, align 8
  %60 = getelementptr inbounds %struct.timechart, %struct.timechart* %59, i32 0, i32 4
  store %struct.power_event* %58, %struct.power_event** %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** @cpus_pstate_state, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** @cpus_pstate_start_times, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.timechart*, %struct.timechart** %5, align 8
  %73 = getelementptr inbounds %struct.timechart, %struct.timechart* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %57
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.timechart*, %struct.timechart** %5, align 8
  %79 = getelementptr inbounds %struct.timechart, %struct.timechart* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %57
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.timechart*, %struct.timechart** %5, align 8
  %83 = getelementptr inbounds %struct.timechart, %struct.timechart* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %80
  %87 = load %struct.timechart*, %struct.timechart** %5, align 8
  %88 = getelementptr inbounds %struct.timechart, %struct.timechart* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86, %80
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.timechart*, %struct.timechart** %5, align 8
  %94 = getelementptr inbounds %struct.timechart, %struct.timechart* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.timechart*, %struct.timechart** %5, align 8
  %98 = getelementptr inbounds %struct.timechart, %struct.timechart* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1000
  %101 = icmp eq i32 %96, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.timechart*, %struct.timechart** %5, align 8
  %104 = getelementptr inbounds %struct.timechart, %struct.timechart* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.timechart*, %struct.timechart** %5, align 8
  %107 = getelementptr inbounds %struct.timechart, %struct.timechart* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %12, %17, %102, %95
  ret void
}

declare dso_local %struct.power_event* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
