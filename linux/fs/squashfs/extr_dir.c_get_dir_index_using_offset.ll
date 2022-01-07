; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_dir.c_get_dir_index_using_offset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_dir.c_get_dir_index_using_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.squashfs_sb_info* }
%struct.squashfs_sb_info = type { i32 }
%struct.squashfs_dir_index = type { i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"Entered get_dir_index_using_offset, i_count %d, f_pos %lld\0A\00", align 1
@SQUASHFS_NAME_LEN = common dso_local global i32 0, align 4
@SQUASHFS_METADATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i32*, i32, i32, i32, i32)* @get_dir_index_using_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dir_index_using_offset(%struct.super_block* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.squashfs_sb_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.squashfs_dir_index, align 4
  store %struct.super_block* %0, %struct.super_block** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load %struct.super_block*, %struct.super_block** %9, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  %25 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %24, align 8
  store %struct.squashfs_sb_info* %25, %struct.squashfs_sb_info** %16, align 8
  store i32 0, i32* %20, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %15, align 4
  %30 = icmp sle i32 %29, 3
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %8, align 4
  br label %93

33:                                               ; preds = %7
  %34 = load i32, i32* %15, align 4
  %35 = sub nsw i32 %34, 3
  store i32 %35, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %80, %33
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %83

40:                                               ; preds = %36
  %41 = load %struct.super_block*, %struct.super_block** %9, align 8
  %42 = call i32 @squashfs_read_metadata(%struct.super_block* %41, %struct.squashfs_dir_index* %22, i32* %12, i32* %13, i32 12)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %83

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.squashfs_dir_index, %struct.squashfs_dir_index* %22, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %83

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.squashfs_dir_index, %struct.squashfs_dir_index* %22, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %21, align 4
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* @SQUASHFS_NAME_LEN, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %83

63:                                               ; preds = %54
  %64 = load %struct.super_block*, %struct.super_block** %9, align 8
  %65 = load i32, i32* %21, align 4
  %66 = call i32 @squashfs_read_metadata(%struct.super_block* %64, %struct.squashfs_dir_index* null, i32* %12, i32* %13, i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %83

70:                                               ; preds = %63
  %71 = load i32, i32* %19, align 4
  store i32 %71, i32* %20, align 4
  %72 = getelementptr inbounds %struct.squashfs_dir_index, %struct.squashfs_dir_index* %22, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  %75 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %16, align 8
  %76 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %18, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %18, align 4
  br label %36

83:                                               ; preds = %69, %62, %53, %45, %36
  %84 = load i32, i32* %20, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %84, %86
  %88 = load i32, i32* @SQUASHFS_METADATA_SIZE, align 4
  %89 = srem i32 %87, %88
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %20, align 4
  %92 = add nsw i32 %91, 3
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %83, %31
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @squashfs_read_metadata(%struct.super_block*, %struct.squashfs_dir_index*, i32*, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
