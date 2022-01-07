; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_set_user_nice.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_set_user_nice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i8* }
%struct.rq_flags = type { i32 }
%struct.rq = type { i32 }

@MIN_NICE = common dso_local global i64 0, align 8
@MAX_NICE = common dso_local global i64 0, align 8
@DEQUEUE_SAVE = common dso_local global i32 0, align 4
@DEQUEUE_NOCLOCK = common dso_local global i32 0, align 4
@ENQUEUE_RESTORE = common dso_local global i32 0, align 4
@ENQUEUE_NOCLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_user_nice(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rq_flags, align 4
  %10 = alloca %struct.rq*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = call i64 @task_nice(%struct.task_struct* %11)
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @MIN_NICE, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @MAX_NICE, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15, %2
  br label %117

24:                                               ; preds = %19
  %25 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %26 = call %struct.rq* @task_rq_lock(%struct.task_struct* %25, %struct.rq_flags* %9)
  store %struct.rq* %26, %struct.rq** %10, align 8
  %27 = load %struct.rq*, %struct.rq** %10, align 8
  %28 = call i32 @update_rq_clock(%struct.rq* %27)
  %29 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %30 = call i64 @task_has_dl_policy(%struct.task_struct* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = call i64 @task_has_rt_policy(%struct.task_struct* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %24
  %37 = load i64, i64* %4, align 8
  %38 = call i8* @NICE_TO_PRIO(i64 %37)
  %39 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  br label %113

41:                                               ; preds = %32
  %42 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %43 = call i32 @task_on_rq_queued(%struct.task_struct* %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.rq*, %struct.rq** %10, align 8
  %45 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %46 = call i32 @task_current(%struct.rq* %44, %struct.task_struct* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.rq*, %struct.rq** %10, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %52 = load i32, i32* @DEQUEUE_SAVE, align 4
  %53 = load i32, i32* @DEQUEUE_NOCLOCK, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @dequeue_task(%struct.rq* %50, %struct.task_struct* %51, i32 %54)
  br label %56

56:                                               ; preds = %49, %41
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.rq*, %struct.rq** %10, align 8
  %61 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %62 = call i32 @put_prev_task(%struct.rq* %60, %struct.task_struct* %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i64, i64* %4, align 8
  %65 = call i8* @NICE_TO_PRIO(i64 %64)
  %66 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %67 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %69 = call i32 @set_load_weight(%struct.task_struct* %68, i32 1)
  %70 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %7, align 4
  %73 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %74 = call i32 @effective_prio(%struct.task_struct* %73)
  %75 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %76 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %63
  %85 = load %struct.rq*, %struct.rq** %10, align 8
  %86 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %87 = load i32, i32* @ENQUEUE_RESTORE, align 4
  %88 = load i32, i32* @ENQUEUE_NOCLOCK, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @enqueue_task(%struct.rq* %85, %struct.task_struct* %86, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %8, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load %struct.rq*, %struct.rq** %10, align 8
  %98 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %99 = call i64 @task_running(%struct.rq* %97, %struct.task_struct* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96, %84
  %102 = load %struct.rq*, %struct.rq** %10, align 8
  %103 = call i32 @resched_curr(%struct.rq* %102)
  br label %104

104:                                              ; preds = %101, %96, %93
  br label %105

105:                                              ; preds = %104, %63
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.rq*, %struct.rq** %10, align 8
  %110 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %111 = call i32 @set_next_task(%struct.rq* %109, %struct.task_struct* %110)
  br label %112

112:                                              ; preds = %108, %105
  br label %113

113:                                              ; preds = %112, %36
  %114 = load %struct.rq*, %struct.rq** %10, align 8
  %115 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %116 = call i32 @task_rq_unlock(%struct.rq* %114, %struct.task_struct* %115, %struct.rq_flags* %9)
  br label %117

117:                                              ; preds = %113, %23
  ret void
}

declare dso_local i64 @task_nice(%struct.task_struct*) #1

declare dso_local %struct.rq* @task_rq_lock(%struct.task_struct*, %struct.rq_flags*) #1

declare dso_local i32 @update_rq_clock(%struct.rq*) #1

declare dso_local i64 @task_has_dl_policy(%struct.task_struct*) #1

declare dso_local i64 @task_has_rt_policy(%struct.task_struct*) #1

declare dso_local i8* @NICE_TO_PRIO(i64) #1

declare dso_local i32 @task_on_rq_queued(%struct.task_struct*) #1

declare dso_local i32 @task_current(%struct.rq*, %struct.task_struct*) #1

declare dso_local i32 @dequeue_task(%struct.rq*, %struct.task_struct*, i32) #1

declare dso_local i32 @put_prev_task(%struct.rq*, %struct.task_struct*) #1

declare dso_local i32 @set_load_weight(%struct.task_struct*, i32) #1

declare dso_local i32 @effective_prio(%struct.task_struct*) #1

declare dso_local i32 @enqueue_task(%struct.rq*, %struct.task_struct*, i32) #1

declare dso_local i64 @task_running(%struct.rq*, %struct.task_struct*) #1

declare dso_local i32 @resched_curr(%struct.rq*) #1

declare dso_local i32 @set_next_task(%struct.rq*, %struct.task_struct*) #1

declare dso_local i32 @task_rq_unlock(%struct.rq*, %struct.task_struct*, %struct.rq_flags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
