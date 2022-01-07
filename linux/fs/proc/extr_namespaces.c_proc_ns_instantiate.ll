; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_namespaces.c_proc_ns_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_namespaces.c_proc_ns_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.task_struct = type { i32 }
%struct.proc_ns_operations = type { i32 }
%struct.inode = type { i32* }
%struct.proc_inode = type { %struct.proc_ns_operations* }

@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@proc_ns_link_inode_operations = common dso_local global i32 0, align 4
@pid_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* @proc_ns_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_ns_instantiate(%struct.dentry* %0, %struct.task_struct* %1, i8* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.proc_ns_operations*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.proc_inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.proc_ns_operations*
  store %struct.proc_ns_operations* %12, %struct.proc_ns_operations** %8, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %17 = load i32, i32* @S_IFLNK, align 4
  %18 = load i32, i32* @S_IRWXUGO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.inode* @proc_pid_make_inode(i32 %15, %struct.task_struct* %16, i32 %19)
  store %struct.inode* %20, %struct.inode** %9, align 8
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.dentry* @ERR_PTR(i32 %25)
  store %struct.dentry* %26, %struct.dentry** %4, align 8
  br label %43

27:                                               ; preds = %3
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = call %struct.proc_inode* @PROC_I(%struct.inode* %28)
  store %struct.proc_inode* %29, %struct.proc_inode** %10, align 8
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  store i32* @proc_ns_link_inode_operations, i32** %31, align 8
  %32 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %8, align 8
  %33 = load %struct.proc_inode*, %struct.proc_inode** %10, align 8
  %34 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %33, i32 0, i32 0
  store %struct.proc_ns_operations* %32, %struct.proc_ns_operations** %34, align 8
  %35 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = call i32 @pid_update_inode(%struct.task_struct* %35, %struct.inode* %36)
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = call i32 @d_set_d_op(%struct.dentry* %38, i32* @pid_dentry_operations)
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = call %struct.dentry* @d_splice_alias(%struct.inode* %40, %struct.dentry* %41)
  store %struct.dentry* %42, %struct.dentry** %4, align 8
  br label %43

43:                                               ; preds = %27, %23
  %44 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %44
}

declare dso_local %struct.inode* @proc_pid_make_inode(i32, %struct.task_struct*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #1

declare dso_local i32 @pid_update_inode(%struct.task_struct*, %struct.inode*) #1

declare dso_local i32 @d_set_d_op(%struct.dentry*, i32*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
