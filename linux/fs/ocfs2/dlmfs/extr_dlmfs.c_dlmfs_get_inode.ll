; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_dlmfs.c_dlmfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_dlmfs.c_dlmfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, i32*, i32, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.dlmfs_inode_private = type { i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@dlmfs_file_inode_operations = common dso_local global i32 0, align 4
@dlmfs_file_operations = common dso_local global i32 0, align 4
@DLM_LVB_LEN = common dso_local global i32 0, align 4
@dlmfs_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.inode*, %struct.dentry*, i32)* @dlmfs_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @dlmfs_get_inode(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dlmfs_inode_private*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 6
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %8, align 8
  %14 = load %struct.super_block*, %struct.super_block** %8, align 8
  %15 = call %struct.inode* @new_inode(%struct.super_block* %14)
  store %struct.inode* %15, %struct.inode** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = icmp ne %struct.inode* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %80

19:                                               ; preds = %3
  %20 = call i32 (...) @get_next_ino()
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @inode_init_owner(%struct.inode* %23, %struct.inode* %24, i32 %25)
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = call i32 @current_time(%struct.inode* %27)
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 3
  store i32 %28, i32* %32, align 4
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 4
  store i32 %28, i32* %34, align 8
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = call %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode* %35)
  store %struct.dlmfs_inode_private* %36, %struct.dlmfs_inode_private** %10, align 8
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %10, align 8
  %42 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @S_IFMT, align 4
  %45 = and i32 %43, %44
  switch i32 %45, label %46 [
    i32 128, label %48
    i32 129, label %71
  ]

46:                                               ; preds = %19
  %47 = call i32 (...) @BUG()
  br label %78

48:                                               ; preds = %19
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  store i32* @dlmfs_file_inode_operations, i32** %50, align 8
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  store i32* @dlmfs_file_operations, i32** %52, align 8
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = load i32, i32* @DLM_LVB_LEN, align 4
  %55 = call i32 @i_size_write(%struct.inode* %53, i32 %54)
  %56 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %10, align 8
  %57 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %56, i32 0, i32 1
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = call i32 @user_dlm_lock_res_init(i32* %57, %struct.dentry* %58)
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = call i32 @igrab(%struct.inode* %60)
  %62 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %10, align 8
  %63 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.dlmfs_inode_private*, %struct.dlmfs_inode_private** %10, align 8
  %65 = getelementptr inbounds %struct.dlmfs_inode_private, %struct.dlmfs_inode_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  br label %78

71:                                               ; preds = %19
  %72 = load %struct.inode*, %struct.inode** %9, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  store i32* @dlmfs_dir_inode_operations, i32** %73, align 8
  %74 = load %struct.inode*, %struct.inode** %9, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  store i32* @simple_dir_operations, i32** %75, align 8
  %76 = load %struct.inode*, %struct.inode** %9, align 8
  %77 = call i32 @inc_nlink(%struct.inode* %76)
  br label %78

78:                                               ; preds = %71, %48, %46
  %79 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %79, %struct.inode** %4, align 8
  br label %80

80:                                               ; preds = %78, %18
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %81
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local %struct.dlmfs_inode_private* @DLMFS_I(%struct.inode*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @user_dlm_lock_res_init(i32*, %struct.dentry*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
