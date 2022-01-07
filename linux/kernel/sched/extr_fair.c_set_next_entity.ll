; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_set_next_entity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_set_next_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { %struct.sched_entity* }
%struct.sched_entity = type { i64, i64, %struct.TYPE_9__, %struct.TYPE_8__, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@UPDATE_TG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*)* @set_next_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_next_entity(%struct.cfs_rq* %0, %struct.sched_entity* %1) #0 {
  %3 = alloca %struct.cfs_rq*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %3, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %4, align 8
  %5 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %6 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %11 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %12 = call i32 @update_stats_wait_end(%struct.cfs_rq* %10, %struct.sched_entity* %11)
  %13 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %14 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %15 = call i32 @__dequeue_entity(%struct.cfs_rq* %13, %struct.sched_entity* %14)
  %16 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %17 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %18 = load i32, i32* @UPDATE_TG, align 4
  %19 = call i32 @update_load_avg(%struct.cfs_rq* %16, %struct.sched_entity* %17, i32 %18)
  br label %20

20:                                               ; preds = %9, %2
  %21 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %22 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %23 = call i32 @update_stats_curr_start(%struct.cfs_rq* %21, %struct.sched_entity* %22)
  %24 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %25 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %26 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %25, i32 0, i32 0
  store %struct.sched_entity* %24, %struct.sched_entity** %26, align 8
  %27 = call i64 (...) @schedstat_enabled()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %20
  %30 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %31 = call %struct.TYPE_10__* @rq_of(%struct.cfs_rq* %30)
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %37 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 2, %39
  %41 = icmp sge i32 %35, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %29
  %43 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %44 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %48 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @schedstat_val(i32 %50)
  %52 = trunc i64 %51 to i32
  %53 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %54 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %57 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = call i32 @max(i32 %52, i64 %59)
  %61 = call i32 @schedstat_set(i32 %46, i32 %60)
  br label %62

62:                                               ; preds = %42, %29, %20
  %63 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %64 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %67 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  ret void
}

declare dso_local i32 @update_stats_wait_end(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @__dequeue_entity(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @update_load_avg(%struct.cfs_rq*, %struct.sched_entity*, i32) #1

declare dso_local i32 @update_stats_curr_start(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i64 @schedstat_enabled(...) #1

declare dso_local %struct.TYPE_10__* @rq_of(%struct.cfs_rq*) #1

declare dso_local i32 @schedstat_set(i32, i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i64 @schedstat_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
