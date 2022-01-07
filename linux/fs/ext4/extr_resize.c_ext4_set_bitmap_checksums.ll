; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_set_bitmap_checksums.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_set_bitmap_checksums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.ext4_new_group_data = type { i32, i32 }
%struct.buffer_head = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.ext4_group_desc*, %struct.ext4_new_group_data*)* @ext4_set_bitmap_checksums to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_set_bitmap_checksums(%struct.super_block* %0, i32 %1, %struct.ext4_group_desc* %2, %struct.ext4_new_group_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_group_desc*, align 8
  %9 = alloca %struct.ext4_new_group_data*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ext4_group_desc* %2, %struct.ext4_group_desc** %8, align 8
  store %struct.ext4_new_group_data* %3, %struct.ext4_new_group_data** %9, align 8
  %11 = load %struct.super_block*, %struct.super_block** %6, align 8
  %12 = call i32 @ext4_has_metadata_csum(%struct.super_block* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

15:                                               ; preds = %4
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %9, align 8
  %18 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.buffer_head* @ext4_get_bitmap(%struct.super_block* %16, i32 %19)
  store %struct.buffer_head* %20, %struct.buffer_head** %10, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %22 = icmp ne %struct.buffer_head* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %55

26:                                               ; preds = %15
  %27 = load %struct.super_block*, %struct.super_block** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %31)
  %33 = sdiv i32 %32, 8
  %34 = call i32 @ext4_inode_bitmap_csum_set(%struct.super_block* %27, i32 %28, %struct.ext4_group_desc* %29, %struct.buffer_head* %30, i32 %33)
  %35 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %36 = call i32 @brelse(%struct.buffer_head* %35)
  %37 = load %struct.super_block*, %struct.super_block** %6, align 8
  %38 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %9, align 8
  %39 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.buffer_head* @ext4_get_bitmap(%struct.super_block* %37, i32 %40)
  store %struct.buffer_head* %41, %struct.buffer_head** %10, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %43 = icmp ne %struct.buffer_head* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %26
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %55

47:                                               ; preds = %26
  %48 = load %struct.super_block*, %struct.super_block** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %52 = call i32 @ext4_block_bitmap_csum_set(%struct.super_block* %48, i32 %49, %struct.ext4_group_desc* %50, %struct.buffer_head* %51)
  %53 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %54 = call i32 @brelse(%struct.buffer_head* %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %47, %44, %23, %14
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @ext4_has_metadata_csum(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @ext4_get_bitmap(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_inode_bitmap_csum_set(%struct.super_block*, i32, %struct.ext4_group_desc*, %struct.buffer_head*, i32) #1

declare dso_local i32 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_block_bitmap_csum_set(%struct.super_block*, i32, %struct.ext4_group_desc*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
