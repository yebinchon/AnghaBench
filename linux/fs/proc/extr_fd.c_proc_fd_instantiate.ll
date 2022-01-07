; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_proc_fd_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_fd.c_proc_fd_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.task_struct = type { i32 }
%struct.fd_data = type { i32, i32 }
%struct.proc_inode = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, i32* }

@S_IFLNK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@proc_pid_link_inode_operations = common dso_local global i32 0, align 4
@proc_fd_link = common dso_local global i32 0, align 4
@tid_fd_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* @proc_fd_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_fd_instantiate(%struct.dentry* %0, %struct.task_struct* %1, i8* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fd_data*, align 8
  %9 = alloca %struct.proc_inode*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.fd_data*
  store %struct.fd_data* %12, %struct.fd_data** %8, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %17 = load i32, i32* @S_IFLNK, align 4
  %18 = call %struct.inode* @proc_pid_make_inode(i32 %15, %struct.task_struct* %16, i32 %17)
  store %struct.inode* %18, %struct.inode** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.dentry* @ERR_PTR(i32 %23)
  store %struct.dentry* %24, %struct.dentry** %4, align 8
  br label %52

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = call %struct.proc_inode* @PROC_I(%struct.inode* %26)
  store %struct.proc_inode* %27, %struct.proc_inode** %9, align 8
  %28 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %29 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.proc_inode*, %struct.proc_inode** %9, align 8
  %32 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  store i32* @proc_pid_link_inode_operations, i32** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  store i32 64, i32* %36, align 8
  %37 = load i32, i32* @proc_fd_link, align 4
  %38 = load %struct.proc_inode*, %struct.proc_inode** %9, align 8
  %39 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %44 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tid_fd_update_inode(%struct.task_struct* %41, %struct.inode* %42, i32 %45)
  %47 = load %struct.dentry*, %struct.dentry** %5, align 8
  %48 = call i32 @d_set_d_op(%struct.dentry* %47, i32* @tid_fd_dentry_operations)
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = call %struct.dentry* @d_splice_alias(%struct.inode* %49, %struct.dentry* %50)
  store %struct.dentry* %51, %struct.dentry** %4, align 8
  br label %52

52:                                               ; preds = %25, %21
  %53 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %53
}

declare dso_local %struct.inode* @proc_pid_make_inode(i32, %struct.task_struct*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #1

declare dso_local i32 @tid_fd_update_inode(%struct.task_struct*, %struct.inode*, i32) #1

declare dso_local i32 @d_set_d_op(%struct.dentry*, i32*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
