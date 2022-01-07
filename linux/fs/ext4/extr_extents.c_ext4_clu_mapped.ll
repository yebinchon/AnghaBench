; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_clu_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_clu_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_sb_info = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent*, i32 }
%struct.ext4_extent = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"bad extent address - lblock: %lu, depth: %d, pblock: %lld\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_clu_mapped(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ext4_sb_info*, align 8
  %6 = alloca %struct.ext4_ext_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_extent*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ext4_sb_info* @EXT4_SB(i32 %16)
  store %struct.ext4_sb_info* %17, %struct.ext4_sb_info** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @EXT4_C2B(%struct.ext4_sb_info* %19, i64 %20)
  %22 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %18, i64 %21, i32* null, i32 0)
  store %struct.ext4_ext_path* %22, %struct.ext4_ext_path** %6, align 8
  %23 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %24 = call i64 @IS_ERR(%struct.ext4_ext_path* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %28 = call i32 @PTR_ERR(%struct.ext4_ext_path* %27)
  store i32 %28, i32* %9, align 4
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %6, align 8
  br label %108

29:                                               ; preds = %2
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call i32 @ext_depth(%struct.inode* %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %32, i64 %34
  %36 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %35, i32 0, i32 0
  %37 = load %struct.ext4_extent*, %struct.ext4_extent** %36, align 8
  %38 = icmp eq %struct.ext4_extent* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %39, %29
  %43 = phi i1 [ false, %29 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @EXT4_C2B(%struct.ext4_sb_info* %49, i64 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %53, i64 %55
  %57 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @EXT4_ERROR_INODE(%struct.inode* %48, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %51, i32 %52, i32 %58)
  %60 = load i32, i32* @EFSCORRUPTED, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %108

62:                                               ; preds = %42
  %63 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %63, i64 %65
  %67 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %66, i32 0, i32 0
  %68 = load %struct.ext4_extent*, %struct.ext4_extent** %67, align 8
  store %struct.ext4_extent* %68, %struct.ext4_extent** %10, align 8
  %69 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %70 = icmp eq %struct.ext4_extent* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %108

72:                                               ; preds = %62
  %73 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %74 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le32_to_cpu(i32 %75)
  store i64 %76, i64* %11, align 8
  %77 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %77, i64 %78)
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %72
  %84 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %87 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %86)
  %88 = add nsw i64 %85, %87
  %89 = sub nsw i64 %88, 1
  %90 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %84, i64 %89)
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* %13, align 8
  %93 = icmp sle i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 1, i32* %8, align 4
  br label %106

95:                                               ; preds = %83
  %96 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %97 = call i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %96)
  store i64 %97, i64* %11, align 8
  %98 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %98, i64 %99)
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* %12, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  store i32 1, i32* %8, align 4
  br label %105

105:                                              ; preds = %104, %95
  br label %106

106:                                              ; preds = %105, %94
  br label %107

107:                                              ; preds = %106, %72
  br label %108

108:                                              ; preds = %107, %71, %47, %26
  %109 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %110 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %109)
  %111 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %112 = call i32 @kfree(%struct.ext4_ext_path* %111)
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* %9, align 4
  br label %119

117:                                              ; preds = %108
  %118 = load i32, i32* %8, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  ret i32 %120
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode*, i64, i32*, i32) #1

declare dso_local i64 @EXT4_C2B(%struct.ext4_sb_info*, i64) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i64, i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @EXT4_B2C(%struct.ext4_sb_info*, i64) #1

declare dso_local i64 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
