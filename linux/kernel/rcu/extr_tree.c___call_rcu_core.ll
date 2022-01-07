; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c___call_rcu_core.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c___call_rcu_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.rcu_data = type { i64, i64, i32, i32, i32 }
%struct.rcu_head = type { i32 }

@qhimark = common dso_local global i64 0, align 8
@DEFAULT_MAX_RCU_BLIMIT = common dso_local global i32 0, align 4
@rcu_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcu_data*, %struct.rcu_head*, i64)* @__call_rcu_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__call_rcu_core(%struct.rcu_data* %0, %struct.rcu_head* %1, i64 %2) #0 {
  %4 = alloca %struct.rcu_data*, align 8
  %5 = alloca %struct.rcu_head*, align 8
  %6 = alloca i64, align 8
  store %struct.rcu_data* %0, %struct.rcu_data** %4, align 8
  store %struct.rcu_head* %1, %struct.rcu_head** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = call i32 (...) @rcu_is_watching()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = call i32 (...) @invoke_rcu_core()
  br label %11

11:                                               ; preds = %9, %3
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @irqs_disabled_flags(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = call i32 (...) @smp_processor_id()
  %17 = call i64 @cpu_is_offline(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %11
  br label %71

20:                                               ; preds = %15
  %21 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %22 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %21, i32 0, i32 2
  %23 = call i64 @rcu_segcblist_n_cbs(i32* %22)
  %24 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %25 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @qhimark, align 8
  %28 = add nsw i64 %26, %27
  %29 = icmp sgt i64 %23, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %20
  %34 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %35 = call i32 @note_gp_changes(%struct.rcu_data* %34)
  %36 = call i32 (...) @rcu_gp_in_progress()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %40 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %43 = call i32 @rcu_accelerate_cbs_unlocked(i32 %41, %struct.rcu_data* %42)
  br label %70

44:                                               ; preds = %33
  %45 = load i32, i32* @DEFAULT_MAX_RCU_BLIMIT, align 4
  %46 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %47 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), align 8
  %49 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %50 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %55 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %54, i32 0, i32 2
  %56 = call %struct.rcu_head* @rcu_segcblist_first_pend_cb(i32* %55)
  %57 = load %struct.rcu_head*, %struct.rcu_head** %5, align 8
  %58 = icmp ne %struct.rcu_head* %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 (...) @rcu_force_quiescent_state()
  br label %61

61:                                               ; preds = %59, %53, %44
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), align 8
  %63 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %64 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %66 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %65, i32 0, i32 2
  %67 = call i64 @rcu_segcblist_n_cbs(i32* %66)
  %68 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %69 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %61, %38
  br label %71

71:                                               ; preds = %19, %70, %20
  ret void
}

declare dso_local i32 @rcu_is_watching(...) #1

declare dso_local i32 @invoke_rcu_core(...) #1

declare dso_local i64 @irqs_disabled_flags(i64) #1

declare dso_local i64 @cpu_is_offline(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rcu_segcblist_n_cbs(i32*) #1

declare dso_local i32 @note_gp_changes(%struct.rcu_data*) #1

declare dso_local i32 @rcu_gp_in_progress(...) #1

declare dso_local i32 @rcu_accelerate_cbs_unlocked(i32, %struct.rcu_data*) #1

declare dso_local %struct.rcu_head* @rcu_segcblist_first_pend_cb(i32*) #1

declare dso_local i32 @rcu_force_quiescent_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
