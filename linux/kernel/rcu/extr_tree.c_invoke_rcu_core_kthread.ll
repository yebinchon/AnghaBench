; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_invoke_rcu_core_kthread.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_invoke_rcu_core_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.task_struct = type { i32 }

@rcu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @invoke_rcu_core_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invoke_rcu_core_kthread() #0 {
  %1 = alloca %struct.task_struct*, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @local_irq_save(i64 %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_data, i32 0, i32 2), align 4
  %6 = call i32 @__this_cpu_write(i32 %5, i32 1)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_data, i32 0, i32 1), align 4
  %8 = call %struct.task_struct* @__this_cpu_read(i32 %7)
  store %struct.task_struct* %8, %struct.task_struct** %1, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %10 = icmp ne %struct.task_struct* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  %12 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %14 = icmp ne %struct.task_struct* %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_data, i32 0, i32 0), align 4
  %18 = call %struct.task_struct* @__this_cpu_read(i32 %17)
  %19 = call i32 @rcu_wake_cond(%struct.task_struct* %16, %struct.task_struct* %18)
  br label %20

20:                                               ; preds = %15, %11, %0
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @local_irq_restore(i64 %21)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

declare dso_local %struct.task_struct* @__this_cpu_read(i32) #1

declare dso_local i32 @rcu_wake_cond(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
