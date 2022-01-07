; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_reweight_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_reweight_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.sched_entity }
%struct.sched_entity = type { %struct.load_weight }
%struct.load_weight = type { i32 }
%struct.cfs_rq = type { i32 }

@sched_prio_to_weight = common dso_local global i32* null, align 8
@sched_prio_to_wmult = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reweight_task(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sched_entity*, align 8
  %6 = alloca %struct.cfs_rq*, align 8
  %7 = alloca %struct.load_weight*, align 8
  %8 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  store %struct.sched_entity* %10, %struct.sched_entity** %5, align 8
  %11 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %12 = call %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* %11)
  store %struct.cfs_rq* %12, %struct.cfs_rq** %6, align 8
  %13 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %14 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %13, i32 0, i32 0
  store %struct.load_weight* %14, %struct.load_weight** %7, align 8
  %15 = load i32*, i32** @sched_prio_to_weight, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @scale_load(i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.cfs_rq*, %struct.cfs_rq** %6, align 8
  %22 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @reweight_entity(%struct.cfs_rq* %21, %struct.sched_entity* %22, i64 %23, i64 %24)
  %26 = load i32*, i32** @sched_prio_to_wmult, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.load_weight*, %struct.load_weight** %7, align 8
  %32 = getelementptr inbounds %struct.load_weight, %struct.load_weight* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  ret void
}

declare dso_local %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity*) #1

declare dso_local i64 @scale_load(i32) #1

declare dso_local i32 @reweight_entity(%struct.cfs_rq*, %struct.sched_entity*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
