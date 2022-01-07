; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_stall.h_rcu_jiffies_till_stall_check.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_stall.h_rcu_jiffies_till_stall_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rcu_cpu_stall_timeout = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@RCU_STALL_DELAY_DELTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcu_jiffies_till_stall_check() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @rcu_cpu_stall_timeout, align 4
  %3 = call i32 @READ_ONCE(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 3
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @rcu_cpu_stall_timeout, align 4
  %8 = call i32 @WRITE_ONCE(i32 %7, i32 3)
  store i32 3, i32* %1, align 4
  br label %16

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = icmp sgt i32 %10, 300
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @rcu_cpu_stall_timeout, align 4
  %14 = call i32 @WRITE_ONCE(i32 %13, i32 300)
  store i32 300, i32* %1, align 4
  br label %15

15:                                               ; preds = %12, %9
  br label %16

16:                                               ; preds = %15, %6
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* @RCU_STALL_DELAY_DELTA, align 4
  %21 = add nsw i32 %19, %20
  ret i32 %21
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
