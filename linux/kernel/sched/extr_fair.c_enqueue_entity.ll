; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_enqueue_entity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_enqueue_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i32, i64, %struct.sched_entity* }
%struct.sched_entity = type { i32, i32 }

@ENQUEUE_WAKEUP = common dso_local global i32 0, align 4
@ENQUEUE_MIGRATED = common dso_local global i32 0, align 4
@UPDATE_TG = common dso_local global i32 0, align 4
@DO_ATTACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*, i32)* @enqueue_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_entity(%struct.cfs_rq* %0, %struct.sched_entity* %1, i32 %2) #0 {
  %4 = alloca %struct.cfs_rq*, align 8
  %5 = alloca %struct.sched_entity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cfs_rq* %0, %struct.cfs_rq** %4, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @ENQUEUE_WAKEUP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ENQUEUE_MIGRATED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i1 [ true, %3 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %22 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %21, i32 0, i32 2
  %23 = load %struct.sched_entity*, %struct.sched_entity** %22, align 8
  %24 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %25 = icmp eq %struct.sched_entity* %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %34 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %37 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  br label %42

42:                                               ; preds = %32, %29, %18
  %43 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %44 = call i32 @update_curr(%struct.cfs_rq* %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %52 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %55 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  br label %60

60:                                               ; preds = %50, %47, %42
  %61 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %62 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %63 = load i32, i32* @UPDATE_TG, align 4
  %64 = load i32, i32* @DO_ATTACH, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @update_load_avg(%struct.cfs_rq* %61, %struct.sched_entity* %62, i32 %65)
  %67 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %68 = call i32 @update_cfs_group(%struct.sched_entity* %67)
  %69 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %70 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %71 = call i32 @enqueue_runnable_load_avg(%struct.cfs_rq* %69, %struct.sched_entity* %70)
  %72 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %73 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %74 = call i32 @account_entity_enqueue(%struct.cfs_rq* %72, %struct.sched_entity* %73)
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @ENQUEUE_WAKEUP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %60
  %80 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %81 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %82 = call i32 @place_entity(%struct.cfs_rq* %80, %struct.sched_entity* %81, i32 0)
  br label %83

83:                                               ; preds = %79, %60
  %84 = call i32 (...) @check_schedstat_required()
  %85 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %86 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @update_stats_enqueue(%struct.cfs_rq* %85, %struct.sched_entity* %86, i32 %87)
  %89 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %90 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %91 = call i32 @check_spread(%struct.cfs_rq* %89, %struct.sched_entity* %90)
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %83
  %95 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %96 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %97 = call i32 @__enqueue_entity(%struct.cfs_rq* %95, %struct.sched_entity* %96)
  br label %98

98:                                               ; preds = %94, %83
  %99 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %100 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %99, i32 0, i32 0
  store i32 1, i32* %100, align 4
  %101 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %102 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %107 = call i32 @list_add_leaf_cfs_rq(%struct.cfs_rq* %106)
  %108 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %109 = call i32 @check_enqueue_throttle(%struct.cfs_rq* %108)
  br label %110

110:                                              ; preds = %105, %98
  ret void
}

declare dso_local i32 @update_curr(%struct.cfs_rq*) #1

declare dso_local i32 @update_load_avg(%struct.cfs_rq*, %struct.sched_entity*, i32) #1

declare dso_local i32 @update_cfs_group(%struct.sched_entity*) #1

declare dso_local i32 @enqueue_runnable_load_avg(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @account_entity_enqueue(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @place_entity(%struct.cfs_rq*, %struct.sched_entity*, i32) #1

declare dso_local i32 @check_schedstat_required(...) #1

declare dso_local i32 @update_stats_enqueue(%struct.cfs_rq*, %struct.sched_entity*, i32) #1

declare dso_local i32 @check_spread(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @__enqueue_entity(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @list_add_leaf_cfs_rq(%struct.cfs_rq*) #1

declare dso_local i32 @check_enqueue_throttle(%struct.cfs_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
