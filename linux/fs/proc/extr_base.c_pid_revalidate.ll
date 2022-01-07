; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_pid_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_pid_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.task_struct = type { i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @pid_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pid_revalidate(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.task_struct*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @LOOKUP_RCU, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ECHILD, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call %struct.inode* @d_inode(%struct.dentry* %16)
  store %struct.inode* %17, %struct.inode** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.task_struct* @get_proc_task(%struct.inode* %18)
  store %struct.task_struct* %19, %struct.task_struct** %7, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %21 = icmp ne %struct.task_struct* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call i32 @pid_update_inode(%struct.task_struct* %23, %struct.inode* %24)
  %26 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %27 = call i32 @put_task_struct(%struct.task_struct* %26)
  store i32 1, i32* %3, align 4
  br label %29

28:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %22, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @pid_update_inode(%struct.task_struct*, %struct.inode*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
