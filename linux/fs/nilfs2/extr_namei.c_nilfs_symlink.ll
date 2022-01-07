; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block*, %struct.TYPE_2__*, i32* }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }
%struct.nilfs_transaction_info = type { i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@nilfs_symlink_inode_operations = common dso_local global i32 0, align 4
@nilfs_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @nilfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nilfs_transaction_info, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.super_block*, %struct.super_block** %9, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ugt i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENAMETOOLONG, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %91

27:                                               ; preds = %3
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.super_block*, %struct.super_block** %29, align 8
  %31 = call i32 @nilfs_transaction_begin(%struct.super_block* %30, %struct.nilfs_transaction_info* %8, i32 1)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %4, align 4
  br label %91

36:                                               ; preds = %27
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load i32, i32* @S_IFLNK, align 4
  %39 = or i32 %38, 511
  %40 = call %struct.inode* @nilfs_new_inode(%struct.inode* %37, i32 %39)
  store %struct.inode* %40, %struct.inode** %11, align 8
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = call i32 @PTR_ERR(%struct.inode* %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.inode*, %struct.inode** %11, align 8
  %44 = call i64 @IS_ERR(%struct.inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %67

47:                                               ; preds = %36
  %48 = load %struct.inode*, %struct.inode** %11, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  store i32* @nilfs_symlink_inode_operations, i32** %49, align 8
  %50 = load %struct.inode*, %struct.inode** %11, align 8
  %51 = call i32 @inode_nohighmem(%struct.inode* %50)
  %52 = load %struct.inode*, %struct.inode** %11, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32* @nilfs_aops, i32** %55, align 8
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @page_symlink(%struct.inode* %56, i8* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %82

63:                                               ; preds = %47
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = load %struct.inode*, %struct.inode** %11, align 8
  %66 = call i32 @nilfs_add_nondir(%struct.dentry* %64, %struct.inode* %65)
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %82, %63, %46
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load %struct.super_block*, %struct.super_block** %72, align 8
  %74 = call i32 @nilfs_transaction_commit(%struct.super_block* %73)
  store i32 %74, i32* %12, align 4
  br label %80

75:                                               ; preds = %67
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load %struct.super_block*, %struct.super_block** %77, align 8
  %79 = call i32 @nilfs_transaction_abort(%struct.super_block* %78)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %4, align 4
  br label %91

82:                                               ; preds = %62
  %83 = load %struct.inode*, %struct.inode** %11, align 8
  %84 = call i32 @drop_nlink(%struct.inode* %83)
  %85 = load %struct.inode*, %struct.inode** %11, align 8
  %86 = call i32 @nilfs_mark_inode_dirty(%struct.inode* %85)
  %87 = load %struct.inode*, %struct.inode** %11, align 8
  %88 = call i32 @unlock_new_inode(%struct.inode* %87)
  %89 = load %struct.inode*, %struct.inode** %11, align 8
  %90 = call i32 @iput(%struct.inode* %89)
  br label %67

91:                                               ; preds = %80, %34, %24
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nilfs_transaction_begin(%struct.super_block*, %struct.nilfs_transaction_info*, i32) #1

declare dso_local %struct.inode* @nilfs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i32) #1

declare dso_local i32 @nilfs_add_nondir(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @nilfs_transaction_commit(%struct.super_block*) #1

declare dso_local i32 @nilfs_transaction_abort(%struct.super_block*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @nilfs_mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
