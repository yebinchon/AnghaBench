; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_auditd_test_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_auditd_test_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.auditd_connection = type { i64 }

@auditd_conn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auditd_test_task(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.auditd_connection*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load i32, i32* @auditd_conn, align 4
  %7 = call %struct.auditd_connection* @rcu_dereference(i32 %6)
  store %struct.auditd_connection* %7, %struct.auditd_connection** %4, align 8
  %8 = load %struct.auditd_connection*, %struct.auditd_connection** %4, align 8
  %9 = icmp ne %struct.auditd_connection* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.auditd_connection*, %struct.auditd_connection** %4, align 8
  %12 = getelementptr inbounds %struct.auditd_connection, %struct.auditd_connection* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %15 = call i64 @task_tgid(%struct.task_struct* %14)
  %16 = icmp eq i64 %13, %15
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi i1 [ false, %1 ], [ %16, %10 ]
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* %3, align 4
  %21 = call i32 (...) @rcu_read_unlock()
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.auditd_connection* @rcu_dereference(i32) #1

declare dso_local i64 @task_tgid(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
