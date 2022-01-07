; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_reweight_entity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_reweight_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { %struct.sched_entity* }
%struct.sched_entity = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8* }

@LOAD_AVG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*, i64, i64)* @reweight_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reweight_entity(%struct.cfs_rq* %0, %struct.sched_entity* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.cfs_rq*, align 8
  %6 = alloca %struct.sched_entity*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %5, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %10 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %4
  %14 = load %struct.cfs_rq*, %struct.cfs_rq** %5, align 8
  %15 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %14, i32 0, i32 0
  %16 = load %struct.sched_entity*, %struct.sched_entity** %15, align 8
  %17 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %18 = icmp eq %struct.sched_entity* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.cfs_rq*, %struct.cfs_rq** %5, align 8
  %21 = call i32 @update_curr(%struct.cfs_rq* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.cfs_rq*, %struct.cfs_rq** %5, align 8
  %24 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %25 = call i32 @account_entity_dequeue(%struct.cfs_rq* %23, %struct.sched_entity* %24)
  %26 = load %struct.cfs_rq*, %struct.cfs_rq** %5, align 8
  %27 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %28 = call i32 @dequeue_runnable_load_avg(%struct.cfs_rq* %26, %struct.sched_entity* %27)
  br label %29

29:                                               ; preds = %22, %4
  %30 = load %struct.cfs_rq*, %struct.cfs_rq** %5, align 8
  %31 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %32 = call i32 @dequeue_load_avg(%struct.cfs_rq* %30, %struct.sched_entity* %31)
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %35 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %37 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %36, i32 0, i32 3
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @update_load_set(i32* %37, i64 %38)
  %40 = load %struct.cfs_rq*, %struct.cfs_rq** %5, align 8
  %41 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %42 = call i32 @enqueue_load_avg(%struct.cfs_rq* %40, %struct.sched_entity* %41)
  %43 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %44 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %29
  %48 = load %struct.cfs_rq*, %struct.cfs_rq** %5, align 8
  %49 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %50 = call i32 @account_entity_enqueue(%struct.cfs_rq* %48, %struct.sched_entity* %49)
  %51 = load %struct.cfs_rq*, %struct.cfs_rq** %5, align 8
  %52 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %53 = call i32 @enqueue_runnable_load_avg(%struct.cfs_rq* %51, %struct.sched_entity* %52)
  br label %54

54:                                               ; preds = %47, %29
  ret void
}

declare dso_local i32 @update_curr(%struct.cfs_rq*) #1

declare dso_local i32 @account_entity_dequeue(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @dequeue_runnable_load_avg(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @dequeue_load_avg(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @update_load_set(i32*, i64) #1

declare dso_local i32 @enqueue_load_avg(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @account_entity_enqueue(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @enqueue_runnable_load_avg(%struct.cfs_rq*, %struct.sched_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
