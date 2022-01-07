; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pid_permission.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pid_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.pid_namespace = type { i64 }
%struct.task_struct = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@HIDEPID_NO_ACCESS = common dso_local global i32 0, align 4
@HIDEPID_INVISIBLE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @proc_pid_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_pid_permission(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.pid_namespace* @proc_pid_ns(%struct.inode* %9)
  store %struct.pid_namespace* %10, %struct.pid_namespace** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.task_struct* @get_proc_task(%struct.inode* %11)
  store %struct.task_struct* %12, %struct.task_struct** %7, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %14 = icmp ne %struct.task_struct* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ESRCH, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %21 = load i32, i32* @HIDEPID_NO_ACCESS, align 4
  %22 = call i32 @has_pid_permissions(%struct.pid_namespace* %19, %struct.task_struct* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %24 = call i32 @put_task_struct(%struct.task_struct* %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %18
  %28 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %29 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HIDEPID_INVISIBLE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %27
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %18
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @generic_permission(%struct.inode* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %36, %33, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.pid_namespace* @proc_pid_ns(%struct.inode*) #1

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @has_pid_permissions(%struct.pid_namespace*, %struct.task_struct*, i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @generic_permission(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
