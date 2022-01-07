; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_ext4_validate_inode_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_ext4_validate_inode_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_group_info = type { i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Corrupt inode bitmap - block_group = %u, inode_bitmap = %llu\00", align 1
@EXT4_GROUP_INFO_IBITMAP_CORRUPT = common dso_local global i32 0, align 4
@EFSBADCRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext4_group_desc*, i32, %struct.buffer_head*)* @ext4_validate_inode_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_validate_inode_bitmap(%struct.super_block* %0, %struct.ext4_group_desc* %1, i32 %2, %struct.buffer_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ext4_group_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
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
  br label %68

19:                                               ; preds = %4
  %20 = load %struct.ext4_group_info*, %struct.ext4_group_info** %11, align 8
  %21 = call i64 @EXT4_MB_GRP_IBITMAP_CORRUPT(%struct.ext4_group_info* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EFSCORRUPTED, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %68

26:                                               ; preds = %19
  %27 = load %struct.super_block*, %struct.super_block** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ext4_lock_group(%struct.super_block* %27, i32 %28)
  %30 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %31 = call i64 @buffer_verified(%struct.buffer_head* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %64

34:                                               ; preds = %26
  %35 = load %struct.super_block*, %struct.super_block** %6, align 8
  %36 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %37 = call i32 @ext4_inode_bitmap(%struct.super_block* %35, %struct.ext4_group_desc* %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.super_block*, %struct.super_block** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %42 = load %struct.super_block*, %struct.super_block** %6, align 8
  %43 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %42)
  %44 = sdiv i32 %43, 8
  %45 = call i32 @ext4_inode_bitmap_csum_verify(%struct.super_block* %38, i32 %39, %struct.ext4_group_desc* %40, %struct.buffer_head* %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %34
  %48 = load %struct.super_block*, %struct.super_block** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ext4_unlock_group(%struct.super_block* %48, i32 %49)
  %51 = load %struct.super_block*, %struct.super_block** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @ext4_error(%struct.super_block* %51, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.super_block*, %struct.super_block** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @EXT4_GROUP_INFO_IBITMAP_CORRUPT, align 4
  %58 = call i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block* %55, i32 %56, i32 %57)
  %59 = load i32, i32* @EFSBADCRC, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %68

61:                                               ; preds = %34
  %62 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %63 = call i32 @set_buffer_verified(%struct.buffer_head* %62)
  br label %64

64:                                               ; preds = %61, %33
  %65 = load %struct.super_block*, %struct.super_block** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ext4_unlock_group(%struct.super_block* %65, i32 %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %47, %23, %18
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block*, i32) #1

declare dso_local i64 @buffer_verified(%struct.buffer_head*) #1

declare dso_local i64 @EXT4_MB_GRP_IBITMAP_CORRUPT(%struct.ext4_group_info*) #1

declare dso_local i32 @ext4_lock_group(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_inode_bitmap_csum_verify(%struct.super_block*, i32, %struct.ext4_group_desc*, %struct.buffer_head*, i32) #1

declare dso_local i32 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext4_unlock_group(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32, i32) #1

declare dso_local i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block*, i32, i32) #1

declare dso_local i32 @set_buffer_verified(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
