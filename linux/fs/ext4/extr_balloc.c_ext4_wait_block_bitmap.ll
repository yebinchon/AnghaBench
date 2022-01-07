; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_wait_block_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_wait_block_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext4_group_desc = type { i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Cannot read block bitmap - block_group = %u, block_bitmap = %llu\00", align 1
@EXT4_GROUP_INFO_BBITMAP_CORRUPT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_wait_block_bitmap(%struct.super_block* %0, i32 %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ext4_group_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %10 = call i32 @buffer_new(%struct.buffer_head* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

13:                                               ; preds = %3
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %14, i32 %15, i32* null)
  store %struct.ext4_group_desc* %16, %struct.ext4_group_desc** %8, align 8
  %17 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %18 = icmp ne %struct.ext4_group_desc* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @EFSCORRUPTED, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %49

22:                                               ; preds = %13
  %23 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %24 = call i32 @wait_on_buffer(%struct.buffer_head* %23)
  %25 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %26 = call i32 @buffer_uptodate(%struct.buffer_head* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %22
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %32 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ext4_error(%struct.super_block* %29, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33)
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @EXT4_GROUP_INFO_BBITMAP_CORRUPT, align 4
  %38 = call i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block* %35, i32 %36, i32 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %49

41:                                               ; preds = %22
  %42 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %43 = call i32 @clear_buffer_new(%struct.buffer_head* %42)
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %48 = call i32 @ext4_validate_block_bitmap(%struct.super_block* %44, %struct.ext4_group_desc* %45, i32 %46, %struct.buffer_head* %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %41, %28, %19, %12
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @buffer_new(%struct.buffer_head*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32, i64) #1

declare dso_local i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block*, i32, i32) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @ext4_validate_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*, i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
