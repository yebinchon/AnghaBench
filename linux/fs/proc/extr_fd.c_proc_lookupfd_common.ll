; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_proc_lookupfd_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_proc_lookupfd_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.task_struct = type { i32 }
%struct.fd_data = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.dentry* (%struct.dentry*, %struct.task_struct*, %struct.fd_data*)*)* @proc_lookupfd_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_lookupfd_common(%struct.inode* %0, %struct.dentry* %1, %struct.dentry* (%struct.dentry*, %struct.task_struct*, %struct.fd_data*)* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry* (%struct.dentry*, %struct.task_struct*, %struct.fd_data*)*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.fd_data, align 4
  %9 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.dentry* (%struct.dentry*, %struct.task_struct*, %struct.fd_data*)* %2, %struct.dentry* (%struct.dentry*, %struct.task_struct*, %struct.fd_data*)** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.task_struct* @get_proc_task(%struct.inode* %10)
  store %struct.task_struct* %11, %struct.task_struct** %7, align 8
  %12 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %8, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = call i32 @name_to_int(i32* %14)
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %8, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.dentry* @ERR_PTR(i32 %18)
  store %struct.dentry* %19, %struct.dentry** %9, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %21 = icmp ne %struct.task_struct* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %44

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %41

28:                                               ; preds = %23
  %29 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %30 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %8, i32 0, i32 1
  %33 = call i32 @tid_fd_mode(%struct.task_struct* %29, i32 %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %41

36:                                               ; preds = %28
  %37 = load %struct.dentry* (%struct.dentry*, %struct.task_struct*, %struct.fd_data*)*, %struct.dentry* (%struct.dentry*, %struct.task_struct*, %struct.fd_data*)** %6, align 8
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %40 = call %struct.dentry* %37(%struct.dentry* %38, %struct.task_struct* %39, %struct.fd_data* %8)
  store %struct.dentry* %40, %struct.dentry** %9, align 8
  br label %41

41:                                               ; preds = %36, %35, %27
  %42 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %43 = call i32 @put_task_struct(%struct.task_struct* %42)
  br label %44

44:                                               ; preds = %41, %22
  %45 = load %struct.dentry*, %struct.dentry** %9, align 8
  ret %struct.dentry* %45
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @name_to_int(i32*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @tid_fd_mode(%struct.task_struct*, i32, i32*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
