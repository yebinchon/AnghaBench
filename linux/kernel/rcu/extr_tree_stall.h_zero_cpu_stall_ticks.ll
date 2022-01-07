; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_stall.h_zero_cpu_stall_ticks.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_stall.h_zero_cpu_stall_ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_data = type { i32, i32, i64 }

@RCU_SOFTIRQ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcu_data*)* @zero_cpu_stall_ticks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zero_cpu_stall_ticks(%struct.rcu_data* %0) #0 {
  %2 = alloca %struct.rcu_data*, align 8
  store %struct.rcu_data* %0, %struct.rcu_data** %2, align 8
  %3 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %4 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @RCU_SOFTIRQ, align 4
  %6 = call i32 (...) @smp_processor_id()
  %7 = call i32 @kstat_softirqs_cpu(i32 %5, i32 %6)
  %8 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %9 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.rcu_data*, %struct.rcu_data** %2, align 8
  %11 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @jiffies, align 4
  %14 = call i32 @WRITE_ONCE(i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @kstat_softirqs_cpu(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
