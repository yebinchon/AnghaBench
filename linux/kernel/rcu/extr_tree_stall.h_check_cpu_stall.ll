; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_stall.h_check_cpu_stall.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_stall.h_check_cpu_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rcu_data = type { i64, %struct.rcu_node* }
%struct.rcu_node = type { i32 }

@rcu_cpu_stall_suppress = common dso_local global i64 0, align 8
@rcu_kick_kthreads = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@rcu_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@rcu_cpu_stall_ftrace_dump = common dso_local global i64 0, align 8
@DUMP_ALL = common dso_local global i32 0, align 4
@RCU_STALL_RAT_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcu_data*)* @check_cpu_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_cpu_stall(%struct.rcu_data* %0) #0 {
  %2 = alloca %struct.rcu_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rcu_node*, align 8
  store %struct.rcu_data* %0, %struct.rcu_data** %2, align 8
  %10 = load i64, i64* @rcu_cpu_stall_suppress, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @rcu_kick_kthreads, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %1
  %16 = call i64 (...) @rcu_gp_in_progress()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %12
  br label %110

19:                                               ; preds = %15
  %20 = call i32 (...) @rcu_stall_kick_kthreads()
  %21 = load i32, i32* @jiffies, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 1), align 4
  %24 = call i64 @READ_ONCE(i32 %23)
  store i64 %24, i64* %3, align 8
  %25 = call i32 (...) @smp_rmb()
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), align 4
  %27 = call i64 @READ_ONCE(i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = call i32 (...) @smp_rmb()
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 2), align 4
  %30 = call i64 @READ_ONCE(i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = call i32 (...) @smp_rmb()
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 1), align 4
  %33 = call i64 @READ_ONCE(i32 %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %19
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @ULONG_CMP_LT(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @ULONG_CMP_GE(i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37, %19
  br label %110

48:                                               ; preds = %42
  %49 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %50 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %49, i32 0, i32 1
  %51 = load %struct.rcu_node*, %struct.rcu_node** %50, align 8
  store %struct.rcu_node* %51, %struct.rcu_node** %9, align 8
  %52 = load i32, i32* @jiffies, align 4
  %53 = call i32 (...) @rcu_jiffies_till_stall_check()
  %54 = mul nsw i32 3, %53
  %55 = add nsw i32 %52, %54
  %56 = add nsw i32 %55, 3
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %7, align 8
  %58 = call i64 (...) @rcu_gp_in_progress()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %48
  %61 = load %struct.rcu_node*, %struct.rcu_node** %9, align 8
  %62 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @READ_ONCE(i32 %63)
  %65 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %66 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %64, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %60
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i64 @cmpxchg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), i64 %71, i64 %72)
  %74 = load i64, i64* %8, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = call i32 (...) @print_cpu_stall()
  %78 = load i64, i64* @rcu_cpu_stall_ftrace_dump, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @DUMP_ALL, align 4
  %82 = call i32 @rcu_ftrace_dump(i32 %81)
  br label %83

83:                                               ; preds = %80, %76
  br label %110

84:                                               ; preds = %70, %60, %48
  %85 = call i64 (...) @rcu_gp_in_progress()
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* @RCU_STALL_RAT_DELAY, align 8
  %91 = add i64 %89, %90
  %92 = call i64 @ULONG_CMP_GE(i64 %88, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %87
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i64 @cmpxchg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), i64 %95, i64 %96)
  %98 = load i64, i64* %8, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load i64, i64* %4, align 8
  %102 = call i32 @print_other_cpu_stall(i64 %101)
  %103 = load i64, i64* @rcu_cpu_stall_ftrace_dump, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @DUMP_ALL, align 4
  %107 = call i32 @rcu_ftrace_dump(i32 %106)
  br label %108

108:                                              ; preds = %105, %100
  br label %109

109:                                              ; preds = %108, %94, %87, %84
  br label %110

110:                                              ; preds = %18, %47, %109, %83
  ret void
}

declare dso_local i64 @rcu_gp_in_progress(...) #1

declare dso_local i32 @rcu_stall_kick_kthreads(...) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @ULONG_CMP_LT(i64, i64) #1

declare dso_local i64 @ULONG_CMP_GE(i64, i64) #1

declare dso_local i32 @rcu_jiffies_till_stall_check(...) #1

declare dso_local i64 @cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @print_cpu_stall(...) #1

declare dso_local i32 @rcu_ftrace_dump(i32) #1

declare dso_local i32 @print_other_cpu_stall(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
