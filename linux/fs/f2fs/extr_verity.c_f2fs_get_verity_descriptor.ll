; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_verity.c_f2fs_get_verity_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_verity.c_f2fs_get_verity_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.fsverity_descriptor_location = type { i64, i32, i32 }

@F2FS_XATTR_INDEX_VERITY = common dso_local global i32 0, align 4
@F2FS_XATTR_NAME_VERITY = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unknown verity xattr format\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid verity xattr\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i64)* @f2fs_get_verity_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_get_verity_descriptor(%struct.inode* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fsverity_descriptor_location, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = load i32, i32* @F2FS_XATTR_INDEX_VERITY, align 4
  %14 = load i32, i32* @F2FS_XATTR_NAME_VERITY, align 4
  %15 = call i32 @f2fs_getxattr(%struct.inode* %12, i32 %13, i32 %14, %struct.fsverity_descriptor_location* %8, i32 16, i32* null)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @ERANGE, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %101

25:                                               ; preds = %18, %3
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 16
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fsverity_descriptor_location, %struct.fsverity_descriptor_location* %8, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @cpu_to_le32(i32 1)
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29, %25
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call i32 @F2FS_I_SB(%struct.inode* %35)
  %37 = call i32 @f2fs_warn(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %101

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.fsverity_descriptor_location, %struct.fsverity_descriptor_location* %8, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @le32_to_cpu(i32 %42)
  store i64 %43, i64* %10, align 8
  %44 = getelementptr inbounds %struct.fsverity_descriptor_location, %struct.fsverity_descriptor_location* %8, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @le64_to_cpu(i32 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %47, %48
  %50 = load i64, i64* %11, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %71, label %52

52:                                               ; preds = %40
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %53, %54
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ugt i64 %55, %60
  br i1 %61, label %71, label %62

62:                                               ; preds = %52
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = call i64 @f2fs_verity_metadata_pos(%struct.inode* %64)
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @INT_MAX, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67, %62, %52, %40
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = call i32 @F2FS_I_SB(%struct.inode* %72)
  %74 = call i32 @f2fs_warn(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @EFSCORRUPTED, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %101

77:                                               ; preds = %67
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @ERANGE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %101

87:                                               ; preds = %80
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @pagecache_read(%struct.inode* %88, i8* %89, i64 %90, i64 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %4, align 4
  br label %101

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %77
  %99 = load i64, i64* %10, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %98, %95, %84, %71, %34, %23
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @f2fs_getxattr(%struct.inode*, i32, i32, %struct.fsverity_descriptor_location*, i32, i32*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @f2fs_warn(i32, i8*) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @f2fs_verity_metadata_pos(%struct.inode*) #1

declare dso_local i32 @pagecache_read(%struct.inode*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
