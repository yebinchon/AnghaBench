; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_shmem.c___shmem_file_setup.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_shmem.c___shmem_file_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vfsmount = type { i32 }
%struct.inode = type { i32, i32 }

@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@shmem_file_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (%struct.vfsmount*, i8*, i32, i64, i32)* @__shmem_file_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @__shmem_file_setup(%struct.vfsmount* %0, i8* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.file*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %15 = call i64 @IS_ERR(%struct.vfsmount* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %19 = call %struct.vfsmount* @ERR_CAST(%struct.vfsmount* %18)
  %20 = bitcast %struct.vfsmount* %19 to %struct.file*
  store %struct.file* %20, %struct.file** %6, align 8
  br label %103

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.vfsmount* @ERR_PTR(i32 %30)
  %32 = bitcast %struct.vfsmount* %31 to %struct.file*
  store %struct.file* %32, %struct.file** %6, align 8
  br label %103

33:                                               ; preds = %24
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @shmem_acct_size(i64 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.vfsmount* @ERR_PTR(i32 %40)
  %42 = bitcast %struct.vfsmount* %41 to %struct.file*
  store %struct.file* %42, %struct.file** %6, align 8
  br label %103

43:                                               ; preds = %33
  %44 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %45 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @S_IFREG, align 4
  %48 = load i32, i32* @S_IRWXUGO, align 4
  %49 = or i32 %47, %48
  %50 = load i64, i64* %10, align 8
  %51 = call %struct.inode* @shmem_get_inode(i32 %46, i32* null, i32 %49, i32 0, i64 %50)
  store %struct.inode* %51, %struct.inode** %12, align 8
  %52 = load %struct.inode*, %struct.inode** %12, align 8
  %53 = icmp ne %struct.inode* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %43
  %59 = load i64, i64* %10, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @shmem_unacct_size(i64 %59, i32 %60)
  %62 = load i32, i32* @ENOSPC, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.vfsmount* @ERR_PTR(i32 %63)
  %65 = bitcast %struct.vfsmount* %64 to %struct.file*
  store %struct.file* %65, %struct.file** %6, align 8
  br label %103

66:                                               ; preds = %43
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.inode*, %struct.inode** %12, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.inode*, %struct.inode** %12, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.inode*, %struct.inode** %12, align 8
  %76 = call i32 @clear_nlink(%struct.inode* %75)
  %77 = load %struct.inode*, %struct.inode** %12, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @ramfs_nommu_expand_for_mapping(%struct.inode* %77, i32 %78)
  %80 = call %struct.vfsmount* @ERR_PTR(i32 %79)
  %81 = bitcast %struct.vfsmount* %80 to %struct.file*
  store %struct.file* %81, %struct.file** %13, align 8
  %82 = load %struct.file*, %struct.file** %13, align 8
  %83 = bitcast %struct.file* %82 to %struct.vfsmount*
  %84 = call i64 @IS_ERR(%struct.vfsmount* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %66
  %87 = load %struct.inode*, %struct.inode** %12, align 8
  %88 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* @O_RDWR, align 4
  %91 = call %struct.vfsmount* @alloc_file_pseudo(%struct.inode* %87, %struct.vfsmount* %88, i8* %89, i32 %90, i32* @shmem_file_operations)
  %92 = bitcast %struct.vfsmount* %91 to %struct.file*
  store %struct.file* %92, %struct.file** %13, align 8
  br label %93

93:                                               ; preds = %86, %66
  %94 = load %struct.file*, %struct.file** %13, align 8
  %95 = bitcast %struct.file* %94 to %struct.vfsmount*
  %96 = call i64 @IS_ERR(%struct.vfsmount* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.inode*, %struct.inode** %12, align 8
  %100 = call i32 @iput(%struct.inode* %99)
  br label %101

101:                                              ; preds = %98, %93
  %102 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %102, %struct.file** %6, align 8
  br label %103

103:                                              ; preds = %101, %58, %38, %28, %17
  %104 = load %struct.file*, %struct.file** %6, align 8
  ret %struct.file* %104
}

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local %struct.vfsmount* @ERR_CAST(%struct.vfsmount*) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local i64 @shmem_acct_size(i64, i32) #1

declare dso_local %struct.inode* @shmem_get_inode(i32, i32*, i32, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @shmem_unacct_size(i64, i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @ramfs_nommu_expand_for_mapping(%struct.inode*, i32) #1

declare dso_local %struct.vfsmount* @alloc_file_pseudo(%struct.inode*, %struct.vfsmount*, i8*, i32, i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
