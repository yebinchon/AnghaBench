; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_read_raw_super_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_read_raw_super_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.f2fs_super_block = type { i32 }
%struct.buffer_head = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to read %dth superblock\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Can't find valid F2FS filesystem in %dth superblock\00", align 1
@F2FS_SUPER_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.f2fs_super_block**, i32*, i32*)* @read_raw_super_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_raw_super_block(%struct.f2fs_sb_info* %0, %struct.f2fs_super_block** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.f2fs_super_block**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.f2fs_super_block*, align 8
  %14 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %6, align 8
  store %struct.f2fs_super_block** %1, %struct.f2fs_super_block*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %16 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %10, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.f2fs_super_block* @kzalloc(i32 4, i32 %18)
  store %struct.f2fs_super_block* %19, %struct.f2fs_super_block** %13, align 8
  %20 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %13, align 8
  %21 = icmp ne %struct.f2fs_super_block* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %92

25:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %74, %25
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %77

29:                                               ; preds = %26
  %30 = load %struct.super_block*, %struct.super_block** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.buffer_head* @sb_bread(%struct.super_block* %30, i32 %31)
  store %struct.buffer_head* %32, %struct.buffer_head** %12, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %34 = icmp ne %struct.buffer_head* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @f2fs_err(%struct.f2fs_sb_info* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %14, align 4
  br label %74

42:                                               ; preds = %29
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %45 = call i32 @sanity_check_raw_super(%struct.f2fs_sb_info* %43, %struct.buffer_head* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @f2fs_err(%struct.f2fs_sb_info* %49, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %54 = call i32 @brelse(%struct.buffer_head* %53)
  br label %74

55:                                               ; preds = %42
  %56 = load %struct.f2fs_super_block**, %struct.f2fs_super_block*** %7, align 8
  %57 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %56, align 8
  %58 = icmp ne %struct.f2fs_super_block* %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %55
  %60 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %13, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @F2FS_SUPER_OFFSET, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @memcpy(%struct.f2fs_super_block* %60, i64 %65, i32 4)
  %67 = load i32, i32* %11, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %13, align 8
  %70 = load %struct.f2fs_super_block**, %struct.f2fs_super_block*** %7, align 8
  store %struct.f2fs_super_block* %69, %struct.f2fs_super_block** %70, align 8
  br label %71

71:                                               ; preds = %59, %55
  %72 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %73 = call i32 @brelse(%struct.buffer_head* %72)
  br label %74

74:                                               ; preds = %71, %48, %35
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %26

77:                                               ; preds = %26
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32*, i32** %9, align 8
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %80, %77
  %83 = load %struct.f2fs_super_block**, %struct.f2fs_super_block*** %7, align 8
  %84 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %83, align 8
  %85 = icmp ne %struct.f2fs_super_block* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %13, align 8
  %88 = call i32 @kvfree(%struct.f2fs_super_block* %87)
  br label %90

89:                                               ; preds = %82
  store i32 0, i32* %14, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %22
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.f2fs_super_block* @kzalloc(i32, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @f2fs_err(%struct.f2fs_sb_info*, i8*, i32) #1

declare dso_local i32 @sanity_check_raw_super(%struct.f2fs_sb_info*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(%struct.f2fs_super_block*, i64, i32) #1

declare dso_local i32 @kvfree(%struct.f2fs_super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
