; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_unbound_pwq_by_node.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_unbound_pwq_by_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_workqueue = type { i32 }
%struct.workqueue_struct = type { i32*, %struct.pool_workqueue* }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pool_workqueue* (%struct.workqueue_struct*, i32)* @unbound_pwq_by_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pool_workqueue* @unbound_pwq_by_node(%struct.workqueue_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.pool_workqueue*, align 8
  %4 = alloca %struct.workqueue_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.workqueue_struct* %0, %struct.workqueue_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %7 = call i32 @assert_rcu_or_wq_mutex_or_pool_mutex(%struct.workqueue_struct* %6)
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @NUMA_NO_NODE, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %16 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %15, i32 0, i32 1
  %17 = load %struct.pool_workqueue*, %struct.pool_workqueue** %16, align 8
  store %struct.pool_workqueue* %17, %struct.pool_workqueue** %3, align 8
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %20 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.pool_workqueue* @rcu_dereference_raw(i32 %25)
  store %struct.pool_workqueue* %26, %struct.pool_workqueue** %3, align 8
  br label %27

27:                                               ; preds = %18, %14
  %28 = load %struct.pool_workqueue*, %struct.pool_workqueue** %3, align 8
  ret %struct.pool_workqueue* %28
}

declare dso_local i32 @assert_rcu_or_wq_mutex_or_pool_mutex(%struct.workqueue_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.pool_workqueue* @rcu_dereference_raw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
