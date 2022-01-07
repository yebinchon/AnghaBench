; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_self.c_proc_setup_self.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_self.c_proc_setup_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.pid_namespace = type { %struct.dentry* }
%struct.dentry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1
@self_inum = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@proc_self_inode_operations = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"proc_fill_super: can't allocate /proc/self\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_setup_self(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.pid_namespace*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.inode* @d_inode(i32 %10)
  store %struct.inode* %11, %struct.inode** %3, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.pid_namespace* @proc_pid_ns(%struct.inode* %12)
  store %struct.pid_namespace* %13, %struct.pid_namespace** %4, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call i32 @inode_lock(%struct.inode* %16)
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.dentry* @d_alloc_name(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.dentry* %21, %struct.dentry** %5, align 8
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = icmp ne %struct.dentry* %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %1
  %25 = load %struct.super_block*, %struct.super_block** %2, align 8
  %26 = call %struct.inode* @new_inode_pseudo(%struct.super_block* %25)
  store %struct.inode* %26, %struct.inode** %7, align 8
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = icmp ne %struct.inode* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %24
  %30 = load i32, i32* @self_inum, align 4
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = call i32 @current_time(%struct.inode* %33)
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 5
  store i32 %34, i32* %38, align 4
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 6
  store i32 %34, i32* %40, align 8
  %41 = load i32, i32* @S_IFLNK, align 4
  %42 = load i32, i32* @S_IRWXUGO, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  store i32* @proc_self_inode_operations, i32** %53, align 8
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = call i32 @d_add(%struct.dentry* %54, %struct.inode* %55)
  store i32 0, i32* %6, align 4
  br label %60

57:                                               ; preds = %24
  %58 = load %struct.dentry*, %struct.dentry** %5, align 8
  %59 = call i32 @dput(%struct.dentry* %58)
  br label %60

60:                                               ; preds = %57, %29
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  %63 = call i32 @inode_unlock(%struct.inode* %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %72

68:                                               ; preds = %61
  %69 = load %struct.dentry*, %struct.dentry** %5, align 8
  %70 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %71 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %70, i32 0, i32 0
  store %struct.dentry* %69, %struct.dentry** %71, align 8
  br label %72

72:                                               ; preds = %68, %66
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.pid_namespace* @proc_pid_ns(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local %struct.dentry* @d_alloc_name(i32, i8*) #1

declare dso_local %struct.inode* @new_inode_pseudo(%struct.super_block*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
