; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_get_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_get_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.hugetlbfs_fs_context = type { i32, i32, i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@hugetlbfs_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.hugetlbfs_fs_context*)* @hugetlbfs_get_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @hugetlbfs_get_root(%struct.super_block* %0, %struct.hugetlbfs_fs_context* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.hugetlbfs_fs_context*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.hugetlbfs_fs_context* %1, %struct.hugetlbfs_fs_context** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.inode* @new_inode(%struct.super_block* %6)
  store %struct.inode* %7, %struct.inode** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = icmp ne %struct.inode* %8, null
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = call i32 (...) @get_next_ino()
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @S_IFDIR, align 4
  %15 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %16 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %14, %17
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %22 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %27 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call i32 @current_time(%struct.inode* %31)
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 4
  store i32 %32, i32* %36, align 4
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 5
  store i32 %32, i32* %38, align 8
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  store i32* @hugetlbfs_dir_inode_operations, i32** %40, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  store i32* @simple_dir_operations, i32** %42, align 8
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 @inc_nlink(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @lockdep_annotate_inode_mutex_key(%struct.inode* %45)
  br label %47

47:                                               ; preds = %10, %2
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %48
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @lockdep_annotate_inode_mutex_key(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
