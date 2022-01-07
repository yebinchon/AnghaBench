; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_link_pwq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_link_pwq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_workqueue = type { i32, i32, %struct.workqueue_struct* }
%struct.workqueue_struct = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool_workqueue*)* @link_pwq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_pwq(%struct.pool_workqueue* %0) #0 {
  %2 = alloca %struct.pool_workqueue*, align 8
  %3 = alloca %struct.workqueue_struct*, align 8
  store %struct.pool_workqueue* %0, %struct.pool_workqueue** %2, align 8
  %4 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %5 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %4, i32 0, i32 2
  %6 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  store %struct.workqueue_struct* %6, %struct.workqueue_struct** %3, align 8
  %7 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %8 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %7, i32 0, i32 2
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %11 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %10, i32 0, i32 0
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %17 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %20 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %22 = call i32 @pwq_adjust_max_active(%struct.pool_workqueue* %21)
  %23 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %24 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %23, i32 0, i32 0
  %25 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %26 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %25, i32 0, i32 0
  %27 = call i32 @list_add_rcu(i32* %24, i32* %26)
  br label %28

28:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @pwq_adjust_max_active(%struct.pool_workqueue*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
