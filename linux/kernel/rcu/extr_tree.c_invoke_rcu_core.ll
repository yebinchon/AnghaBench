; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_invoke_rcu_core.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_invoke_rcu_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_softirq = common dso_local global i64 0, align 8
@RCU_SOFTIRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @invoke_rcu_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invoke_rcu_core() #0 {
  %1 = call i32 (...) @smp_processor_id()
  %2 = call i32 @cpu_online(i32 %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %13

5:                                                ; preds = %0
  %6 = load i64, i64* @use_softirq, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* @RCU_SOFTIRQ, align 4
  %10 = call i32 @raise_softirq(i32 %9)
  br label %13

11:                                               ; preds = %5
  %12 = call i32 (...) @invoke_rcu_core_kthread()
  br label %13

13:                                               ; preds = %4, %11, %8
  ret void
}

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @raise_softirq(i32) #1

declare dso_local i32 @invoke_rcu_core_kthread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
