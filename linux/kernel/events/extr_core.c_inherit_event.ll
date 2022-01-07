; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_inherit_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_inherit_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.perf_event = type { i32, i32, i32, i32, i32, i32, %struct.perf_event_context*, %struct.hw_perf_event, %struct.TYPE_2__, i32, %struct.pmu*, i32, %struct.perf_event* }
%struct.hw_perf_event = type { i32, i8*, i8* }
%struct.TYPE_2__ = type { i64 }
%struct.pmu = type { i32 }
%struct.perf_event_context = type { i32, i64 }

@PERF_ATTACH_TASK_DATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_INACTIVE = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_event* (%struct.perf_event*, %struct.task_struct*, %struct.perf_event_context*, %struct.task_struct*, %struct.perf_event*, %struct.perf_event_context*)* @inherit_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_event* @inherit_event(%struct.perf_event* %0, %struct.task_struct* %1, %struct.perf_event_context* %2, %struct.task_struct* %3, %struct.perf_event* %4, %struct.perf_event_context* %5) #0 {
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca %struct.perf_event*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.perf_event_context*, align 8
  %11 = alloca %struct.task_struct*, align 8
  %12 = alloca %struct.perf_event*, align 8
  %13 = alloca %struct.perf_event_context*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.perf_event*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.pmu*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %8, align 8
  store %struct.task_struct* %1, %struct.task_struct** %9, align 8
  store %struct.perf_event_context* %2, %struct.perf_event_context** %10, align 8
  store %struct.task_struct* %3, %struct.task_struct** %11, align 8
  store %struct.perf_event* %4, %struct.perf_event** %12, align 8
  store %struct.perf_event_context* %5, %struct.perf_event_context** %13, align 8
  %20 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %14, align 4
  %23 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 12
  %25 = load %struct.perf_event*, %struct.perf_event** %24, align 8
  %26 = icmp ne %struct.perf_event* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 12
  %30 = load %struct.perf_event*, %struct.perf_event** %29, align 8
  store %struct.perf_event* %30, %struct.perf_event** %8, align 8
  br label %31

