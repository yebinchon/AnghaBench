; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_srcu_reschedule.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_srcu_reschedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i32, i32, i32 }

@rcu_gp_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srcu_struct*, i64)* @srcu_reschedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srcu_reschedule(%struct.srcu_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.srcu_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.srcu_struct* %0, %struct.srcu_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %7 = call i32 @spin_lock_irq_rcu_node(%struct.srcu_struct* %6)
  %8 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %9 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %12 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ULONG_CMP_GE(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %18 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rcu_seq_state(i32 %19)
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %16
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %27 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rcu_seq_state(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %33 = call i32 @srcu_gp_start(%struct.srcu_struct* %32)
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34, %24
  %36 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %37 = call i32 @spin_unlock_irq_rcu_node(%struct.srcu_struct* %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @rcu_gp_wq, align 4
  %42 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %43 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %42, i32 0, i32 0
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @queue_delayed_work(i32 %41, i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %40, %35
  ret void
}

declare dso_local i32 @spin_lock_irq_rcu_node(%struct.srcu_struct*) #1

declare dso_local i64 @ULONG_CMP_GE(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_seq_state(i32) #1

declare dso_local i32 @srcu_gp_start(%struct.srcu_struct*) #1

declare dso_local i32 @spin_unlock_irq_rcu_node(%struct.srcu_struct*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
