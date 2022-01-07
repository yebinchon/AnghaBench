; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_task_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_task_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.task_struct = type { i32 }
%struct.inode = type { i32, i32*, i32* }

@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@proc_tid_base_inode_operations = common dso_local global i32 0, align 4
@proc_tid_base_operations = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@nlink_tid = common dso_local global i32 0, align 4
@pid_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* @proc_task_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_task_instantiate(%struct.dentry* %0, %struct.task_struct* %1, i8* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %13 = load i32, i32* @S_IFDIR, align 4
  %14 = load i32, i32* @S_IRUGO, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @S_IXUGO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.inode* @proc_pid_make_inode(i32 %11, %struct.task_struct* %12, i32 %17)
  store %struct.inode* %18, %struct.inode** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.dentry* @ERR_PTR(i32 %23)
  store %struct.dentry* %24, %struct.dentry** %4, align 8
  br label %46

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 2
  store i32* @proc_tid_base_inode_operations, i32** %27, align 8
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  store i32* @proc_tid_base_operations, i32** %29, align 8
  %30 = load i32, i32* @S_IMMUTABLE, align 4
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = load i32, i32* @nlink_tid, align 4
  %37 = call i32 @set_nlink(%struct.inode* %35, i32 %36)
  %38 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = call i32 @pid_update_inode(%struct.task_struct* %38, %struct.inode* %39)
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = call i32 @d_set_d_op(%struct.dentry* %41, i32* @pid_dentry_operations)
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  %45 = call %struct.dentry* @d_splice_alias(%struct.inode* %43, %struct.dentry* %44)
  store %struct.dentry* %45, %struct.dentry** %4, align 8
  br label %46

46:                                               ; preds = %25, %21
  %47 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %47
}

declare dso_local %struct.inode* @proc_pid_make_inode(i32, %struct.task_struct*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @pid_update_inode(%struct.task_struct*, %struct.inode*) #1

declare dso_local i32 @d_set_d_op(%struct.dentry*, i32*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
