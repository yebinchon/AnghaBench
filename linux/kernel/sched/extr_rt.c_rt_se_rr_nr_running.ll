; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_rt_se_rr_nr_running.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_rt_se_rr_nr_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_rt_entity = type { i32 }
%struct.rt_rq = type { i32 }
%struct.task_struct = type { i64 }

@SCHED_RR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sched_rt_entity*)* @rt_se_rr_nr_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_se_rr_nr_running(%struct.sched_rt_entity* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sched_rt_entity*, align 8
  %4 = alloca %struct.rt_rq*, align 8
  %5 = alloca %struct.task_struct*, align 8
  store %struct.sched_rt_entity* %0, %struct.sched_rt_entity** %3, align 8
  %6 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %7 = call %struct.rt_rq* @group_rt_rq(%struct.sched_rt_entity* %6)
  store %struct.rt_rq* %7, %struct.rt_rq** %4, align 8
  %8 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %9 = icmp ne %struct.rt_rq* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %12 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %16 = call %struct.task_struct* @rt_task_of(%struct.sched_rt_entity* %15)
  store %struct.task_struct* %16, %struct.task_struct** %5, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SCHED_RR, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %14, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.rt_rq* @group_rt_rq(%struct.sched_rt_entity*) #1

declare dso_local %struct.task_struct* @rt_task_of(%struct.sched_rt_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
