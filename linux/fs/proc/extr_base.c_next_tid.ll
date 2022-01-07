; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_next_tid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_next_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.task_struct*)* @next_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @next_tid(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store %struct.task_struct* null, %struct.task_struct** %3, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = call i64 @pid_alive(%struct.task_struct* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %10 = call %struct.task_struct* @next_thread(%struct.task_struct* %9)
  store %struct.task_struct* %10, %struct.task_struct** %3, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = call i64 @thread_group_leader(%struct.task_struct* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store %struct.task_struct* null, %struct.task_struct** %3, align 8
  br label %18

15:                                               ; preds = %8
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = call i32 @get_task_struct(%struct.task_struct* %16)
  br label %18

18:                                               ; preds = %15, %14
  br label %19

19:                                               ; preds = %18, %1
  %20 = call i32 (...) @rcu_read_unlock()
  %21 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %22 = call i32 @put_task_struct(%struct.task_struct* %21)
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  ret %struct.task_struct* %23
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @pid_alive(%struct.task_struct*) #1

declare dso_local %struct.task_struct* @next_thread(%struct.task_struct*) #1

declare dso_local i64 @thread_group_leader(%struct.task_struct*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
