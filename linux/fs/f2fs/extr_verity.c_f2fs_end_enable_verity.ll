; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_verity.c_f2fs_end_enable_verity.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_verity.c_f2fs_end_enable_verity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.fsverity_descriptor_location = type { i32, i32, i32 }

@FI_VERITY_IN_PROGRESS = common dso_local global i32 0, align 4
@F2FS_XATTR_INDEX_VERITY = common dso_local global i32 0, align 4
@F2FS_XATTR_NAME_VERITY = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, i64)* @f2fs_end_enable_verity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_end_enable_verity(%struct.file* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fsverity_descriptor_location, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.inode* @file_inode(%struct.file* %13)
  store %struct.inode* %14, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = call i64 @f2fs_verity_metadata_pos(%struct.inode* %15)
  %17 = load i64, i64* %8, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %10, align 8
  %19 = getelementptr inbounds %struct.fsverity_descriptor_location, %struct.fsverity_descriptor_location* %11, i32 0, i32 0
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @cpu_to_le64(i64 %20)
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds %struct.fsverity_descriptor_location, %struct.fsverity_descriptor_location* %11, i32 0, i32 1
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @cpu_to_le32(i64 %23)
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds %struct.fsverity_descriptor_location, %struct.fsverity_descriptor_location* %11, i32 0, i32 2
  %26 = call i32 @cpu_to_le32(i64 1)
  store i32 %26, i32* %25, align 4
  store i32 0, i32* %12, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %4
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @pagecache_write(%struct.inode* %30, i8* %31, i64 %32, i64 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @filemap_write_and_wait(i32 %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %37, %29
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i8*, i8** %6, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %43
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = call i32 @f2fs_truncate(%struct.inode* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = load i32, i32* @FI_VERITY_IN_PROGRESS, align 4
  %55 = call i32 @clear_inode_flag(%struct.inode* %53, i32 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %58
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = load i32, i32* @F2FS_XATTR_INDEX_VERITY, align 4
  %64 = load i32, i32* @F2FS_XATTR_NAME_VERITY, align 4
  %65 = load i32, i32* @XATTR_CREATE, align 4
  %66 = call i32 @f2fs_setxattr(%struct.inode* %62, i32 %63, i32 %64, %struct.fsverity_descriptor_location* %11, i32 12, i32* null, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %61
  %70 = load %struct.inode*, %struct.inode** %9, align 8
  %71 = call i32 @file_set_verity(%struct.inode* %70)
  %72 = load %struct.inode*, %struct.inode** %9, align 8
  %73 = call i32 @f2fs_set_inode_flags(%struct.inode* %72)
  %74 = load %struct.inode*, %struct.inode** %9, align 8
  %75 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %74, i32 1)
  br label %76

76:                                               ; preds = %69, %61
  br label %77

77:                                               ; preds = %76, %58, %52
  %78 = load i32, i32* %12, align 4
  ret i32 %78
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @f2fs_verity_metadata_pos(%struct.inode*) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @pagecache_write(%struct.inode*, i8*, i64, i64) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @f2fs_truncate(%struct.inode*) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_setxattr(%struct.inode*, i32, i32, %struct.fsverity_descriptor_location*, i32, i32*, i32) #1

declare dso_local i32 @file_set_verity(%struct.inode*) #1

declare dso_local i32 @f2fs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
