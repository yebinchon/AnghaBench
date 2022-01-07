; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_init_block_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_init_block_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32, i32 }
%struct.ext4_group_desc = type { i32 }
%struct.ext4_sb_info = type { i64 }

@EXT4_GROUP_INFO_BBITMAP_CORRUPT = common dso_local global i32 0, align 4
@EXT4_GROUP_INFO_IBITMAP_CORRUPT = common dso_local global i32 0, align 4
@EFSBADCRC = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*, i32, %struct.ext4_group_desc*)* @ext4_init_block_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_init_block_bitmap(%struct.super_block* %0, %struct.buffer_head* %1, i32 %2, %struct.ext4_group_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_group_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ext4_sb_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ext4_group_desc* %3, %struct.ext4_group_desc** %9, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %15)
  store %struct.ext4_sb_info* %16, %struct.ext4_sb_info** %12, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %19 = call i32 @buffer_locked(%struct.buffer_head* %18)
  %20 = call i32 @J_ASSERT_BH(%struct.buffer_head* %17, i32 %19)
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %24 = call i32 @ext4_group_desc_csum_verify(%struct.super_block* %21, i32 %22, %struct.ext4_group_desc* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %4
  %27 = load %struct.super_block*, %struct.super_block** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @EXT4_GROUP_INFO_BBITMAP_CORRUPT, align 4
  %30 = load i32, i32* @EXT4_GROUP_INFO_IBITMAP_CORRUPT, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block* %27, i32 %28, i32 %31)
  %33 = load i32, i32* @EFSBADCRC, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %156

35:                                               ; preds = %4
  %36 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.super_block*, %struct.super_block** %6, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memset(i32 %38, i32 0, i32 %41)
  %43 = load %struct.super_block*, %struct.super_block** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ext4_num_base_meta_clusters(%struct.super_block* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = lshr i32 %46, 3
  %48 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp uge i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %35
  %53 = load i32, i32* @EFSCORRUPTED, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %156

55:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %66, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ext4_set_bit(i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %56

69:                                               ; preds = %56
  %70 = load %struct.super_block*, %struct.super_block** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @ext4_group_first_block_no(%struct.super_block* %70, i32 %71)
  store i64 %72, i64* %13, align 8
  %73 = load %struct.super_block*, %struct.super_block** %6, align 8
  %74 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %75 = call i64 @ext4_block_bitmap(%struct.super_block* %73, %struct.ext4_group_desc* %74)
  store i64 %75, i64* %14, align 8
  %76 = load %struct.super_block*, %struct.super_block** %6, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @ext4_block_in_group(%struct.super_block* %76, i64 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %69
  %82 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %12, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %13, align 8
  %85 = sub nsw i64 %83, %84
  %86 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %82, i64 %85)
  %87 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %88 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ext4_set_bit(i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %81, %69
  %92 = load %struct.super_block*, %struct.super_block** %6, align 8
  %93 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %94 = call i64 @ext4_inode_bitmap(%struct.super_block* %92, %struct.ext4_group_desc* %93)
  store i64 %94, i64* %14, align 8
  %95 = load %struct.super_block*, %struct.super_block** %6, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i64 @ext4_block_in_group(%struct.super_block* %95, i64 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %91
  %101 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %12, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %13, align 8
  %104 = sub nsw i64 %102, %103
  %105 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %101, i64 %104)
  %106 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %107 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ext4_set_bit(i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %100, %91
  %111 = load %struct.super_block*, %struct.super_block** %6, align 8
  %112 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %113 = call i64 @ext4_inode_table(%struct.super_block* %111, %struct.ext4_group_desc* %112)
  store i64 %113, i64* %14, align 8
  br label %114

114:                                              ; preds = %141, %110
  %115 = load i64, i64* %14, align 8
  %116 = load %struct.super_block*, %struct.super_block** %6, align 8
  %117 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %118 = call i64 @ext4_inode_table(%struct.super_block* %116, %struct.ext4_group_desc* %117)
  %119 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %12, align 8
  %120 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = icmp slt i64 %115, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %114
  %125 = load %struct.super_block*, %struct.super_block** %6, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i64 @ext4_block_in_group(%struct.super_block* %125, i64 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %124
  %131 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %12, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* %13, align 8
  %134 = sub nsw i64 %132, %133
  %135 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %131, i64 %134)
  %136 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %137 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ext4_set_bit(i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %130, %124
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %14, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %14, align 8
  br label %114

144:                                              ; preds = %114
  %145 = load %struct.super_block*, %struct.super_block** %6, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @num_clusters_in_group(%struct.super_block* %145, i32 %146)
  %148 = load %struct.super_block*, %struct.super_block** %6, align 8
  %149 = getelementptr inbounds %struct.super_block, %struct.super_block* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %150, 8
  %152 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %153 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ext4_mark_bitmap_end(i32 %147, i32 %151, i32 %154)
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %144, %52, %26
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @J_ASSERT_BH(%struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @ext4_group_desc_csum_verify(%struct.super_block*, i32, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ext4_num_base_meta_clusters(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_set_bit(i32, i32) #1

declare dso_local i64 @ext4_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i64 @ext4_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_block_in_group(%struct.super_block*, i64, i32) #1

declare dso_local i32 @EXT4_B2C(%struct.ext4_sb_info*, i64) #1

declare dso_local i64 @ext4_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_mark_bitmap_end(i32, i32, i32) #1

declare dso_local i32 @num_clusters_in_group(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
