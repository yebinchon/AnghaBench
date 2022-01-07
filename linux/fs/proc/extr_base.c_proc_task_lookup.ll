; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_task_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_task_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.pid_namespace* }
%struct.pid_namespace = type { i32 }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @proc_task_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_task_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pid_namespace*, align 8
  %11 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.task_struct* @get_proc_task(%struct.inode* %12)
  store %struct.task_struct* %13, %struct.task_struct** %8, align 8
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.dentry* @ERR_PTR(i32 %15)
  store %struct.dentry* %16, %struct.dentry** %11, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %18 = icmp ne %struct.task_struct* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %63

20:                                               ; preds = %3
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 1
  %23 = call i32 @name_to_int(i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %60

27:                                               ; preds = %20
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.pid_namespace*, %struct.pid_namespace** %31, align 8
  store %struct.pid_namespace* %32, %struct.pid_namespace** %10, align 8
  %33 = call i32 (...) @rcu_read_lock()
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.pid_namespace*, %struct.pid_namespace** %10, align 8
  %36 = call %struct.task_struct* @find_task_by_pid_ns(i32 %34, %struct.pid_namespace* %35)
  store %struct.task_struct* %36, %struct.task_struct** %7, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %38 = icmp ne %struct.task_struct* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %41 = call i32 @get_task_struct(%struct.task_struct* %40)
  br label %42

42:                                               ; preds = %39, %27
  %43 = call i32 (...) @rcu_read_unlock()
  %44 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %45 = icmp ne %struct.task_struct* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %60

47:                                               ; preds = %42
  %48 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %49 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %50 = call i32 @same_thread_group(%struct.task_struct* %48, %struct.task_struct* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %57

53:                                               ; preds = %47
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %56 = call %struct.dentry* @proc_task_instantiate(%struct.dentry* %54, %struct.task_struct* %55, i32* null)
  store %struct.dentry* %56, %struct.dentry** %11, align 8
  br label %57

57:                                               ; preds = %53, %52
  %58 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %59 = call i32 @put_task_struct(%struct.task_struct* %58)
  br label %60

60:                                               ; preds = %57, %46, %26
  %61 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %62 = call i32 @put_task_struct(%struct.task_struct* %61)
  br label %63

63:                                               ; preds = %60, %19
  %64 = load %struct.dentry*, %struct.dentry** %11, align 8
  ret %struct.dentry* %64
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @name_to_int(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_pid_ns(i32, %struct.pid_namespace*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @same_thread_group(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local %struct.dentry* @proc_task_instantiate(%struct.dentry*, %struct.task_struct*, i32*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
