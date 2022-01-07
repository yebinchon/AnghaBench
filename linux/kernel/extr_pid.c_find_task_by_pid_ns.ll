; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid.c_find_task_by_pid_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid.c_find_task_by_pid_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pid_namespace = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"find_task_by_pid_ns() needs rcu_read_lock() protection\00", align 1
@PIDTYPE_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.task_struct* @find_task_by_pid_ns(i32 %0, %struct.pid_namespace* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pid_namespace*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pid_namespace* %1, %struct.pid_namespace** %4, align 8
  %5 = call i32 (...) @rcu_read_lock_held()
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @RCU_LOCKDEP_WARN(i32 %8, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %12 = call i32 @find_pid_ns(i32 %10, %struct.pid_namespace* %11)
  %13 = load i32, i32* @PIDTYPE_PID, align 4
  %14 = call %struct.task_struct* @pid_task(i32 %12, i32 %13)
  ret %struct.task_struct* %14
}

declare dso_local i32 @RCU_LOCKDEP_WARN(i32, i8*) #1

declare dso_local i32 @rcu_read_lock_held(...) #1

declare dso_local %struct.task_struct* @pid_task(i32, i32) #1

declare dso_local i32 @find_pid_ns(i32, %struct.pid_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
