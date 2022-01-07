; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_enqueue_task_dl.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_enqueue_task_dl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32 }
%struct.task_struct = type { i64, i32, %struct.sched_dl_entity, i32 }
%struct.sched_dl_entity = type { i64, i64 }

@ENQUEUE_REPLENISH = common dso_local global i32 0, align 4
@TASK_ON_RQ_MIGRATING = common dso_local global i64 0, align 8
@ENQUEUE_RESTORE = common dso_local global i32 0, align 4
@ENQUEUE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*, i32)* @enqueue_task_dl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_task_dl(%struct.rq* %0, %struct.task_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.rq*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.sched_dl_entity*, align 8
  store %struct.rq* %0, %struct.rq** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %10 = call %struct.task_struct* @rt_mutex_get_top_task(%struct.task_struct* %9)
  store %struct.task_struct* %10, %struct.task_struct** %7, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 2
  store %struct.sched_dl_entity* %12, %struct.sched_dl_entity** %8, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %14 = icmp ne %struct.task_struct* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @dl_prio(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 2
  store %struct.sched_dl_entity* %29, %struct.sched_dl_entity** %8, align 8
  br label %51

30:                                               ; preds = %21, %15, %3
  %31 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @dl_prio(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %30
  %37 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ENQUEUE_REPLENISH, align 4
  %45 = icmp ne i32 %43, %44
  br label %46

46:                                               ; preds = %42, %36
  %47 = phi i1 [ true, %36 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  br label %129

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50, %27
  %52 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %53 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %51
  %58 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 2
  %60 = call i32 @dl_is_implicit(%struct.sched_dl_entity* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %64 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %63, i32 0, i32 2
  %65 = call i32 @dl_check_constrained_dl(%struct.sched_dl_entity* %64)
  br label %66

66:                                               ; preds = %62, %57, %51
  %67 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %68 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TASK_ON_RQ_MIGRATING, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @ENQUEUE_RESTORE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72, %66
  %78 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %79 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %78, i32 0, i32 2
  %80 = load %struct.rq*, %struct.rq** %4, align 8
  %81 = getelementptr inbounds %struct.rq, %struct.rq* %80, i32 0, i32 0
  %82 = call i32 @add_rq_bw(%struct.sched_dl_entity* %79, i32* %81)
  %83 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %83, i32 0, i32 2
  %85 = load %struct.rq*, %struct.rq** %4, align 8
  %86 = getelementptr inbounds %struct.rq, %struct.rq* %85, i32 0, i32 0
  %87 = call i32 @add_running_bw(%struct.sched_dl_entity* %84, i32* %86)
  br label %88

88:                                               ; preds = %77, %72
  %89 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %90 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @ENQUEUE_REPLENISH, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @ENQUEUE_WAKEUP, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %106 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %105, i32 0, i32 2
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @task_contending(%struct.sched_dl_entity* %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %99
  br label %129

110:                                              ; preds = %94, %88
  %111 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %112 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %111, i32 0, i32 2
  %113 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %8, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @enqueue_dl_entity(%struct.sched_dl_entity* %112, %struct.sched_dl_entity* %113, i32 %114)
  %116 = load %struct.rq*, %struct.rq** %4, align 8
  %117 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %118 = call i32 @task_current(%struct.rq* %116, %struct.task_struct* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %110
  %121 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %122 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.rq*, %struct.rq** %4, align 8
  %127 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %128 = call i32 @enqueue_pushable_dl_task(%struct.rq* %126, %struct.task_struct* %127)
  br label %129

129:                                              ; preds = %46, %109, %125, %120, %110
  ret void
}

declare dso_local %struct.task_struct* @rt_mutex_get_top_task(%struct.task_struct*) #1

declare dso_local i64 @dl_prio(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dl_is_implicit(%struct.sched_dl_entity*) #1

declare dso_local i32 @dl_check_constrained_dl(%struct.sched_dl_entity*) #1

declare dso_local i32 @add_rq_bw(%struct.sched_dl_entity*, i32*) #1

declare dso_local i32 @add_running_bw(%struct.sched_dl_entity*, i32*) #1

declare dso_local i32 @task_contending(%struct.sched_dl_entity*, i32) #1

declare dso_local i32 @enqueue_dl_entity(%struct.sched_dl_entity*, %struct.sched_dl_entity*, i32) #1

declare dso_local i32 @task_current(%struct.rq*, %struct.task_struct*) #1

declare dso_local i32 @enqueue_pushable_dl_task(%struct.rq*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
