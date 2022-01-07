; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_validate_block_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_validate_block_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_group_info = type { i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"bg %u: bad block bitmap checksum\00", align 1
@EXT4_GROUP_INFO_BBITMAP_CORRUPT = common dso_local global i32 0, align 4
@EFSBADCRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"bg %u: block %llu: invalid block bitmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext4_group_desc*, i32, %struct.buffer_head*)* @ext4_validate_block_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_validate_block_bitmap(%struct.super_block* %0, %struct.ext4_group_desc* %1, i32 %2, %struct.buffer_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ext4_group_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ext4_group_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.ext4_group_desc* %1, %struct.ext4_group_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  %12 = load %struct.super_block*, %struct.super_block** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block* %12, i32 %13)
  store %struct.ext4_group_info* %14, %struct.ext4_group_info** %11, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %16 = call i64 @buffer_verified(%struct.buffer_head* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %90

19:                                               ; preds = %4
  %20 = load %struct.ext4_group_info*, %struct.ext4_group_info** %11, align 8
  %21 = call i64 @EXT4_MB_GRP_BBITMAP_CORRUPT(%struct.ext4_group_info* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EFSCORRUPTED, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %90

26:                                               ; preds = %19
  %27 = load %struct.super_block*, %struct.super_block** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ext4_lock_group(%struct.super_block* %27, i32 %28)
  %30 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %31 = call i64 @buffer_verified(%struct.buffer_head* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %86

34:                                               ; preds = %26
  %35 = load %struct.super_block*, %struct.super_block** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %39 = call i32 @ext4_block_bitmap_csum_verify(%struct.super_block* %35, i32 %36, %struct.ext4_group_desc* %37, %struct.buffer_head* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %34
  %46 = load %struct.super_block*, %struct.super_block** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ext4_unlock_group(%struct.super_block* %46, i32 %47)
  %49 = load %struct.super_block*, %struct.super_block** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (%struct.super_block*, i8*, i32, ...) @ext4_error(%struct.super_block* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.super_block*, %struct.super_block** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @EXT4_GROUP_INFO_BBITMAP_CORRUPT, align 4
  %55 = call i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block* %52, i32 %53, i32 %54)
  %56 = load i32, i32* @EFSBADCRC, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %90

58:                                               ; preds = %34
  %59 = load %struct.super_block*, %struct.super_block** %6, align 8
  %60 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %63 = call i64 @ext4_valid_block_bitmap(%struct.super_block* %59, %struct.ext4_group_desc* %60, i32 %61, %struct.buffer_head* %62)
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %58
  %70 = load %struct.super_block*, %struct.super_block** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ext4_unlock_group(%struct.super_block* %70, i32 %71)
  %73 = load %struct.super_block*, %struct.super_block** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i64, i64* %10, align 8
  %76 = call i32 (%struct.super_block*, i8*, i32, ...) @ext4_error(%struct.super_block* %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %74, i64 %75)
  %77 = load %struct.super_block*, %struct.super_block** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @EXT4_GROUP_INFO_BBITMAP_CORRUPT, align 4
  %80 = call i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block* %77, i32 %78, i32 %79)
  %81 = load i32, i32* @EFSCORRUPTED, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %90

83:                                               ; preds = %58
  %84 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %85 = call i32 @set_buffer_verified(%struct.buffer_head* %84)
  br label %86

86:                                               ; preds = %83, %33
  %87 = load %struct.super_block*, %struct.super_block** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ext4_unlock_group(%struct.super_block* %87, i32 %88)
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %69, %45, %23, %18
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block*, i32) #1

declare dso_local i64 @buffer_verified(%struct.buffer_head*) #1

declare dso_local i64 @EXT4_MB_GRP_BBITMAP_CORRUPT(%struct.ext4_group_info*) #1

declare dso_local i32 @ext4_lock_group(%struct.super_block*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_block_bitmap_csum_verify(%struct.super_block*, i32, %struct.ext4_group_desc*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_unlock_group(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32, ...) #1

declare dso_local i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block*, i32, i32) #1

declare dso_local i64 @ext4_valid_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*, i32, %struct.buffer_head*) #1

declare dso_local i32 @set_buffer_verified(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
