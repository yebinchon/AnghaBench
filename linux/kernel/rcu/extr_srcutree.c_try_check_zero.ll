; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_try_check_zero.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_try_check_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i32 }

@SRCU_RETRY_CHECK_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srcu_struct*, i32, i32)* @try_check_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_check_zero(%struct.srcu_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.srcu_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.srcu_struct* %0, %struct.srcu_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %8

8:                                                ; preds = %25, %3
  %9 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @srcu_readers_active_idx_check(%struct.srcu_struct* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 1, i32* %4, align 4
  br label %28

14:                                               ; preds = %8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %18 = call i32 @srcu_get_delay(%struct.srcu_struct* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = add nsw i32 %16, %21
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %28

25:                                               ; preds = %14
  %26 = load i32, i32* @SRCU_RETRY_CHECK_DELAY, align 4
  %27 = call i32 @udelay(i32 %26)
  br label %8

28:                                               ; preds = %24, %13
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i64 @srcu_readers_active_idx_check(%struct.srcu_struct*, i32) #1

declare dso_local i32 @srcu_get_delay(%struct.srcu_struct*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
