; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_attach_task_cfs_rq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_attach_task_cfs_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.sched_entity }
%struct.sched_entity = type { i32 }
%struct.cfs_rq = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @attach_task_cfs_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_task_cfs_rq(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.sched_entity*, align 8
  %4 = alloca %struct.cfs_rq*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 0
  store %struct.sched_entity* %6, %struct.sched_entity** %3, align 8
  %7 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %8 = call %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity* %7)
  store %struct.cfs_rq* %8, %struct.cfs_rq** %4, align 8
  %9 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %10 = call i32 @attach_entity_cfs_rq(%struct.sched_entity* %9)
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = call i32 @vruntime_normalized(%struct.task_struct* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %16 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %19 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  br label %24

24:                                               ; preds = %14, %1
  ret void
}

declare dso_local %struct.cfs_rq* @cfs_rq_of(%struct.sched_entity*) #1

declare dso_local i32 @attach_entity_cfs_rq(%struct.sched_entity*) #1

declare dso_local i32 @vruntime_normalized(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
