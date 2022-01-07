; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_inc_rt_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_inc_rt_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_rt_entity = type { i32 }
%struct.rt_rq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_rt_entity*, %struct.rt_rq*)* @inc_rt_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_rt_tasks(%struct.sched_rt_entity* %0, %struct.rt_rq* %1) #0 {
  %3 = alloca %struct.sched_rt_entity*, align 8
  %4 = alloca %struct.rt_rq*, align 8
  %5 = alloca i32, align 4
  store %struct.sched_rt_entity* %0, %struct.sched_rt_entity** %3, align 8
  store %struct.rt_rq* %1, %struct.rt_rq** %4, align 8
  %6 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %7 = call i32 @rt_se_prio(%struct.sched_rt_entity* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @rt_prio(i32 %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %15 = call i64 @rt_se_nr_running(%struct.sched_rt_entity* %14)
  %16 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %17 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 4
  %22 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %23 = call i64 @rt_se_rr_nr_running(%struct.sched_rt_entity* %22)
  %24 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %25 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %23
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  %30 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @inc_rt_prio(%struct.rt_rq* %30, i32 %31)
  %33 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %34 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %35 = call i32 @inc_rt_migration(%struct.sched_rt_entity* %33, %struct.rt_rq* %34)
  %36 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %37 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %38 = call i32 @inc_rt_group(%struct.sched_rt_entity* %36, %struct.rt_rq* %37)
  ret void
}

declare dso_local i32 @rt_se_prio(%struct.sched_rt_entity*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rt_prio(i32) #1

declare dso_local i64 @rt_se_nr_running(%struct.sched_rt_entity*) #1

declare dso_local i64 @rt_se_rr_nr_running(%struct.sched_rt_entity*) #1

declare dso_local i32 @inc_rt_prio(%struct.rt_rq*, i32) #1

declare dso_local i32 @inc_rt_migration(%struct.sched_rt_entity*, %struct.rt_rq*) #1

declare dso_local i32 @inc_rt_group(%struct.sched_rt_entity*, %struct.rt_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
