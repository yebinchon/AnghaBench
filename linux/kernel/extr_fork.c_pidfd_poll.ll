; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_pidfd_poll.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_pidfd_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pid* }
%struct.pid = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.task_struct = type { i64 }

@PIDTYPE_PID = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @pidfd_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidfd_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.pid*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.pid*, %struct.pid** %9, align 8
  store %struct.pid* %10, %struct.pid** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = load %struct.pid*, %struct.pid** %6, align 8
  %13 = getelementptr inbounds %struct.pid, %struct.pid* %12, i32 0, i32 0
  %14 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %15 = call i32 @poll_wait(%struct.file* %11, i32* %13, %struct.poll_table_struct* %14)
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.pid*, %struct.pid** %6, align 8
  %18 = load i32, i32* @PIDTYPE_PID, align 4
  %19 = call %struct.task_struct* @pid_task(%struct.pid* %17, i32 %18)
  store %struct.task_struct* %19, %struct.task_struct** %5, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %21 = icmp ne %struct.task_struct* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = call i64 @thread_group_empty(%struct.task_struct* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %2
  %32 = load i32, i32* @POLLIN, align 4
  %33 = load i32, i32* @POLLRDNORM, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %27, %22
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @pid_task(%struct.pid*, i32) #1

declare dso_local i64 @thread_group_empty(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
