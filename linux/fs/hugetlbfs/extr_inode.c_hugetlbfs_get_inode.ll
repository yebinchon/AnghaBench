; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32*, i32*, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.resv_map*, i32*, i32 }
%struct.resv_map = type { i32 }
%struct.hugetlbfs_inode_info = type { i32 }

@hugetlbfs_i_mmap_rwsem_key = common dso_local global i32 0, align 4
@hugetlbfs_aops = common dso_local global i32 0, align 4
@F_SEAL_SEAL = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@hugetlbfs_inode_operations = common dso_local global i32 0, align 4
@hugetlbfs_file_operations = common dso_local global i32 0, align 4
@hugetlbfs_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@resv_map_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.inode*, i32, i32)* @hugetlbfs_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @hugetlbfs_get_inode(%struct.super_block* %0, %struct.inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.resv_map*, align 8
  %12 = alloca %struct.hugetlbfs_inode_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.resv_map* null, %struct.resv_map** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @S_ISREG(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @S_ISLNK(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16, %4
  %21 = call %struct.resv_map* (...) @resv_map_alloc()
  store %struct.resv_map* %21, %struct.resv_map** %11, align 8
  %22 = load %struct.resv_map*, %struct.resv_map** %11, align 8
  %23 = icmp ne %struct.resv_map* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store %struct.inode* null, %struct.inode** %5, align 8
  br label %105

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %16
  %27 = load %struct.super_block*, %struct.super_block** %6, align 8
  %28 = call %struct.inode* @new_inode(%struct.super_block* %27)
  store %struct.inode* %28, %struct.inode** %10, align 8
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = icmp ne %struct.inode* %29, null
  br i1 %30, label %31, label %94

31:                                               ; preds = %26
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = call %struct.hugetlbfs_inode_info* @HUGETLBFS_I(%struct.inode* %32)
  store %struct.hugetlbfs_inode_info* %33, %struct.hugetlbfs_inode_info** %12, align 8
  %34 = call i32 (...) @get_next_ino()
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.inode*, %struct.inode** %10, align 8
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @inode_init_owner(%struct.inode* %37, %struct.inode* %38, i32 %39)
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = call i32 @lockdep_set_class(i32* %44, i32* @hugetlbfs_i_mmap_rwsem_key)
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32* @hugetlbfs_aops, i32** %49, align 8
  %50 = load %struct.inode*, %struct.inode** %10, align 8
  %51 = call i32 @current_time(%struct.inode* %50)
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 4
  store i32 %51, i32* %55, align 4
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 5
  store i32 %51, i32* %57, align 8
  %58 = load %struct.resv_map*, %struct.resv_map** %11, align 8
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store %struct.resv_map* %58, %struct.resv_map** %62, align 8
  %63 = load i32, i32* @F_SEAL_SEAL, align 4
  %64 = load %struct.hugetlbfs_inode_info*, %struct.hugetlbfs_inode_info** %12, align 8
  %65 = getelementptr inbounds %struct.hugetlbfs_inode_info, %struct.hugetlbfs_inode_info* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @S_IFMT, align 4
  %68 = and i32 %66, %67
  switch i32 %68, label %69 [
    i32 128, label %74
    i32 130, label %79
    i32 129, label %86
  ]

69:                                               ; preds = %31
  %70 = load %struct.inode*, %struct.inode** %10, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @init_special_inode(%struct.inode* %70, i32 %71, i32 %72)
  br label %91

74:                                               ; preds = %31
  %75 = load %struct.inode*, %struct.inode** %10, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  store i32* @hugetlbfs_inode_operations, i32** %76, align 8
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  store i32* @hugetlbfs_file_operations, i32** %78, align 8
  br label %91

79:                                               ; preds = %31
  %80 = load %struct.inode*, %struct.inode** %10, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  store i32* @hugetlbfs_dir_inode_operations, i32** %81, align 8
  %82 = load %struct.inode*, %struct.inode** %10, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  store i32* @simple_dir_operations, i32** %83, align 8
  %84 = load %struct.inode*, %struct.inode** %10, align 8
  %85 = call i32 @inc_nlink(%struct.inode* %84)
  br label %91

86:                                               ; preds = %31
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  store i32* @page_symlink_inode_operations, i32** %88, align 8
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = call i32 @inode_nohighmem(%struct.inode* %89)
  br label %91

91:                                               ; preds = %86, %79, %74, %69
  %92 = load %struct.inode*, %struct.inode** %10, align 8
  %93 = call i32 @lockdep_annotate_inode_mutex_key(%struct.inode* %92)
  br label %103

94:                                               ; preds = %26
  %95 = load %struct.resv_map*, %struct.resv_map** %11, align 8
  %96 = icmp ne %struct.resv_map* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.resv_map*, %struct.resv_map** %11, align 8
  %99 = getelementptr inbounds %struct.resv_map, %struct.resv_map* %98, i32 0, i32 0
  %100 = load i32, i32* @resv_map_release, align 4
  %101 = call i32 @kref_put(i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %94
  br label %103

103:                                              ; preds = %102, %91
  %104 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %104, %struct.inode** %5, align 8
  br label %105

105:                                              ; preds = %103, %24
  %106 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %106
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.resv_map* @resv_map_alloc(...) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.hugetlbfs_inode_info* @HUGETLBFS_I(%struct.inode*) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @lockdep_annotate_inode_mutex_key(%struct.inode*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
