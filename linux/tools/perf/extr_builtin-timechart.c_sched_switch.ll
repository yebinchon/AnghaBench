; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_sched_switch.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_sched_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i32 }
%struct.per_pid = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@TYPE_NONE = common dso_local global i64 0, align 8
@TYPE_RUNNING = common dso_local global i64 0, align 8
@TYPE_BLOCKED = common dso_local global i64 0, align 8
@TYPE_WAITING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*, i32, i32, i32, i32, i32, i8*)* @sched_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_switch(%struct.timechart* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.timechart*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.per_pid*, align 8
  %16 = alloca %struct.per_pid*, align 8
  store %struct.timechart* %0, %struct.timechart** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  store %struct.per_pid* null, %struct.per_pid** %15, align 8
  %17 = load %struct.timechart*, %struct.timechart** %8, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call %struct.per_pid* @find_create_pid(%struct.timechart* %17, i32 %18)
  store %struct.per_pid* %19, %struct.per_pid** %16, align 8
  %20 = load %struct.timechart*, %struct.timechart** %8, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call %struct.per_pid* @find_create_pid(%struct.timechart* %20, i32 %21)
  store %struct.per_pid* %22, %struct.per_pid** %15, align 8
  %23 = load %struct.per_pid*, %struct.per_pid** %16, align 8
  %24 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %7
  %28 = load %struct.per_pid*, %struct.per_pid** %16, align 8
  %29 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TYPE_NONE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load %struct.timechart*, %struct.timechart** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i64, i64* @TYPE_RUNNING, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.per_pid*, %struct.per_pid** %16, align 8
  %41 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @pid_put_sample(%struct.timechart* %36, i32 %37, i64 %38, i32 %39, i32 %44, i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %35, %27, %7
  %49 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %50 = icmp ne %struct.per_pid* %49, null
  br i1 %50, label %51, label %92

51:                                               ; preds = %48
  %52 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %53 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %92

56:                                               ; preds = %51
  %57 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %58 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TYPE_NONE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %56
  %65 = load %struct.timechart*, %struct.timechart** %8, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %68 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %74 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @pid_put_sample(%struct.timechart* %65, i32 %66, i64 %71, i32 %72, i32 %77, i32 %78, i8* %79)
  br label %81

81:                                               ; preds = %64, %56
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %84 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 8
  %87 = load i64, i64* @TYPE_RUNNING, align 8
  %88 = load %struct.per_pid*, %struct.per_pid** %15, align 8
  %89 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i64 %87, i64* %91, align 8
  br label %92

92:                                               ; preds = %81, %51, %48
  %93 = load %struct.per_pid*, %struct.per_pid** %16, align 8
  %94 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = icmp ne %struct.TYPE_2__* %95, null
  br i1 %96, label %97, label %127

97:                                               ; preds = %92
  %98 = load i64, i64* @TYPE_NONE, align 8
  %99 = load %struct.per_pid*, %struct.per_pid** %16, align 8
  %100 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i64 %98, i64* %102, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.per_pid*, %struct.per_pid** %16, align 8
  %105 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 8
  %108 = load i32, i32* %13, align 4
  %109 = and i32 %108, 2
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %97
  %112 = load i64, i64* @TYPE_BLOCKED, align 8
  %113 = load %struct.per_pid*, %struct.per_pid** %16, align 8
  %114 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i64 %112, i64* %116, align 8
  br label %117

117:                                              ; preds = %111, %97
  %118 = load i32, i32* %13, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i64, i64* @TYPE_WAITING, align 8
  %122 = load %struct.per_pid*, %struct.per_pid** %16, align 8
  %123 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i64 %121, i64* %125, align 8
  br label %126

126:                                              ; preds = %120, %117
  br label %127

127:                                              ; preds = %126, %92
  ret void
}

declare dso_local %struct.per_pid* @find_create_pid(%struct.timechart*, i32) #1

declare dso_local i32 @pid_put_sample(%struct.timechart*, i32, i64, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
