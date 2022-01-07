; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_destroy_worker.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_destroy_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthread_worker = type { i32, %struct.task_struct* }
%struct.task_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kthread_destroy_worker(%struct.kthread_worker* %0) #0 {
  %2 = alloca %struct.kthread_worker*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.kthread_worker* %0, %struct.kthread_worker** %2, align 8
  %4 = load %struct.kthread_worker*, %struct.kthread_worker** %2, align 8
  %5 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %4, i32 0, i32 1
  %6 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  store %struct.task_struct* %6, %struct.task_struct** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = icmp ne %struct.task_struct* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.kthread_worker*, %struct.kthread_worker** %2, align 8
  %16 = call i32 @kthread_flush_worker(%struct.kthread_worker* %15)
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = call i32 @kthread_stop(%struct.task_struct* %17)
  %19 = load %struct.kthread_worker*, %struct.kthread_worker** %2, align 8
  %20 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %19, i32 0, i32 0
  %21 = call i32 @list_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = load %struct.kthread_worker*, %struct.kthread_worker** %2, align 8
  %27 = call i32 @kfree(%struct.kthread_worker* %26)
  br label %28

28:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kthread_flush_worker(%struct.kthread_worker*) #1

declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.kthread_worker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
