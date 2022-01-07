; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_map_files_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_map_files_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.task_struct = type { i32 }
%struct.proc_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, i32* }

@S_IFLNK = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@map_files_get_link = common dso_local global i32 0, align 4
@proc_map_files_link_inode_operations = common dso_local global i32 0, align 4
@tid_map_files_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* @proc_map_files_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_map_files_instantiate(%struct.dentry* %0, %struct.task_struct* %1, i8* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc_inode*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %18 = load i32, i32* @S_IFLNK, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @FMODE_READ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @S_IRUSR, align 4
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = or i32 %18, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @FMODE_WRITE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @S_IWUSR, align 4
  br label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = or i32 %28, %37
  %39 = call %struct.inode* @proc_pid_make_inode(i32 %16, %struct.task_struct* %17, i32 %38)
  store %struct.inode* %39, %struct.inode** %10, align 8
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = icmp ne %struct.inode* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.dentry* @ERR_PTR(i32 %44)
  store %struct.dentry* %45, %struct.dentry** %4, align 8
  br label %62

46:                                               ; preds = %36
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = call %struct.proc_inode* @PROC_I(%struct.inode* %47)
  store %struct.proc_inode* %48, %struct.proc_inode** %9, align 8
  %49 = load i32, i32* @map_files_get_link, align 4
  %50 = load %struct.proc_inode*, %struct.proc_inode** %9, align 8
  %51 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  store i32* @proc_map_files_link_inode_operations, i32** %54, align 8
  %55 = load %struct.inode*, %struct.inode** %10, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  store i32 64, i32* %56, align 8
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = call i32 @d_set_d_op(%struct.dentry* %57, i32* @tid_map_files_dentry_operations)
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = load %struct.dentry*, %struct.dentry** %5, align 8
  %61 = call %struct.dentry* @d_splice_alias(%struct.inode* %59, %struct.dentry* %60)
  store %struct.dentry* %61, %struct.dentry** %4, align 8
  br label %62

62:                                               ; preds = %46, %42
  %63 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %63
}

declare dso_local %struct.inode* @proc_pid_make_inode(i32, %struct.task_struct*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #1

declare dso_local i32 @d_set_d_op(%struct.dentry*, i32*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
