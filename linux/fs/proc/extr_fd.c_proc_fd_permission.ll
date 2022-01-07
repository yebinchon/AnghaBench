; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_proc_fd_permission.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_proc_fd_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.task_struct = type { i32 }

@PIDTYPE_PID = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_fd_permission(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @generic_permission(%struct.inode* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %32

15:                                               ; preds = %2
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @proc_pid(%struct.inode* %17)
  %19 = load i32, i32* @PIDTYPE_PID, align 4
  %20 = call %struct.task_struct* @pid_task(i32 %18, i32 %19)
  store %struct.task_struct* %20, %struct.task_struct** %6, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %22 = icmp ne %struct.task_struct* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %25 = load i32, i32* @current, align 4
  %26 = call i64 @same_thread_group(%struct.task_struct* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %23, %15
  %30 = call i32 (...) @rcu_read_unlock()
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @generic_permission(%struct.inode*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @pid_task(i32, i32) #1

declare dso_local i32 @proc_pid(%struct.inode*) #1

declare dso_local i64 @same_thread_group(%struct.task_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
