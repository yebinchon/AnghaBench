; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_install_in_context.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_install_in_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_8__*, %struct.perf_event_context* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.perf_event_context = type { i64, i32 }
%struct.perf_cpu_context = type { %struct.perf_event_context*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@current = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@EVENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__perf_install_in_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__perf_install_in_context(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_context*, align 8
  %5 = alloca %struct.perf_cpu_context*, align 8
  %6 = alloca %struct.perf_event_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.perf_event*
  store %struct.perf_event* %10, %struct.perf_event** %3, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 1
  %13 = load %struct.perf_event_context*, %struct.perf_event_context** %12, align 8
  store %struct.perf_event_context* %13, %struct.perf_event_context** %4, align 8
  %14 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %15 = call %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context* %14)
  store %struct.perf_cpu_context* %15, %struct.perf_cpu_context** %5, align 8
  %16 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %17 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %16, i32 0, i32 0
  %18 = load %struct.perf_event_context*, %struct.perf_event_context** %17, align 8
  store %struct.perf_event_context* %18, %struct.perf_event_context** %6, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %20 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @raw_spin_lock(i32* %21)
  %23 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %24 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %1
  %28 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %29 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %28, i32 0, i32 1
  %30 = call i32 @raw_spin_lock(i32* %29)
  %31 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  store %struct.perf_event_context* %31, %struct.perf_event_context** %6, align 8
  %32 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %33 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @current, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %39 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @task_curr(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %27
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @ESRCH, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %96

49:                                               ; preds = %43, %27
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %54 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %53, i32 0, i32 0
  %55 = load %struct.perf_event_context*, %struct.perf_event_context** %54, align 8
  %56 = icmp ne %struct.perf_event_context* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %59 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %58, i32 0, i32 0
  %60 = load %struct.perf_event_context*, %struct.perf_event_context** %59, align 8
  %61 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %62 = icmp ne %struct.perf_event_context* %60, %61
  br label %63

63:                                               ; preds = %57, %52, %49
  %64 = phi i1 [ false, %52 ], [ false, %49 ], [ %62, %57 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @WARN_ON_ONCE(i32 %65)
  br label %75

67:                                               ; preds = %1
  %68 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %69 = icmp ne %struct.perf_event_context* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %72 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %71, i32 0, i32 1
  %73 = call i32 @raw_spin_lock(i32* %72)
  br label %74

74:                                               ; preds = %70, %67
  br label %75

75:                                               ; preds = %74, %63
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %80 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %81 = load i32, i32* @EVENT_TIME, align 4
  %82 = call i32 @ctx_sched_out(%struct.perf_event_context* %79, %struct.perf_cpu_context* %80, i32 %81)
  %83 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %84 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %85 = call i32 @add_event_to_ctx(%struct.perf_event* %83, %struct.perf_event_context* %84)
  %86 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %87 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %88 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %89 = call i32 @get_event_type(%struct.perf_event* %88)
  %90 = call i32 @ctx_resched(%struct.perf_cpu_context* %86, %struct.perf_event_context* %87, i32 %89)
  br label %95

91:                                               ; preds = %75
  %92 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %93 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %94 = call i32 @add_event_to_ctx(%struct.perf_event* %92, %struct.perf_event_context* %93)
  br label %95

95:                                               ; preds = %91, %78
  br label %96

96:                                               ; preds = %95, %46
  %97 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %98 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %99 = call i32 @perf_ctx_unlock(%struct.perf_cpu_context* %97, %struct.perf_event_context* %98)
  %100 = load i32, i32* %8, align 4
  ret i32 %100
}

declare dso_local %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i64 @task_curr(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ctx_sched_out(%struct.perf_event_context*, %struct.perf_cpu_context*, i32) #1

declare dso_local i32 @add_event_to_ctx(%struct.perf_event*, %struct.perf_event_context*) #1

declare dso_local i32 @ctx_resched(%struct.perf_cpu_context*, %struct.perf_event_context*, i32) #1

declare dso_local i32 @get_event_type(%struct.perf_event*) #1

declare dso_local i32 @perf_ctx_unlock(%struct.perf_cpu_context*, %struct.perf_event_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
