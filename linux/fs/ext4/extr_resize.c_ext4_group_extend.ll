; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_group_extend.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_group_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_super_block = type { i32 }
%struct.buffer_head = type { i32 }

@DEBUG = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"extending last group from %llu to %llu blocks\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"filesystem too large to resize to %llu blocks safely\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"can't shrink FS - resize aborted\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"need to use ext2online to resize further\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"blocks_count overflow\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"will only finish group (%llu blocks, %u new)\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"can't read last block, resize aborted\00", align 1
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_group_extend(%struct.super_block* %0, %struct.ext4_super_block* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext4_super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ext4_super_block* %1, %struct.ext4_super_block** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %15 = call i64 @ext4_blocks_count(%struct.ext4_super_block* %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = load i32, i32* @DEBUG, align 4
  %18 = call i64 @test_opt(%struct.super_block* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = load i32, i32* @KERN_DEBUG, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @ext4_msg(%struct.super_block* %21, i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24)
  br label %26

26:                                               ; preds = %20, %3
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %26
  store i32 0, i32* %4, align 4
  br label %130

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 9
  %40 = zext i32 %39 to i64
  %41 = ashr i64 -1, %40
  %42 = icmp sgt i64 %35, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = load i32, i32* @KERN_ERR, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @ext4_msg(%struct.super_block* %44, i32 %45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %130

50:                                               ; preds = %34
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.super_block*, %struct.super_block** %5, align 8
  %56 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %130

59:                                               ; preds = %50
  %60 = load %struct.super_block*, %struct.super_block** %5, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @ext4_get_group_no_and_offset(%struct.super_block* %60, i64 %61, i32* %13, i64* %9)
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @EPERM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %130

70:                                               ; preds = %59
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = call i64 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %71)
  %73 = load i64, i64* %9, align 8
  %74 = sub nsw i64 %72, %73
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add nsw i64 %75, %76
  %78 = load i64, i64* %8, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load %struct.super_block*, %struct.super_block** %5, align 8
  %82 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %130

85:                                               ; preds = %70
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i64, i64* %7, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = sub nsw i64 %92, %93
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %91, %85
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %10, align 8
  %98 = add nsw i64 %96, %97
  %99 = load i64, i64* %7, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.super_block*, %struct.super_block** %5, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %10, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i64, i64* %10, align 8
  %107 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %102, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %105, i64 %106)
  br label %108

108:                                              ; preds = %101, %95
  %109 = load %struct.super_block*, %struct.super_block** %5, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %10, align 8
  %112 = add nsw i64 %110, %111
  %113 = sub nsw i64 %112, 1
  %114 = call %struct.buffer_head* @sb_bread(%struct.super_block* %109, i64 %113)
  store %struct.buffer_head* %114, %struct.buffer_head** %11, align 8
  %115 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %116 = icmp ne %struct.buffer_head* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %108
  %118 = load %struct.super_block*, %struct.super_block** %5, align 8
  %119 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %118, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i32, i32* @ENOSPC, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %130

122:                                              ; preds = %108
  %123 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %124 = call i32 @brelse(%struct.buffer_head* %123)
  %125 = load %struct.super_block*, %struct.super_block** %5, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @ext4_group_extend_no_check(%struct.super_block* %125, i64 %126, i64 %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %122, %117, %80, %65, %54, %43, %33
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i64 @ext4_blocks_count(%struct.ext4_super_block*) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*, i64, ...) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @ext4_get_group_no_and_offset(%struct.super_block*, i64, i32*, i64*) #1

declare dso_local i64 @EXT4_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_group_extend_no_check(%struct.super_block*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
