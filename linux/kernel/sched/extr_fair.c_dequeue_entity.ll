; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_dequeue_entity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_dequeue_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i64, %struct.sched_entity* }
%struct.sched_entity = type { i32, i64 }

@UPDATE_TG = common dso_local global i32 0, align 4
@DEQUEUE_SLEEP = common dso_local global i32 0, align 4
@DEQUEUE_SAVE = common dso_local global i32 0, align 4
@DEQUEUE_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*, i32)* @dequeue_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dequeue_entity(%struct.cfs_rq* %0, %struct.sched_entity* %1, i32 %2) #0 {
  %4 = alloca %struct.cfs_rq*, align 8
  %5 = alloca %struct.sched_entity*, align 8
  %6 = alloca i32, align 4
  store %struct.cfs_rq* %0, %struct.cfs_rq** %4, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %8 = call i32 @update_curr(%struct.cfs_rq* %7)
  %9 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %10 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %11 = load i32, i32* @UPDATE_TG, align 4
  %12 = call i32 @update_load_avg(%struct.cfs_rq* %9, %struct.sched_entity* %10, i32 %11)
  %13 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %14 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %15 = call i32 @dequeue_runnable_load_avg(%struct.cfs_rq* %13, %struct.sched_entity* %14)
  %16 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %17 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @update_stats_dequeue(%struct.cfs_rq* %16, %struct.sched_entity* %17, i32 %18)
  %20 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %21 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %22 = call i32 @clear_buddies(%struct.cfs_rq* %20, %struct.sched_entity* %21)
  %23 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %24 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %25 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %24, i32 0, i32 1
  %26 = load %struct.sched_entity*, %struct.sched_entity** %25, align 8
  %27 = icmp ne %struct.sched_entity* %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %30 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %31 = call i32 @__dequeue_entity(%struct.cfs_rq* %29, %struct.sched_entity* %30)
  br label %32

32:                                               ; preds = %28, %3
  %33 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %34 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %36 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %37 = call i32 @account_entity_dequeue(%struct.cfs_rq* %35, %struct.sched_entity* %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @DEQUEUE_SLEEP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %32
  %43 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %44 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %47 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  br label %52

52:                                               ; preds = %42, %32
  %53 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %54 = call i32 @return_cfs_rq_runtime(%struct.cfs_rq* %53)
  %55 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %56 = call i32 @update_cfs_group(%struct.sched_entity* %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @DEQUEUE_SAVE, align 4
  %59 = load i32, i32* @DEQUEUE_MOVE, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = load i32, i32* @DEQUEUE_SAVE, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %66 = call i32 @update_min_vruntime(%struct.cfs_rq* %65)
  br label %67

67:                                               ; preds = %64, %52
  ret void
}

declare dso_local i32 @update_curr(%struct.cfs_rq*) #1

declare dso_local i32 @update_load_avg(%struct.cfs_rq*, %struct.sched_entity*, i32) #1

declare dso_local i32 @dequeue_runnable_load_avg(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @update_stats_dequeue(%struct.cfs_rq*, %struct.sched_entity*, i32) #1

declare dso_local i32 @clear_buddies(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @__dequeue_entity(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @account_entity_dequeue(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @return_cfs_rq_runtime(%struct.cfs_rq*) #1

declare dso_local i32 @update_cfs_group(%struct.sched_entity*) #1

declare dso_local i32 @update_min_vruntime(%struct.cfs_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
