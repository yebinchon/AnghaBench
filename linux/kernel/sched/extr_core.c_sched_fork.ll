; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_sched_fork.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_sched_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.task_struct*)* }
%struct.task_struct = type { i32, i32, i64, i32, i32, %struct.TYPE_4__*, i32, i32, i64, i32, i8*, i64, i32, i32 }

@TASK_NEW = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@SCHED_NORMAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@rt_sched_class = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@fair_sched_class = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAX_PRIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sched_fork(i64 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %9 = call i32 @__sched_fork(i64 %7, %struct.task_struct* %8)
  %10 = load i32, i32* @TASK_NEW, align 4
  %11 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 13
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %19 = call i32 @uclamp_fork(%struct.task_struct* %18)
  %20 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @unlikely(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %2
  %26 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %27 = call i64 @task_has_dl_policy(%struct.task_struct* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %31 = call i64 @task_has_rt_policy(%struct.task_struct* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29, %25
  %34 = load i32, i32* @SCHED_NORMAL, align 4
  %35 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 8
  %37 = call i8* @NICE_TO_PRIO(i32 0)
  %38 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %39 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 10
  store i8* %37, i8** %39, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 11
  store i64 0, i64* %41, align 8
  br label %53

42:                                               ; preds = %29
  %43 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %43, i32 0, i32 10
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @PRIO_TO_NICE(i8* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = call i8* @NICE_TO_PRIO(i32 0)
  %50 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 10
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52, %33
  %54 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %55 = call i32 @__normal_prio(%struct.task_struct* %54)
  %56 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 8
  %58 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 7
  store i32 %55, i32* %59, align 4
  %60 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %61 = call i32 @set_load_weight(%struct.task_struct* %60, i32 0)
  %62 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %62, i32 0, i32 8
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %53, %2
  %65 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @dl_prio(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %118

73:                                               ; preds = %64
  %74 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @rt_prio(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %81 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %80, i32 0, i32 5
  store %struct.TYPE_4__* @rt_sched_class, %struct.TYPE_4__** %81, align 8
  br label %85

82:                                               ; preds = %73
  %83 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %83, i32 0, i32 5
  store %struct.TYPE_4__* @fair_sched_class, %struct.TYPE_4__** %84, align 8
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %88 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %87, i32 0, i32 6
  %89 = call i32 @init_entity_runnable_average(i32* %88)
  %90 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %91 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %90, i32 0, i32 4
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @raw_spin_lock_irqsave(i32* %91, i64 %92)
  %94 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %95 = call i32 (...) @smp_processor_id()
  %96 = call i32 @__set_task_cpu(%struct.task_struct* %94, i32 %95)
  %97 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %98 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %97, i32 0, i32 5
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32 (%struct.task_struct*)*, i32 (%struct.task_struct*)** %100, align 8
  %102 = icmp ne i32 (%struct.task_struct*)* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %86
  %104 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %105 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %104, i32 0, i32 5
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32 (%struct.task_struct*)*, i32 (%struct.task_struct*)** %107, align 8
  %109 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %110 = call i32 %108(%struct.task_struct* %109)
  br label %111

111:                                              ; preds = %103, %86
  %112 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %113 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %112, i32 0, i32 4
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @raw_spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %117 = call i32 @init_task_preempt_count(%struct.task_struct* %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %111, %70
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @__sched_fork(i64, %struct.task_struct*) #1

declare dso_local i32 @uclamp_fork(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @task_has_dl_policy(%struct.task_struct*) #1

declare dso_local i64 @task_has_rt_policy(%struct.task_struct*) #1

declare dso_local i8* @NICE_TO_PRIO(i32) #1

declare dso_local i64 @PRIO_TO_NICE(i8*) #1

declare dso_local i32 @__normal_prio(%struct.task_struct*) #1

declare dso_local i32 @set_load_weight(%struct.task_struct*, i32) #1

declare dso_local i64 @dl_prio(i32) #1

declare dso_local i64 @rt_prio(i32) #1

declare dso_local i32 @init_entity_runnable_average(i32*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__set_task_cpu(%struct.task_struct*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @init_task_preempt_count(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
