; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_set_inode_ops.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_set_inode_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i8*, i32, i32, i32*, %struct.TYPE_6__*, i32, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ufs_file_inode_operations = common dso_local global i32 0, align 4
@ufs_file_operations = common dso_local global i32 0, align 4
@ufs_aops = common dso_local global i32 0, align 4
@ufs_dir_inode_operations = common dso_local global i32 0, align 4
@ufs_dir_operations = common dso_local global i32 0, align 4
@simple_symlink_inode_operations = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ufs_set_inode_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_set_inode_ops(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  %4 = getelementptr inbounds %struct.inode, %struct.inode* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @S_ISREG(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 3
  store i32* @ufs_file_inode_operations, i32** %10, align 8
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 6
  store i32* @ufs_file_operations, i32** %12, align 8
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32* @ufs_aops, i32** %16, align 8
  br label %78

17:                                               ; preds = %1
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @S_ISDIR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 3
  store i32* @ufs_dir_inode_operations, i32** %25, align 8
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 6
  store i32* @ufs_dir_operations, i32** %27, align 8
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32* @ufs_aops, i32** %31, align 8
  br label %77

32:                                               ; preds = %17
  %33 = load %struct.inode*, %struct.inode** %2, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @S_ISLNK(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %32
  %39 = load %struct.inode*, %struct.inode** %2, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %38
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = call %struct.TYPE_7__* @UFS_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.inode*, %struct.inode** %2, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.inode*, %struct.inode** %2, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 3
  store i32* @simple_symlink_inode_operations, i32** %53, align 8
  br label %63

54:                                               ; preds = %38
  %55 = load %struct.inode*, %struct.inode** %2, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32* @ufs_aops, i32** %58, align 8
  %59 = load %struct.inode*, %struct.inode** %2, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 3
  store i32* @page_symlink_inode_operations, i32** %60, align 8
  %61 = load %struct.inode*, %struct.inode** %2, align 8
  %62 = call i32 @inode_nohighmem(%struct.inode* %61)
  br label %63

63:                                               ; preds = %54, %43
  br label %76

64:                                               ; preds = %32
  %65 = load %struct.inode*, %struct.inode** %2, align 8
  %66 = load %struct.inode*, %struct.inode** %2, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.inode*, %struct.inode** %2, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.inode*, %struct.inode** %2, align 8
  %73 = call %struct.TYPE_7__* @UFS_I(%struct.inode* %72)
  %74 = call i32 @ufs_get_inode_dev(i32 %71, %struct.TYPE_7__* %73)
  %75 = call i32 @init_special_inode(%struct.inode* %65, i32 %68, i32 %74)
  br label %76

76:                                               ; preds = %64, %63
  br label %77

77:                                               ; preds = %76, %23
  br label %78

78:                                               ; preds = %77, %8
  ret void
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.TYPE_7__* @UFS_I(%struct.inode*) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @ufs_get_inode_dev(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
