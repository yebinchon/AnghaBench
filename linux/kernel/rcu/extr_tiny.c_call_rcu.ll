; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tiny.c_call_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tiny.c_call_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.rcu_head** }
%struct.rcu_head = type { %struct.rcu_head*, i32 }

@rcu_ctrlblk = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @call_rcu(%struct.rcu_head* %0, i32 %1) #0 {
  %3 = alloca %struct.rcu_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.rcu_head* %0, %struct.rcu_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rcu_head*, %struct.rcu_head** %3, align 8
  %7 = call i32 @debug_rcu_head_queue(%struct.rcu_head* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.rcu_head*, %struct.rcu_head** %3, align 8
  %10 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.rcu_head*, %struct.rcu_head** %3, align 8
  %12 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %11, i32 0, i32 0
  store %struct.rcu_head* null, %struct.rcu_head** %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @local_irq_save(i64 %13)
  %15 = load %struct.rcu_head*, %struct.rcu_head** %3, align 8
  %16 = load %struct.rcu_head**, %struct.rcu_head*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_ctrlblk, i32 0, i32 0), align 8
  store %struct.rcu_head* %15, %struct.rcu_head** %16, align 8
  %17 = load %struct.rcu_head*, %struct.rcu_head** %3, align 8
  %18 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %17, i32 0, i32 0
  store %struct.rcu_head** %18, %struct.rcu_head*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_ctrlblk, i32 0, i32 0), align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @local_irq_restore(i64 %19)
  %21 = load i32, i32* @current, align 4
  %22 = call i32 @is_idle_task(i32 %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = call i32 @resched_cpu(i32 0)
  br label %27

27:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @debug_rcu_head_queue(%struct.rcu_head*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_idle_task(i32) #1

declare dso_local i32 @resched_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
