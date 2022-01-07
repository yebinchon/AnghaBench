; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlb_file_setup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlb_file_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.user_struct = type { i32 }
%struct.inode = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@hugetlbfs_vfsmount = common dso_local global %struct.vfsmount** null, align 8
@ENOENT = common dso_local global i32 0, align 4
@HUGETLB_SHMFS_INODE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"%s (%d): Using mlock ulimits for SHM_HUGETLB is deprecated\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@S_PRIVATE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@hugetlbfs_file_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @hugetlb_file_setup(i8* %0, i64 %1, i32 %2, %struct.user_struct** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.user_struct**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.vfsmount*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.file*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.user_struct** %3, %struct.user_struct*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call i32 @get_hstate_idx(i32 %18)
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.file* @ERR_PTR(i32 %24)
  store %struct.file* %25, %struct.file** %7, align 8
  br label %142

26:                                               ; preds = %6
  %27 = load %struct.user_struct**, %struct.user_struct*** %11, align 8
  store %struct.user_struct* null, %struct.user_struct** %27, align 8
  %28 = load %struct.vfsmount**, %struct.vfsmount*** @hugetlbfs_vfsmount, align 8
  %29 = load i32, i32* %16, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.vfsmount*, %struct.vfsmount** %28, i64 %30
  %32 = load %struct.vfsmount*, %struct.vfsmount** %31, align 8
  store %struct.vfsmount* %32, %struct.vfsmount** %15, align 8
  %33 = load %struct.vfsmount*, %struct.vfsmount** %15, align 8
  %34 = icmp ne %struct.vfsmount* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.file* @ERR_PTR(i32 %37)
  store %struct.file* %38, %struct.file** %7, align 8
  br label %142

39:                                               ; preds = %26
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @HUGETLB_SHMFS_INODE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %39
  %44 = call i32 (...) @can_do_hugetlb_shm()
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %72, label %46

46:                                               ; preds = %43
  %47 = call %struct.user_struct* (...) @current_user()
  %48 = load %struct.user_struct**, %struct.user_struct*** %11, align 8
  store %struct.user_struct* %47, %struct.user_struct** %48, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.user_struct**, %struct.user_struct*** %11, align 8
  %51 = load %struct.user_struct*, %struct.user_struct** %50, align 8
  %52 = call i64 @user_shm_lock(i64 %49, %struct.user_struct* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %56 = call i32 @task_lock(%struct.TYPE_4__* %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pr_warn_once(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %65 = call i32 @task_unlock(%struct.TYPE_4__* %64)
  br label %71

66:                                               ; preds = %46
  %67 = load %struct.user_struct**, %struct.user_struct*** %11, align 8
  store %struct.user_struct* null, %struct.user_struct** %67, align 8
  %68 = load i32, i32* @EPERM, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.file* @ERR_PTR(i32 %69)
  store %struct.file* %70, %struct.file** %7, align 8
  br label %142

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %43, %39
  %73 = load i32, i32* @ENOSPC, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.file* @ERR_PTR(i32 %74)
  store %struct.file* %75, %struct.file** %17, align 8
  %76 = load %struct.vfsmount*, %struct.vfsmount** %15, align 8
  %77 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @S_IFREG, align 4
  %80 = load i32, i32* @S_IRWXUGO, align 4
  %81 = or i32 %79, %80
  %82 = call %struct.inode* @hugetlbfs_get_inode(i32 %78, i32* null, i32 %81, i32 0)
  store %struct.inode* %82, %struct.inode** %14, align 8
  %83 = load %struct.inode*, %struct.inode** %14, align 8
  %84 = icmp ne %struct.inode* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %72
  br label %130

86:                                               ; preds = %72
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @HUGETLB_SHMFS_INODE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* @S_PRIVATE, align 4
  %92 = load %struct.inode*, %struct.inode** %14, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %86
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.inode*, %struct.inode** %14, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.inode*, %struct.inode** %14, align 8
  %101 = call i32 @clear_nlink(%struct.inode* %100)
  %102 = load %struct.inode*, %struct.inode** %14, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.inode*, %struct.inode** %14, align 8
  %105 = call i32 @hstate_inode(%struct.inode* %104)
  %106 = call i64 @huge_page_shift(i32 %105)
  %107 = lshr i64 %103, %106
  %108 = load i32, i32* %10, align 4
  %109 = call i64 @hugetlb_reserve_pages(%struct.inode* %102, i32 0, i64 %107, i32* null, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %96
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  %114 = call %struct.file* @ERR_PTR(i32 %113)
  store %struct.file* %114, %struct.file** %17, align 8
  br label %121

115:                                              ; preds = %96
  %116 = load %struct.inode*, %struct.inode** %14, align 8
  %117 = load %struct.vfsmount*, %struct.vfsmount** %15, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* @O_RDWR, align 4
  %120 = call %struct.file* @alloc_file_pseudo(%struct.inode* %116, %struct.vfsmount* %117, i8* %118, i32 %119, i32* @hugetlbfs_file_operations)
  store %struct.file* %120, %struct.file** %17, align 8
  br label %121

121:                                              ; preds = %115, %111
  %122 = load %struct.file*, %struct.file** %17, align 8
  %123 = call i32 @IS_ERR(%struct.file* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = load %struct.file*, %struct.file** %17, align 8
  store %struct.file* %126, %struct.file** %7, align 8
  br label %142

127:                                              ; preds = %121
  %128 = load %struct.inode*, %struct.inode** %14, align 8
  %129 = call i32 @iput(%struct.inode* %128)
  br label %130

130:                                              ; preds = %127, %85
  %131 = load %struct.user_struct**, %struct.user_struct*** %11, align 8
  %132 = load %struct.user_struct*, %struct.user_struct** %131, align 8
  %133 = icmp ne %struct.user_struct* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i64, i64* %9, align 8
  %136 = load %struct.user_struct**, %struct.user_struct*** %11, align 8
  %137 = load %struct.user_struct*, %struct.user_struct** %136, align 8
  %138 = call i32 @user_shm_unlock(i64 %135, %struct.user_struct* %137)
  %139 = load %struct.user_struct**, %struct.user_struct*** %11, align 8
  store %struct.user_struct* null, %struct.user_struct** %139, align 8
  br label %140

140:                                              ; preds = %134, %130
  %141 = load %struct.file*, %struct.file** %17, align 8
  store %struct.file* %141, %struct.file** %7, align 8
  br label %142

142:                                              ; preds = %140, %125, %66, %35, %22
  %143 = load %struct.file*, %struct.file** %7, align 8
  ret %struct.file* %143
}

declare dso_local i32 @get_hstate_idx(i32) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local i32 @can_do_hugetlb_shm(...) #1

declare dso_local %struct.user_struct* @current_user(...) #1

declare dso_local i64 @user_shm_lock(i64, %struct.user_struct*) #1

declare dso_local i32 @task_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_warn_once(i8*, i32, i32) #1

declare dso_local i32 @task_unlock(%struct.TYPE_4__*) #1

declare dso_local %struct.inode* @hugetlbfs_get_inode(i32, i32*, i32, i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i64 @hugetlb_reserve_pages(%struct.inode*, i32, i64, i32*, i32) #1

declare dso_local i64 @huge_page_shift(i32) #1

declare dso_local i32 @hstate_inode(%struct.inode*) #1

declare dso_local %struct.file* @alloc_file_pseudo(%struct.inode*, %struct.vfsmount*, i8*, i32, i32*) #1

declare dso_local i32 @IS_ERR(%struct.file*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @user_shm_unlock(i64, %struct.user_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
