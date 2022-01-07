; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_task_non_contending.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_task_non_contending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.sched_dl_entity }
%struct.sched_dl_entity = type { i64, i32, i64, i32, i32, i32, %struct.hrtimer }
%struct.hrtimer = type { i32 }
%struct.dl_rq = type { i32 }
%struct.rq = type { i32 }
%struct.dl_bw = type { i32 }

@TASK_DEAD = common dso_local global i64 0, align 8
@HRTIMER_MODE_REL_HARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @task_non_contending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_non_contending(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.sched_dl_entity*, align 8
  %4 = alloca %struct.hrtimer*, align 8
  %5 = alloca %struct.dl_rq*, align 8
  %6 = alloca %struct.rq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dl_bw*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 1
  store %struct.sched_dl_entity* %10, %struct.sched_dl_entity** %3, align 8
  %11 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %12 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %11, i32 0, i32 6
  store %struct.hrtimer* %12, %struct.hrtimer** %4, align 8
  %13 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %14 = call %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* %13)
  store %struct.dl_rq* %14, %struct.dl_rq** %5, align 8
  %15 = load %struct.dl_rq*, %struct.dl_rq** %5, align 8
  %16 = call %struct.rq* @rq_of_dl_rq(%struct.dl_rq* %15)
  store %struct.rq* %16, %struct.rq** %6, align 8
  %17 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %18 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %120

22:                                               ; preds = %1
  %23 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %24 = call i64 @dl_entity_is_special(%struct.sched_dl_entity* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %120

27:                                               ; preds = %22
  %28 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %29 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %33 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %36 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %39 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %43 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @div64_long(i32 %41, i64 %44)
  %46 = sub nsw i64 %34, %45
  store i64 %46, i64* %7, align 8
  %47 = load %struct.rq*, %struct.rq** %6, align 8
  %48 = call i64 @rq_clock(%struct.rq* %47)
  %49 = load i64, i64* %7, align 8
  %50 = sub nsw i64 %49, %48
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %27
  %54 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %55 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %54, i32 0, i32 6
  %56 = call i64 @hrtimer_active(%struct.hrtimer* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %110

58:                                               ; preds = %53, %27
  %59 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %60 = call i64 @dl_task(%struct.task_struct* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %64 = load %struct.dl_rq*, %struct.dl_rq** %5, align 8
  %65 = call i32 @sub_running_bw(%struct.sched_dl_entity* %63, %struct.dl_rq* %64)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %68 = call i64 @dl_task(%struct.task_struct* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %72 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TASK_DEAD, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %109

76:                                               ; preds = %70, %66
  %77 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %78 = call i32 @task_cpu(%struct.task_struct* %77)
  %79 = call %struct.dl_bw* @dl_bw_of(i32 %78)
  store %struct.dl_bw* %79, %struct.dl_bw** %8, align 8
  %80 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %81 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TASK_DEAD, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %76
  %86 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %87 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %86, i32 0, i32 1
  %88 = load %struct.rq*, %struct.rq** %6, align 8
  %89 = getelementptr inbounds %struct.rq, %struct.rq* %88, i32 0, i32 0
  %90 = call i32 @sub_rq_bw(%struct.sched_dl_entity* %87, i32* %89)
  br label %91

91:                                               ; preds = %85, %76
  %92 = load %struct.dl_bw*, %struct.dl_bw** %8, align 8
  %93 = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %92, i32 0, i32 0
  %94 = call i32 @raw_spin_lock(i32* %93)
  %95 = load %struct.dl_bw*, %struct.dl_bw** %8, align 8
  %96 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %97 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %101 = call i32 @task_cpu(%struct.task_struct* %100)
  %102 = call i32 @dl_bw_cpus(i32 %101)
  %103 = call i32 @__dl_sub(%struct.dl_bw* %95, i32 %99, i32 %102)
  %104 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %105 = call i32 @__dl_clear_params(%struct.task_struct* %104)
  %106 = load %struct.dl_bw*, %struct.dl_bw** %8, align 8
  %107 = getelementptr inbounds %struct.dl_bw, %struct.dl_bw* %106, i32 0, i32 0
  %108 = call i32 @raw_spin_unlock(i32* %107)
  br label %109

109:                                              ; preds = %91, %70
  br label %120

110:                                              ; preds = %53
  %111 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %112 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %111, i32 0, i32 1
  store i32 1, i32* %112, align 8
  %113 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %114 = call i32 @get_task_struct(%struct.task_struct* %113)
  %115 = load %struct.hrtimer*, %struct.hrtimer** %4, align 8
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @ns_to_ktime(i64 %116)
  %118 = load i32, i32* @HRTIMER_MODE_REL_HARD, align 4
  %119 = call i32 @hrtimer_start(%struct.hrtimer* %115, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %110, %109, %26, %21
  ret void
}

declare dso_local %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity*) #1

declare dso_local %struct.rq* @rq_of_dl_rq(%struct.dl_rq*) #1

declare dso_local i64 @dl_entity_is_special(%struct.sched_dl_entity*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @div64_long(i32, i64) #1

declare dso_local i64 @rq_clock(%struct.rq*) #1

declare dso_local i64 @hrtimer_active(%struct.hrtimer*) #1

declare dso_local i64 @dl_task(%struct.task_struct*) #1

declare dso_local i32 @sub_running_bw(%struct.sched_dl_entity*, %struct.dl_rq*) #1

declare dso_local %struct.dl_bw* @dl_bw_of(i32) #1

declare dso_local i32 @task_cpu(%struct.task_struct*) #1

declare dso_local i32 @sub_rq_bw(%struct.sched_dl_entity*, i32*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @__dl_sub(%struct.dl_bw*, i32, i32) #1

declare dso_local i32 @dl_bw_cpus(i32) #1

declare dso_local i32 @__dl_clear_params(%struct.task_struct*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @hrtimer_start(%struct.hrtimer*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
