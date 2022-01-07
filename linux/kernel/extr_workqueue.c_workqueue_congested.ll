; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_workqueue_congested.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_workqueue_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32, i32 }
%struct.pool_workqueue = type { i32 }

@WORK_CPU_UNBOUND = common dso_local global i32 0, align 4
@WQ_UNBOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @workqueue_congested(i32 %0, %struct.workqueue_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.workqueue_struct*, align 8
  %5 = alloca %struct.pool_workqueue*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.workqueue_struct* %1, %struct.workqueue_struct** %4, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = call i32 (...) @preempt_disable()
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @WORK_CPU_UNBOUND, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @smp_processor_id()
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %16 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WQ_UNBOUND, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %23 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call %struct.pool_workqueue* @per_cpu_ptr(i32 %24, i32 %25)
  store %struct.pool_workqueue* %26, %struct.pool_workqueue** %5, align 8
  br label %32

27:                                               ; preds = %14
  %28 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @cpu_to_node(i32 %29)
  %31 = call %struct.pool_workqueue* @unbound_pwq_by_node(%struct.workqueue_struct* %28, i32 %30)
  store %struct.pool_workqueue* %31, %struct.pool_workqueue** %5, align 8
  br label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.pool_workqueue*, %struct.pool_workqueue** %5, align 8
  %34 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %33, i32 0, i32 0
  %35 = call i32 @list_empty(i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = call i32 (...) @preempt_enable()
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.pool_workqueue* @per_cpu_ptr(i32, i32) #1

declare dso_local %struct.pool_workqueue* @unbound_pwq_by_node(%struct.workqueue_struct*, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
