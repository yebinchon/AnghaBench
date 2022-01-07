; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_pending.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_data = type { i64, i32, i32, %struct.TYPE_4__, i64, %struct.rcu_node* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rcu_node = type { i32 }

@rcu_data = common dso_local global i32 0, align 4
@CONFIG_RCU_NOCB_CPU = common dso_local global i32 0, align 4
@RCU_NEXT_READY_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rcu_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_pending() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rcu_data*, align 8
  %3 = alloca %struct.rcu_node*, align 8
  %4 = call %struct.rcu_data* @this_cpu_ptr(i32* @rcu_data)
  store %struct.rcu_data* %4, %struct.rcu_data** %2, align 8
  %5 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %6 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %5, i32 0, i32 5
  %7 = load %struct.rcu_node*, %struct.rcu_node** %6, align 8
  store %struct.rcu_node* %7, %struct.rcu_node** %3, align 8
  %8 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %9 = call i32 @check_cpu_stall(%struct.rcu_data* %8)
  %10 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %11 = call i64 @rcu_nocb_need_deferred_wakeup(%struct.rcu_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %78

14:                                               ; preds = %0
  %15 = call i64 (...) @rcu_nohz_full_cpu()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %78

18:                                               ; preds = %14
  %19 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %20 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %25 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 1, i32* %1, align 4
  br label %78

31:                                               ; preds = %23, %18
  %32 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %33 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %32, i32 0, i32 2
  %34 = call i64 @rcu_segcblist_ready_cbs(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %1, align 4
  br label %78

37:                                               ; preds = %31
  %38 = call i32 (...) @rcu_gp_in_progress()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %37
  %41 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %42 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %41, i32 0, i32 2
  %43 = call i64 @rcu_segcblist_is_enabled(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load i32, i32* @CONFIG_RCU_NOCB_CPU, align 4
  %47 = call i32 @IS_ENABLED(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %51 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %50, i32 0, i32 2
  %52 = call i32 @rcu_segcblist_is_offloaded(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49, %45
  %55 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %56 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %55, i32 0, i32 2
  %57 = load i32, i32* @RCU_NEXT_READY_TAIL, align 4
  %58 = call i32 @rcu_segcblist_restempty(i32* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  store i32 1, i32* %1, align 4
  br label %78

61:                                               ; preds = %54, %49, %40, %37
  %62 = load %struct.rcu_node*, %struct.rcu_node** %3, align 8
  %63 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %62, i32 0, i32 0
  %64 = call i64 @rcu_seq_current(i32* %63)
  %65 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %66 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %61
  %70 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %71 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @READ_ONCE(i32 %72)
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69, %61
  store i32 1, i32* %1, align 4
  br label %78

77:                                               ; preds = %69
  store i32 0, i32* %1, align 4
  br label %78

78:                                               ; preds = %77, %76, %60, %36, %30, %17, %13
  %79 = load i32, i32* %1, align 4
  ret i32 %79
}

declare dso_local %struct.rcu_data* @this_cpu_ptr(i32*) #1

declare dso_local i32 @check_cpu_stall(%struct.rcu_data*) #1

declare dso_local i64 @rcu_nocb_need_deferred_wakeup(%struct.rcu_data*) #1

declare dso_local i64 @rcu_nohz_full_cpu(...) #1

declare dso_local i64 @rcu_segcblist_ready_cbs(i32*) #1

declare dso_local i32 @rcu_gp_in_progress(...) #1

declare dso_local i64 @rcu_segcblist_is_enabled(i32*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @rcu_segcblist_is_offloaded(i32*) #1

declare dso_local i32 @rcu_segcblist_restempty(i32*, i32) #1

declare dso_local i64 @rcu_seq_current(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
