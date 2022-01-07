; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_dynticks_eqs_exit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_dynticks_eqs_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_data = type { i32 }

@rcu_data = common dso_local global i32 0, align 4
@RCU_DYNTICK_CTRL_CTR = common dso_local global i32 0, align 4
@CONFIG_RCU_EQS_DEBUG = common dso_local global i32 0, align 4
@RCU_DYNTICK_CTRL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rcu_dynticks_eqs_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_dynticks_eqs_exit() #0 {
  %1 = alloca %struct.rcu_data*, align 8
  %2 = alloca i32, align 4
  %3 = call %struct.rcu_data* @this_cpu_ptr(i32* @rcu_data)
  store %struct.rcu_data* %3, %struct.rcu_data** %1, align 8
  %4 = load i32, i32* @RCU_DYNTICK_CTRL_CTR, align 4
  %5 = load %struct.rcu_data*, %struct.rcu_data** %1, align 8
  %6 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %5, i32 0, i32 0
  %7 = call i32 @atomic_add_return(i32 %4, i32* %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @CONFIG_RCU_EQS_DEBUG, align 4
  %9 = call i64 @IS_ENABLED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @RCU_DYNTICK_CTRL_CTR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %0
  %18 = phi i1 [ false, %0 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @RCU_DYNTICK_CTRL_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load i32, i32* @RCU_DYNTICK_CTRL_MASK, align 4
  %27 = load %struct.rcu_data*, %struct.rcu_data** %1, align 8
  %28 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %27, i32 0, i32 0
  %29 = call i32 @atomic_andnot(i32 %26, i32* %28)
  %30 = call i32 (...) @smp_mb__after_atomic()
  %31 = call i32 (...) @rcu_eqs_special_exit()
  br label %32

32:                                               ; preds = %25, %17
  ret void
}

declare dso_local %struct.rcu_data* @this_cpu_ptr(i32*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @atomic_andnot(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @rcu_eqs_special_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
