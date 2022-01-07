; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_verity.c_ext4_get_verity_descriptor_location.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_verity.c_ext4_get_verity_descriptor_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i64, %struct.ext4_extent* }
%struct.ext4_extent = type { i32 }

@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"verity file doesn't use extents\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"verity file has no extents\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"verity file corrupted; can't find descriptor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64*, i32*)* @ext4_get_verity_descriptor_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_get_verity_descriptor_location(%struct.inode* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ext4_ext_path*, align 8
  %9 = alloca %struct.ext4_extent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %18 = call i32 @ext4_test_inode_flag(%struct.inode* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i32 @EXT4_ERROR_INODE(%struct.inode* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EFSCORRUPTED, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %122

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %28 = sub nsw i64 %27, 1
  %29 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %26, i64 %28, i32* null, i32 0)
  store %struct.ext4_ext_path* %29, %struct.ext4_ext_path** %8, align 8
  %30 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %31 = call i64 @IS_ERR(%struct.ext4_ext_path* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %35 = call i32 @PTR_ERR(%struct.ext4_ext_path* %34)
  store i32 %35, i32* %4, align 4
  br label %122

36:                                               ; preds = %25
  %37 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %38 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %39 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %37, i64 %40
  %42 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %41, i32 0, i32 1
  %43 = load %struct.ext4_extent*, %struct.ext4_extent** %42, align 8
  store %struct.ext4_extent* %43, %struct.ext4_extent** %9, align 8
  %44 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %45 = icmp ne %struct.ext4_extent* %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %36
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call i32 @EXT4_ERROR_INODE(%struct.inode* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %50 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %49)
  %51 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %52 = call i32 @kfree(%struct.ext4_ext_path* %51)
  %53 = load i32, i32* @EFSCORRUPTED, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %122

55:                                               ; preds = %36
  %56 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %57 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %61 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %60)
  %62 = add nsw i32 %59, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %63, %66
  store i32 %67, i32* %11, align 4
  %68 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %69 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %68)
  %70 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %8, align 8
  %71 = call i32 @kfree(%struct.ext4_ext_path* %70)
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %73, 4
  br i1 %74, label %75, label %76

75:                                               ; preds = %55
  br label %117

76:                                               ; preds = %55
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 %78, 4
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %11, align 4
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @pagecache_read(%struct.inode* %81, i32* %12, i32 4, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %4, align 4
  br label %122

88:                                               ; preds = %76
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @le32_to_cpu(i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @INT_MAX, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %88
  br label %117

99:                                               ; preds = %94
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load %struct.inode*, %struct.inode** %5, align 8
  %104 = call i32 @i_blocksize(%struct.inode* %103)
  %105 = call i32 @round_down(i32 %102, i32 %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.inode*, %struct.inode** %5, align 8
  %108 = call i32 @ext4_verity_metadata_pos(%struct.inode* %107)
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  br label %117

111:                                              ; preds = %99
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64*, i64** %6, align 8
  store i64 %113, i64* %114, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i32*, i32** %7, align 8
  store i32 %115, i32* %116, align 4
  store i32 0, i32* %4, align 4
  br label %122

117:                                              ; preds = %110, %98, %75
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = call i32 @EXT4_ERROR_INODE(%struct.inode* %118, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* @EFSCORRUPTED, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %117, %111, %86, %46, %33, %20
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*) #1

declare dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode*, i64, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @pagecache_read(%struct.inode*, i32*, i32, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @ext4_verity_metadata_pos(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
