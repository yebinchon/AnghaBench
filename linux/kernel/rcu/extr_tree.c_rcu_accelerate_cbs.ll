; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_accelerate_cbs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_accelerate_cbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.rcu_node = type { i32 }
%struct.rcu_data = type { i32, i32 }

@rcu_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RCU_WAIT_TAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"AccWaitCB\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"AccReadyCB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcu_node*, %struct.rcu_data*)* @rcu_accelerate_cbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_accelerate_cbs(%struct.rcu_node* %0, %struct.rcu_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcu_node*, align 8
  %5 = alloca %struct.rcu_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rcu_node* %0, %struct.rcu_node** %4, align 8
  store %struct.rcu_data* %1, %struct.rcu_data** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %9 = call i32 @rcu_lockdep_assert_cblist_protected(%struct.rcu_data* %8)
  %10 = load %struct.rcu_node*, %struct.rcu_node** %4, align 8
  %11 = call i32 @raw_lockdep_assert_held_rcu_node(%struct.rcu_node* %10)
  %12 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %13 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %12, i32 0, i32 1
  %14 = call i32 @rcu_segcblist_pend_cbs(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = call i64 @rcu_seq_snap(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 1))
  store i64 %18, i64* %6, align 8
  %19 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %20 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %19, i32 0, i32 1
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @rcu_segcblist_accelerate(i32* %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.rcu_node*, %struct.rcu_node** %4, align 8
  %26 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @rcu_start_this_gp(%struct.rcu_node* %25, %struct.rcu_data* %26, i64 %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %31 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %30, i32 0, i32 1
  %32 = load i32, i32* @RCU_WAIT_TAIL, align 4
  %33 = call i64 @rcu_segcblist_restempty(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), align 4
  %37 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %38 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @TPS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @trace_rcu_grace_period(i32 %36, i32 %39, i32 %40)
  br label %49

42:                                               ; preds = %29
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), align 4
  %44 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %45 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @TPS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 @trace_rcu_grace_period(i32 %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %35
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @rcu_lockdep_assert_cblist_protected(%struct.rcu_data*) #1

declare dso_local i32 @raw_lockdep_assert_held_rcu_node(%struct.rcu_node*) #1

declare dso_local i32 @rcu_segcblist_pend_cbs(i32*) #1

declare dso_local i64 @rcu_seq_snap(i32*) #1

declare dso_local i64 @rcu_segcblist_accelerate(i32*, i64) #1

declare dso_local i32 @rcu_start_this_gp(%struct.rcu_node*, %struct.rcu_data*, i64) #1

declare dso_local i64 @rcu_segcblist_restempty(i32*, i32) #1

declare dso_local i32 @trace_rcu_grace_period(i32, i32, i32) #1

declare dso_local i32 @TPS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