31:                                               ; preds = %27, %6
  %32 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 8
  %34 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %38 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %39 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %40 = call %struct.perf_event* @perf_event_alloc(%struct.TYPE_2__* %33, i32 %36, %struct.task_struct* %37, %struct.perf_event* %38, %struct.perf_event* %39, i32* null, i32* null, i32 -1)
  store %struct.perf_event* %40, %struct.perf_event** %15, align 8
  %41 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %42 = call i64 @IS_ERR(%struct.perf_event* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  store %struct.perf_event* %45, %struct.perf_event** %7, align 8
  br label %170

46:                                               ; preds = %31
  %47 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %48 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PERF_ATTACH_TASK_DATA, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %46
  %54 = load %struct.perf_event_context*, %struct.perf_event_context** %13, align 8
  %55 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %53
  %59 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %60 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %59, i32 0, i32 10
  %61 = load %struct.pmu*, %struct.pmu** %60, align 8
  store %struct.pmu* %61, %struct.pmu** %17, align 8
  %62 = load %struct.pmu*, %struct.pmu** %17, align 8
  %63 = getelementptr inbounds %struct.pmu, %struct.pmu* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i64 @kzalloc(i32 %64, i32 %65)
  %67 = load %struct.perf_event_context*, %struct.perf_event_context** %13, align 8
  %68 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.perf_event_context*, %struct.perf_event_context** %13, align 8
  %70 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %58
  %74 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %75 = call i32 @free_event(%struct.perf_event* %74)
  store %struct.perf_event* null, %struct.perf_event** %7, align 8
  br label %170

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76, %53, %46
  %78 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %79 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %78, i32 0, i32 2
  %80 = call i32 @mutex_lock(i32* %79)
  %81 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %82 = call i64 @is_orphaned_event(%struct.perf_event* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %77
  %85 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %86 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %85, i32 0, i32 9
  %87 = call i32 @atomic_long_inc_not_zero(i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84, %77
  %90 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %91 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %90, i32 0, i32 2
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %94 = call i32 @free_event(%struct.perf_event* %93)
  store %struct.perf_event* null, %struct.perf_event** %7, align 8
  br label %170

95:                                               ; preds = %84
  %96 = load %struct.perf_event_context*, %struct.perf_event_context** %13, align 8
  %97 = call i32 @get_ctx(%struct.perf_event_context* %96)
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @PERF_EVENT_STATE_INACTIVE, align 4
  %100 = icmp uge i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @PERF_EVENT_STATE_INACTIVE, align 4
  %103 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %104 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %109

105:                                              ; preds = %95
  %106 = load i32, i32* @PERF_EVENT_STATE_OFF, align 4
  %107 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %108 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %101
  %110 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %111 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %109
  %116 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %117 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %116, i32 0, i32 7
  %118 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %18, align 8
  %120 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %121 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %120, i32 0, i32 7
  store %struct.hw_perf_event* %121, %struct.hw_perf_event** %19, align 8
  %122 = load i8*, i8** %18, align 8
  %123 = load %struct.hw_perf_event*, %struct.hw_perf_event** %19, align 8
  %124 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** %18, align 8
  %126 = load %struct.hw_perf_event*, %struct.hw_perf_event** %19, align 8
  %127 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load %struct.hw_perf_event*, %struct.hw_perf_event** %19, align 8
  %129 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %128, i32 0, i32 0
  %130 = load i8*, i8** %18, align 8
  %131 = call i32 @local64_set(i32* %129, i8* %130)
  br label %132

132:                                              ; preds = %115, %109
  %133 = load %struct.perf_event_context*, %struct.perf_event_context** %13, align 8
  %134 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %135 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %134, i32 0, i32 6
  store %struct.perf_event_context* %133, %struct.perf_event_context** %135, align 8
  %136 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %137 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %140 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  %141 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %142 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %145 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  %146 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %147 = call i32 @perf_event__header_size(%struct.perf_event* %146)
  %148 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %149 = call i32 @perf_event__id_header_size(%struct.perf_event* %148)
  %150 = load %struct.perf_event_context*, %struct.perf_event_context** %13, align 8
  %151 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %150, i32 0, i32 0
  %152 = load i64, i64* %16, align 8
  %153 = call i32 @raw_spin_lock_irqsave(i32* %151, i64 %152)
  %154 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %155 = load %struct.perf_event_context*, %struct.perf_event_context** %13, align 8
  %156 = call i32 @add_event_to_ctx(%struct.perf_event* %154, %struct.perf_event_context* %155)
  %157 = load %struct.perf_event_context*, %struct.perf_event_context** %13, align 8
  %158 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %157, i32 0, i32 0
  %159 = load i64, i64* %16, align 8
  %160 = call i32 @raw_spin_unlock_irqrestore(i32* %158, i64 %159)
  %161 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %162 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %161, i32 0, i32 3
  %163 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %164 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %163, i32 0, i32 3
  %165 = call i32 @list_add_tail(i32* %162, i32* %164)
  %166 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %167 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %166, i32 0, i32 2
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  store %struct.perf_event* %169, %struct.perf_event** %7, align 8
  br label %170

170:                                              ; preds = %132, %89, %73, %44
  %171 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  ret %struct.perf_event* %171
}

declare dso_local %struct.perf_event* @perf_event_alloc(%struct.TYPE_2__*, i32, %struct.task_struct*, %struct.perf_event*, %struct.perf_event*, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.perf_event*) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @free_event(%struct.perf_event*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @is_orphaned_event(%struct.perf_event*) #1

declare dso_local i32 @atomic_long_inc_not_zero(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @get_ctx(%struct.perf_event_context*) #1

declare dso_local i32 @local64_set(i32*, i8*) #1

declare dso_local i32 @perf_event__header_size(%struct.perf_event*) #1

declare dso_local i32 @perf_event__id_header_size(%struct.perf_event*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @add_event_to_ctx(%struct.perf_event*, %struct.perf_event_context*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
