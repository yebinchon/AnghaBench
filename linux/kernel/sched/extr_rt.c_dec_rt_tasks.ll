; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_dec_rt_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_dec_rt_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_rt_entity = type { i32 }
%struct.rt_rq = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_rt_entity*, %struct.rt_rq*)* @dec_rt_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec_rt_tasks(%struct.sched_rt_entity* %0, %struct.rt_rq* %1) #0 {
  %3 = alloca %struct.sched_rt_entity*, align 8
  %4 = alloca %struct.rt_rq*, align 8
  store %struct.sched_rt_entity* %0, %struct.sched_rt_entity** %3, align 8
  store %struct.rt_rq* %1, %struct.rt_rq** %4, align 8
  %5 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %6 = call i32 @rt_se_prio(%struct.sched_rt_entity* %5)
  %7 = call i32 @rt_prio(i32 %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %13 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %20 = call i64 @rt_se_nr_running(%struct.sched_rt_entity* %19)
  %21 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %22 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %26 = call i64 @rt_se_rr_nr_running(%struct.sched_rt_entity* %25)
  %27 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %28 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  %33 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %34 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %35 = call i32 @rt_se_prio(%struct.sched_rt_entity* %34)
  %36 = call i32 @dec_rt_prio(%struct.rt_rq* %33, i32 %35)
  %37 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %38 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %39 = call i32 @dec_rt_migration(%struct.sched_rt_entity* %37, %struct.rt_rq* %38)
  %40 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %41 = load %struct.rt_rq*, %struct.rt_rq** %4, align 8
  %42 = call i32 @dec_rt_group(%struct.sched_rt_entity* %40, %struct.rt_rq* %41)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rt_prio(i32) #1

declare dso_local i32 @rt_se_prio(%struct.sched_rt_entity*) #1

declare dso_local i64 @rt_se_nr_running(%struct.sched_rt_entity*) #1

declare dso_local i64 @rt_se_rr_nr_running(%struct.sched_rt_entity*) #1

declare dso_local i32 @dec_rt_prio(%struct.rt_rq*, i32) #1

declare dso_local i32 @dec_rt_migration(%struct.sched_rt_entity*, %struct.rt_rq*) #1

declare dso_local i32 @dec_rt_group(%struct.sched_rt_entity*, %struct.rt_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
