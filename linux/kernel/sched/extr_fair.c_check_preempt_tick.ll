; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_check_preempt_tick.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_check_preempt_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i32 }
%struct.sched_entity = type { i64, i64, i64 }

@sysctl_sched_min_granularity = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*)* @check_preempt_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_preempt_tick(%struct.cfs_rq* %0, %struct.sched_entity* %1) #0 {
  %3 = alloca %struct.cfs_rq*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sched_entity*, align 8
  %8 = alloca i64, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %3, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %4, align 8
  %9 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %10 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %11 = call i64 @sched_slice(%struct.cfs_rq* %9, %struct.sched_entity* %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %13 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %16 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %24 = call i32 @rq_of(%struct.cfs_rq* %23)
  %25 = call i32 @resched_curr(i32 %24)
  %26 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %27 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %28 = call i32 @clear_buddies(%struct.cfs_rq* %26, %struct.sched_entity* %27)
  br label %55

29:                                               ; preds = %2
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @sysctl_sched_min_granularity, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %55

34:                                               ; preds = %29
  %35 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %36 = call %struct.sched_entity* @__pick_first_entity(%struct.cfs_rq* %35)
  store %struct.sched_entity* %36, %struct.sched_entity** %7, align 8
  %37 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %38 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sched_entity*, %struct.sched_entity** %7, align 8
  %41 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ult i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %55

47:                                               ; preds = %34
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %53 = call i32 @rq_of(%struct.cfs_rq* %52)
  %54 = call i32 @resched_curr(i32 %53)
  br label %55

55:                                               ; preds = %22, %33, %46, %51, %47
  ret void
}

declare dso_local i64 @sched_slice(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @resched_curr(i32) #1

declare dso_local i32 @rq_of(%struct.cfs_rq*) #1

declare dso_local i32 @clear_buddies(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local %struct.sched_entity* @__pick_first_entity(%struct.cfs_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
