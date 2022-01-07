; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_tid_fd_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_tid_fd_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.task_struct = type { i32 }
%struct.inode = type { i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @tid_fd_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tid_fd_revalidate(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @LOOKUP_RCU, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ECHILD, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = call %struct.inode* @d_inode(%struct.dentry* %18)
  store %struct.inode* %19, %struct.inode** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call %struct.task_struct* @get_proc_task(%struct.inode* %20)
  store %struct.task_struct* %21, %struct.task_struct** %6, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call i32 @proc_fd(%struct.inode* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %25 = icmp ne %struct.task_struct* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %17
  %27 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @tid_fd_mode(%struct.task_struct* %27, i32 %28, i32* %9)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @tid_fd_update_inode(%struct.task_struct* %32, %struct.inode* %33, i32 %34)
  %36 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %37 = call i32 @put_task_struct(%struct.task_struct* %36)
  store i32 1, i32* %3, align 4
  br label %42

38:                                               ; preds = %26
  %39 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %40 = call i32 @put_task_struct(%struct.task_struct* %39)
  br label %41

41:                                               ; preds = %38, %17
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %31, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @proc_fd(%struct.inode*) #1

declare dso_local i64 @tid_fd_mode(%struct.task_struct*, i32, i32*) #1

declare dso_local i32 @tid_fd_update_inode(%struct.task_struct*, %struct.inode*, i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
