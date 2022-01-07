; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_mutex-debug.c_mutex_remove_waiter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_mutex-debug.c_mutex_remove_waiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { i32 }
%struct.mutex_waiter = type { %struct.task_struct*, i32 }
%struct.task_struct = type { %struct.mutex_waiter* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mutex_remove_waiter(%struct.mutex* %0, %struct.mutex_waiter* %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.mutex*, align 8
  %5 = alloca %struct.mutex_waiter*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.mutex* %0, %struct.mutex** %4, align 8
  store %struct.mutex_waiter* %1, %struct.mutex_waiter** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %7 = load %struct.mutex_waiter*, %struct.mutex_waiter** %5, align 8
  %8 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %7, i32 0, i32 1
  %9 = call i32 @list_empty(i32* %8)
  %10 = call i32 @DEBUG_LOCKS_WARN_ON(i32 %9)
  %11 = load %struct.mutex_waiter*, %struct.mutex_waiter** %5, align 8
  %12 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %11, i32 0, i32 0
  %13 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %15 = icmp ne %struct.task_struct* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @DEBUG_LOCKS_WARN_ON(i32 %16)
  %18 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = load %struct.mutex_waiter*, %struct.mutex_waiter** %19, align 8
  %21 = load %struct.mutex_waiter*, %struct.mutex_waiter** %5, align 8
  %22 = icmp ne %struct.mutex_waiter* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @DEBUG_LOCKS_WARN_ON(i32 %23)
  %25 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  store %struct.mutex_waiter* null, %struct.mutex_waiter** %26, align 8
  %27 = load %struct.mutex_waiter*, %struct.mutex_waiter** %5, align 8
  %28 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %27, i32 0, i32 1
  %29 = call i32 @list_del_init(i32* %28)
  %30 = load %struct.mutex_waiter*, %struct.mutex_waiter** %5, align 8
  %31 = getelementptr inbounds %struct.mutex_waiter, %struct.mutex_waiter* %30, i32 0, i32 0
  store %struct.task_struct* null, %struct.task_struct** %31, align 8
  ret void
}

declare dso_local i32 @DEBUG_LOCKS_WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
