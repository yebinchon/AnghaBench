; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pid_make_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pid_make_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.task_struct = type { i32 }
%struct.proc_inode = type { i32 }

@proc_def_inode_operations = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @proc_pid_make_inode(%struct.super_block* %0, %struct.task_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.proc_inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.inode* @new_inode(%struct.super_block* %10)
  store %struct.inode* %11, %struct.inode** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %8, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %54

15:                                               ; preds = %3
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call %struct.proc_inode* @PROC_I(%struct.inode* %16)
  store %struct.proc_inode* %17, %struct.proc_inode** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = call i32 (...) @get_next_ino()
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = call i32 @current_time(%struct.inode* %24)
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 4
  store i32 %25, i32* %29, align 4
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 5
  store i32 %25, i32* %31, align 8
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 2
  store i32* @proc_def_inode_operations, i32** %33, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %35 = load i32, i32* @PIDTYPE_PID, align 4
  %36 = call i32 @get_task_pid(%struct.task_struct* %34, i32 %35)
  %37 = load %struct.proc_inode*, %struct.proc_inode** %9, align 8
  %38 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.proc_inode*, %struct.proc_inode** %9, align 8
  %40 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %15
  br label %56

44:                                               ; preds = %15
  %45 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = call i32 @task_dump_owner(%struct.task_struct* %45, i32 0, i32* %47, i32* %49)
  %51 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = call i32 @security_task_to_inode(%struct.task_struct* %51, %struct.inode* %52)
  br label %54

54:                                               ; preds = %44, %14
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %55, %struct.inode** %4, align 8
  br label %59

56:                                               ; preds = %43
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i32 @iput(%struct.inode* %57)
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %59

59:                                               ; preds = %56, %54
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %60
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @get_task_pid(%struct.task_struct*, i32) #1

declare dso_local i32 @task_dump_owner(%struct.task_struct*, i32, i32*, i32*) #1

declare dso_local i32 @security_task_to_inode(%struct.task_struct*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
