; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_sched_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_sched_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { %struct.wake_event* }
%struct.wake_event = type { i32, i8*, i32, %struct.wake_event*, i8* }
%struct.per_pid = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i8* }

@TRACE_FLAG_HARDIRQ = common dso_local global i32 0, align 4
@TRACE_FLAG_SOFTIRQ = common dso_local global i32 0, align 4
@TYPE_NONE = common dso_local global i64 0, align 8
@TYPE_WAITING = common dso_local global i8* null, align 8
@TYPE_BLOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*, i32, i8*, i32, i32, i32, i8*)* @sched_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_wakeup(%struct.timechart* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.timechart*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.per_pid*, align 8
  %16 = alloca %struct.wake_event*, align 8
  store %struct.timechart* %0, %struct.timechart** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %17 = call %struct.wake_event* @zalloc(i32 40)
  store %struct.wake_event* %17, %struct.wake_event** %16, align 8
  %18 = load %struct.wake_event*, %struct.wake_event** %16, align 8
  %19 = icmp ne %struct.wake_event* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  br label %132

21:                                               ; preds = %7
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.wake_event*, %struct.wake_event** %16, align 8
  %24 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.wake_event*, %struct.wake_event** %16, align 8
  %27 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load %struct.wake_event*, %struct.wake_event** %16, align 8
  %30 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @TRACE_FLAG_HARDIRQ, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @TRACE_FLAG_SOFTIRQ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %21
  %41 = load %struct.wake_event*, %struct.wake_event** %16, align 8
  %42 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.wake_event*, %struct.wake_event** %16, align 8
  %46 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.timechart*, %struct.timechart** %8, align 8
  %48 = getelementptr inbounds %struct.timechart, %struct.timechart* %47, i32 0, i32 0
  %49 = load %struct.wake_event*, %struct.wake_event** %48, align 8
  %50 = load %struct.wake_event*, %struct.wake_event** %16, align 8
  %51 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %50, i32 0, i32 3
  store %struct.wake_event* %49, %struct.wake_event** %51, align 8
  %52 = load %struct.wake_event*, %struct.wake_event** %16, align 8
  %53 = load %struct.timechart*, %struct.timechart** %8, align 8
  %54 = getelementptr inbounds %struct.timechart, %struct.timechart* %53, i32 0, i32 0
  store %struct.wake_event* %52, %struct.wake_event** %54, align 8
  %55 = load %struct.timechart*, %struct.timechart** %8, align 8
  %56 = load %struct.wake_event*, %struct.wake_event** %16, align 8
  %57 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.per_pid* @find_create_pid(%struct.timechart* %55, i32 %58)
  store %struct.per_pid* %59, %struct.per_pid** %15, align 8
  %60 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %61 = icmp ne %struct.per_pid* %60, null
  br i1 %61, label %62, label %87

62:                                               ; preds = %43
  %63 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %64 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = icmp ne %struct.TYPE_2__* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %69 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TYPE_NONE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %67
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %78 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i8* %76, i8** %80, align 8
  %81 = load i8*, i8** @TYPE_WAITING, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %84 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i64 %82, i64* %86, align 8
  br label %87

87:                                               ; preds = %75, %67, %62, %43
  %88 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %89 = icmp ne %struct.per_pid* %88, null
  br i1 %89, label %90, label %132

90:                                               ; preds = %87
  %91 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %92 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = icmp ne %struct.TYPE_2__* %93, null
  br i1 %94, label %95, label %132

95:                                               ; preds = %90
  %96 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %97 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TYPE_BLOCKED, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %132

103:                                              ; preds = %95
  %104 = load %struct.timechart*, %struct.timechart** %8, align 8
  %105 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %106 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %109 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %115 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 @pid_put_sample(%struct.timechart* %104, i32 %107, i64 %112, i32 %113, i8* %118, i8* %119, i32* null)
  %121 = load i8*, i8** %10, align 8
  %122 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %123 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i8* %121, i8** %125, align 8
  %126 = load i8*, i8** @TYPE_WAITING, align 8
  %127 = ptrtoint i8* %126 to i64
  %128 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %129 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i64 %127, i64* %131, align 8
  br label %132

132:                                              ; preds = %20, %103, %95, %90, %87
  ret void
}

declare dso_local %struct.wake_event* @zalloc(i32) #1

declare dso_local %struct.per_pid* @find_create_pid(%struct.timechart*, i32) #1

declare dso_local i32 @pid_put_sample(%struct.timechart*, i32, i64, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
