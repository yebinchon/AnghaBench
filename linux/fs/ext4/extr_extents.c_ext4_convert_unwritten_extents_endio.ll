; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_convert_unwritten_extents_endio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_convert_unwritten_extents_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ext4_map_blocks = type { i64, i32 }
%struct.ext4_ext_path = type { i32, %struct.ext4_extent* }
%struct.ext4_extent = type { i32 }

@.str = private unnamed_addr constant [83 x i8] c"ext4_convert_unwritten_extents_endio: inode %lu, logicalblock %llu, max_blocks %u\0A\00", align 1
@EXT4_GET_BLOCKS_CONVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_map_blocks*, %struct.ext4_ext_path**)* @ext4_convert_unwritten_extents_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_convert_unwritten_extents_endio(i32* %0, %struct.inode* %1, %struct.ext4_map_blocks* %2, %struct.ext4_ext_path** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_map_blocks*, align 8
  %9 = alloca %struct.ext4_ext_path**, align 8
  %10 = alloca %struct.ext4_ext_path*, align 8
  %11 = alloca %struct.ext4_extent*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext4_map_blocks* %2, %struct.ext4_map_blocks** %8, align 8
  store %struct.ext4_ext_path** %3, %struct.ext4_ext_path*** %9, align 8
  %16 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %9, align 8
  %17 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  store %struct.ext4_ext_path* %17, %struct.ext4_ext_path** %10, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call i32 @ext_depth(%struct.inode* %18)
  store i32 %19, i32* %14, align 4
  %20 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %21 = load i32, i32* %14, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %20, i64 %22
  %24 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %23, i32 0, i32 1
  %25 = load %struct.ext4_extent*, %struct.ext4_extent** %24, align 8
  store %struct.ext4_extent* %25, %struct.ext4_extent** %11, align 8
  %26 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %27 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  store i64 %29, i64* %12, align 8
  %30 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %31 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @ext_debug(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %35, i32 %36)
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %40 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %4
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %46 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ugt i32 %44, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %43, %4
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %53 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %9, align 8
  %54 = load i32, i32* @EXT4_GET_BLOCKS_CONVERT, align 4
  %55 = call i32 @ext4_split_convert_extents(i32* %50, %struct.inode* %51, %struct.ext4_map_blocks* %52, %struct.ext4_ext_path** %53, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %5, align 4
  br label %115

60:                                               ; preds = %49
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %63 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %9, align 8
  %66 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %61, i64 %64, %struct.ext4_ext_path** %65, i32 0)
  store %struct.ext4_ext_path* %66, %struct.ext4_ext_path** %10, align 8
  %67 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %68 = call i64 @IS_ERR(%struct.ext4_ext_path* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %72 = call i32 @PTR_ERR(%struct.ext4_ext_path* %71)
  store i32 %72, i32* %5, align 4
  br label %115

73:                                               ; preds = %60
  %74 = load %struct.inode*, %struct.inode** %7, align 8
  %75 = call i32 @ext_depth(%struct.inode* %74)
  store i32 %75, i32* %14, align 4
  %76 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %76, i64 %78
  %80 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %79, i32 0, i32 1
  %81 = load %struct.ext4_extent*, %struct.ext4_extent** %80, align 8
  store %struct.ext4_extent* %81, %struct.ext4_extent** %11, align 8
  br label %82

82:                                               ; preds = %73, %43
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.inode*, %struct.inode** %7, align 8
  %85 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %85, i64 %87
  %89 = call i32 @ext4_ext_get_access(i32* %83, %struct.inode* %84, %struct.ext4_ext_path* %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %110

93:                                               ; preds = %82
  %94 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %95 = call i32 @ext4_ext_mark_initialized(%struct.ext4_extent* %94)
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %99 = load %struct.ext4_extent*, %struct.ext4_extent** %11, align 8
  %100 = call i32 @ext4_ext_try_to_merge(i32* %96, %struct.inode* %97, %struct.ext4_ext_path* %98, %struct.ext4_extent* %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %104 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %105 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %103, i64 %107
  %109 = call i32 @ext4_ext_dirty(i32* %101, %struct.inode* %102, %struct.ext4_ext_path* %108)
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %93, %92
  %111 = load %struct.inode*, %struct.inode** %7, align 8
  %112 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %113 = call i32 @ext4_ext_show_leaf(%struct.inode* %111, %struct.ext4_ext_path* %112)
  %114 = load i32, i32* %15, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %110, %70, %58
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @ext_debug(i8*, i32, i64, i32) #1

declare dso_local i32 @ext4_split_convert_extents(i32*, %struct.inode*, %struct.ext4_map_blocks*, %struct.ext4_ext_path**, i32) #1

declare dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode*, i64, %struct.ext4_ext_path**, i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_get_access(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_mark_initialized(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_try_to_merge(i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_dirty(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_show_leaf(%struct.inode*, %struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
