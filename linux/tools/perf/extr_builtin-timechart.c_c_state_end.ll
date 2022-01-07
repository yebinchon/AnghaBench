; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_c_state_end.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_c_state_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { %struct.power_event* }
%struct.power_event = type { i32, %struct.power_event*, i32, i32, i32, i32 }

@cpus_cstate_state = common dso_local global i32* null, align 8
@cpus_cstate_start_times = common dso_local global i32* null, align 8
@CSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*, i32, i32)* @c_state_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_state_end(%struct.timechart* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.timechart*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.power_event*, align 8
  store %struct.timechart* %0, %struct.timechart** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call %struct.power_event* @zalloc(i32 32)
  store %struct.power_event* %8, %struct.power_event** %7, align 8
  %9 = load %struct.power_event*, %struct.power_event** %7, align 8
  %10 = icmp ne %struct.power_event* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %44

12:                                               ; preds = %3
  %13 = load i32*, i32** @cpus_cstate_state, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.power_event*, %struct.power_event** %7, align 8
  %19 = getelementptr inbounds %struct.power_event, %struct.power_event* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load i32*, i32** @cpus_cstate_start_times, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.power_event*, %struct.power_event** %7, align 8
  %26 = getelementptr inbounds %struct.power_event, %struct.power_event* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.power_event*, %struct.power_event** %7, align 8
  %29 = getelementptr inbounds %struct.power_event, %struct.power_event* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.power_event*, %struct.power_event** %7, align 8
  %32 = getelementptr inbounds %struct.power_event, %struct.power_event* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @CSTATE, align 4
  %34 = load %struct.power_event*, %struct.power_event** %7, align 8
  %35 = getelementptr inbounds %struct.power_event, %struct.power_event* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.timechart*, %struct.timechart** %4, align 8
  %37 = getelementptr inbounds %struct.timechart, %struct.timechart* %36, i32 0, i32 0
  %38 = load %struct.power_event*, %struct.power_event** %37, align 8
  %39 = load %struct.power_event*, %struct.power_event** %7, align 8
  %40 = getelementptr inbounds %struct.power_event, %struct.power_event* %39, i32 0, i32 1
  store %struct.power_event* %38, %struct.power_event** %40, align 8
  %41 = load %struct.power_event*, %struct.power_event** %7, align 8
  %42 = load %struct.timechart*, %struct.timechart** %4, align 8
  %43 = getelementptr inbounds %struct.timechart, %struct.timechart* %42, i32 0, i32 0
  store %struct.power_event* %41, %struct.power_event** %43, align 8
  br label %44

44:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.power_event* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
