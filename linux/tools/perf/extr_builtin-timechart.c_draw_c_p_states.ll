; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_draw_c_p_states.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_draw_c_p_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i64, %struct.power_event* }
%struct.power_event = type { i64, %struct.power_event*, i64, i32, i32, i32 }

@CSTATE = common dso_local global i64 0, align 8
@PSTATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*)* @draw_c_p_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_c_p_states(%struct.timechart* %0) #0 {
  %2 = alloca %struct.timechart*, align 8
  %3 = alloca %struct.power_event*, align 8
  store %struct.timechart* %0, %struct.timechart** %2, align 8
  %4 = load %struct.timechart*, %struct.timechart** %2, align 8
  %5 = getelementptr inbounds %struct.timechart, %struct.timechart* %4, i32 0, i32 1
  %6 = load %struct.power_event*, %struct.power_event** %5, align 8
  store %struct.power_event* %6, %struct.power_event** %3, align 8
  br label %7

7:                                                ; preds = %30, %1
  %8 = load %struct.power_event*, %struct.power_event** %3, align 8
  %9 = icmp ne %struct.power_event* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = load %struct.power_event*, %struct.power_event** %3, align 8
  %12 = getelementptr inbounds %struct.power_event, %struct.power_event* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CSTATE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load %struct.power_event*, %struct.power_event** %3, align 8
  %18 = getelementptr inbounds %struct.power_event, %struct.power_event* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.power_event*, %struct.power_event** %3, align 8
  %21 = getelementptr inbounds %struct.power_event, %struct.power_event* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.power_event*, %struct.power_event** %3, align 8
  %24 = getelementptr inbounds %struct.power_event, %struct.power_event* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.power_event*, %struct.power_event** %3, align 8
  %27 = getelementptr inbounds %struct.power_event, %struct.power_event* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @svg_cstate(i32 %19, i32 %22, i32 %25, i64 %28)
  br label %30

30:                                               ; preds = %16, %10
  %31 = load %struct.power_event*, %struct.power_event** %3, align 8
  %32 = getelementptr inbounds %struct.power_event, %struct.power_event* %31, i32 0, i32 1
  %33 = load %struct.power_event*, %struct.power_event** %32, align 8
  store %struct.power_event* %33, %struct.power_event** %3, align 8
  br label %7

34:                                               ; preds = %7
  %35 = load %struct.timechart*, %struct.timechart** %2, align 8
  %36 = getelementptr inbounds %struct.timechart, %struct.timechart* %35, i32 0, i32 1
  %37 = load %struct.power_event*, %struct.power_event** %36, align 8
  store %struct.power_event* %37, %struct.power_event** %3, align 8
  br label %38

38:                                               ; preds = %72, %34
  %39 = load %struct.power_event*, %struct.power_event** %3, align 8
  %40 = icmp ne %struct.power_event* %39, null
  br i1 %40, label %41, label %76

41:                                               ; preds = %38
  %42 = load %struct.power_event*, %struct.power_event** %3, align 8
  %43 = getelementptr inbounds %struct.power_event, %struct.power_event* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PSTATE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %41
  %48 = load %struct.power_event*, %struct.power_event** %3, align 8
  %49 = getelementptr inbounds %struct.power_event, %struct.power_event* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load %struct.timechart*, %struct.timechart** %2, align 8
  %54 = getelementptr inbounds %struct.timechart, %struct.timechart* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.power_event*, %struct.power_event** %3, align 8
  %57 = getelementptr inbounds %struct.power_event, %struct.power_event* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.power_event*, %struct.power_event** %3, align 8
  %60 = getelementptr inbounds %struct.power_event, %struct.power_event* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.power_event*, %struct.power_event** %3, align 8
  %63 = getelementptr inbounds %struct.power_event, %struct.power_event* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.power_event*, %struct.power_event** %3, align 8
  %66 = getelementptr inbounds %struct.power_event, %struct.power_event* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.power_event*, %struct.power_event** %3, align 8
  %69 = getelementptr inbounds %struct.power_event, %struct.power_event* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @svg_pstate(i32 %61, i32 %64, i32 %67, i64 %70)
  br label %72

72:                                               ; preds = %58, %41
  %73 = load %struct.power_event*, %struct.power_event** %3, align 8
  %74 = getelementptr inbounds %struct.power_event, %struct.power_event* %73, i32 0, i32 1
  %75 = load %struct.power_event*, %struct.power_event** %74, align 8
  store %struct.power_event* %75, %struct.power_event** %3, align 8
  br label %38

76:                                               ; preds = %38
  ret void
}

declare dso_local i32 @svg_cstate(i32, i32, i32, i64) #1

declare dso_local i32 @svg_pstate(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
