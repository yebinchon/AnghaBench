; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_pid_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_pid_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.kstat = type { i32, i32 }
%struct.inode = type { i32 }
%struct.pid_namespace = type { i32 }
%struct.task_struct = type { i32 }

@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@HIDEPID_INVISIBLE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pid_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.kstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.pid_namespace*, align 8
  %12 = alloca %struct.task_struct*, align 8
  store %struct.path* %0, %struct.path** %6, align 8
  store %struct.kstat* %1, %struct.kstat** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.path*, %struct.path** %6, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.inode* @d_inode(i32 %15)
  store %struct.inode* %16, %struct.inode** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %10, align 8
  %18 = call %struct.pid_namespace* @proc_pid_ns(%struct.inode* %17)
  store %struct.pid_namespace* %18, %struct.pid_namespace** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = load %struct.kstat*, %struct.kstat** %7, align 8
  %21 = call i32 @generic_fillattr(%struct.inode* %19, %struct.kstat* %20)
  %22 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %23 = load %struct.kstat*, %struct.kstat** %7, align 8
  %24 = getelementptr inbounds %struct.kstat, %struct.kstat* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %26 = load %struct.kstat*, %struct.kstat** %7, align 8
  %27 = getelementptr inbounds %struct.kstat, %struct.kstat* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = call i32 (...) @rcu_read_lock()
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = call i32 @proc_pid(%struct.inode* %29)
  %31 = load i32, i32* @PIDTYPE_PID, align 4
  %32 = call %struct.task_struct* @pid_task(i32 %30, i32 %31)
  store %struct.task_struct* %32, %struct.task_struct** %12, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %34 = icmp ne %struct.task_struct* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %4
  %36 = load %struct.pid_namespace*, %struct.pid_namespace** %11, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %38 = load i32, i32* @HIDEPID_INVISIBLE, align 4
  %39 = call i32 @has_pid_permissions(%struct.pid_namespace* %36, %struct.task_struct* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %57

45:                                               ; preds = %35
  %46 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.kstat*, %struct.kstat** %7, align 8
  %51 = getelementptr inbounds %struct.kstat, %struct.kstat* %50, i32 0, i32 1
  %52 = load %struct.kstat*, %struct.kstat** %7, align 8
  %53 = getelementptr inbounds %struct.kstat, %struct.kstat* %52, i32 0, i32 0
  %54 = call i32 @task_dump_owner(%struct.task_struct* %46, i32 %49, i32* %51, i32* %53)
  br label %55

55:                                               ; preds = %45, %4
  %56 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %41
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.pid_namespace* @proc_pid_ns(%struct.inode*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @pid_task(i32, i32) #1

declare dso_local i32 @proc_pid(%struct.inode*) #1

declare dso_local i32 @has_pid_permissions(%struct.pid_namespace*, %struct.task_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @task_dump_owner(%struct.task_struct*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
