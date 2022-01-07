; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_period.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 (%struct.perf_event*, i32)*, i32 (%struct.perf_event*, i32)* }
%struct.TYPE_5__ = type { i64, i32, i8* }
%struct.TYPE_4__ = type { i8*, i8*, i64 }
%struct.perf_cpu_context = type { i32 }
%struct.perf_event_context = type { i32 }

@PERF_EVENT_STATE_ACTIVE = common dso_local global i64 0, align 8
@MAX_INTERRUPTS = common dso_local global i64 0, align 8
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*, i8*)* @__perf_event_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__perf_event_period(%struct.perf_event* %0, %struct.perf_cpu_context* %1, %struct.perf_event_context* %2, i8* %3) #0 {
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_cpu_context*, align 8
  %7 = alloca %struct.perf_event_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store %struct.perf_cpu_context* %1, %struct.perf_cpu_context** %6, align 8
  store %struct.perf_event_context* %2, %struct.perf_event_context** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to i8**
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i8*, i8** %9, align 8
  %21 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  br label %33

24:                                               ; preds = %4
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %31 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i8* %29, i8** %32, align 8
  br label %33

33:                                               ; preds = %24, %19
  %34 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PERF_EVENT_STATE_ACTIVE, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %33
  %43 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %44 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @perf_pmu_disable(i32 %45)
  %47 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %48 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MAX_INTERRUPTS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %58 = call i32 @perf_log_throttle(%struct.perf_event* %57, i32 1)
  br label %59

59:                                               ; preds = %53, %42
  %60 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %61 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32 (%struct.perf_event*, i32)*, i32 (%struct.perf_event*, i32)** %63, align 8
  %65 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %66 = load i32, i32* @PERF_EF_UPDATE, align 4
  %67 = call i32 %64(%struct.perf_event* %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %33
  %69 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %70 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = call i32 @local64_set(i32* %71, i32 0)
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %77 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32 (%struct.perf_event*, i32)*, i32 (%struct.perf_event*, i32)** %79, align 8
  %81 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %82 = load i32, i32* @PERF_EF_RELOAD, align 4
  %83 = call i32 %80(%struct.perf_event* %81, i32 %82)
  %84 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %85 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @perf_pmu_enable(i32 %86)
  br label %88

88:                                               ; preds = %75, %68
  ret void
}

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local i32 @perf_log_throttle(%struct.perf_event*, i32) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
