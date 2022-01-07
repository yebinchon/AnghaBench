; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_setup_new_descs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_setup_new_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_new_flex_group_data = type { i32, i32*, %struct.ext4_new_group_data* }
%struct.ext4_new_group_data = type { i32, i32, i32, i32, i32 }
%struct.ext4_group_desc = type { i32 }
%struct.ext4_sb_info = type { %struct.buffer_head** }
%struct.buffer_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.super_block*, %struct.ext4_new_flex_group_data*)* @ext4_setup_new_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_setup_new_descs(i32* %0, %struct.super_block* %1, %struct.ext4_new_flex_group_data* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext4_new_flex_group_data*, align 8
  %7 = alloca %struct.ext4_new_group_data*, align 8
  %8 = alloca %struct.ext4_group_desc*, align 8
  %9 = alloca %struct.ext4_sb_info*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  store %struct.ext4_new_flex_group_data* %2, %struct.ext4_new_flex_group_data** %6, align 8
  %17 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %18 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %17, i32 0, i32 2
  %19 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %18, align 8
  store %struct.ext4_new_group_data* %19, %struct.ext4_new_group_data** %7, align 8
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %20)
  store %struct.ext4_sb_info* %21, %struct.ext4_sb_info** %9, align 8
  %22 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %23 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %12, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %143, %3
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %6, align 8
  %28 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %150

31:                                               ; preds = %25
  %32 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %7, align 8
  %33 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = call i32 @EXT4_DESC_PER_BLOCK(%struct.super_block* %36)
  %38 = srem i32 %35, %37
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = call i32 @EXT4_DESC_PER_BLOCK(%struct.super_block* %40)
  %42 = sdiv i32 %39, %41
  store i32 %42, i32* %15, align 4
  %43 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %44 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %43, i32 0, i32 0
  %45 = load %struct.buffer_head**, %struct.buffer_head*** %44, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %45, i64 %47
  %49 = load %struct.buffer_head*, %struct.buffer_head** %48, align 8
  store %struct.buffer_head* %49, %struct.buffer_head** %10, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  %55 = call i32 @EXT4_DESC_SIZE(%struct.super_block* %54)
  %56 = mul nsw i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %52, %57
  %59 = inttoptr i64 %58 to %struct.ext4_group_desc*
  store %struct.ext4_group_desc* %59, %struct.ext4_group_desc** %8, align 8
  %60 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %61 = load %struct.super_block*, %struct.super_block** %5, align 8
  %62 = call i32 @EXT4_DESC_SIZE(%struct.super_block* %61)
  %63 = call i32 @memset(%struct.ext4_group_desc* %60, i32 0, i32 %62)
  %64 = load %struct.super_block*, %struct.super_block** %5, align 8
  %65 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %66 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %7, align 8
  %67 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ext4_block_bitmap_set(%struct.super_block* %64, %struct.ext4_group_desc* %65, i32 %68)
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %72 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %7, align 8
  %73 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ext4_inode_bitmap_set(%struct.super_block* %70, %struct.ext4_group_desc* %71, i32 %74)
  %76 = load %struct.super_block*, %struct.super_block** %5, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %79 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %7, align 8
  %80 = call i32 @ext4_set_bitmap_checksums(%struct.super_block* %76, i32 %77, %struct.ext4_group_desc* %78, %struct.ext4_new_group_data* %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %31
  %84 = load %struct.super_block*, %struct.super_block** %5, align 8
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @ext4_std_error(%struct.super_block* %84, i32 %85)
  br label %150

87:                                               ; preds = %31
  %88 = load %struct.super_block*, %struct.super_block** %5, align 8
  %89 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %90 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %7, align 8
  %91 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ext4_inode_table_set(%struct.super_block* %88, %struct.ext4_group_desc* %89, i32 %92)
  %94 = load %struct.super_block*, %struct.super_block** %5, align 8
  %95 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %96 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %7, align 8
  %97 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ext4_free_group_clusters_set(%struct.super_block* %94, %struct.ext4_group_desc* %95, i32 %98)
  %100 = load %struct.super_block*, %struct.super_block** %5, align 8
  %101 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %102 = load %struct.super_block*, %struct.super_block** %5, align 8
  %103 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %102)
  %104 = call i32 @ext4_free_inodes_set(%struct.super_block* %100, %struct.ext4_group_desc* %101, i32 %103)
  %105 = load %struct.super_block*, %struct.super_block** %5, align 8
  %106 = call i64 @ext4_has_group_desc_csum(%struct.super_block* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %87
  %109 = load %struct.super_block*, %struct.super_block** %5, align 8
  %110 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %111 = load %struct.super_block*, %struct.super_block** %5, align 8
  %112 = call i32 @EXT4_INODES_PER_GROUP(%struct.super_block* %111)
  %113 = call i32 @ext4_itable_unused_set(%struct.super_block* %109, %struct.ext4_group_desc* %110, i32 %112)
  br label %114

114:                                              ; preds = %108, %87
  %115 = load i32*, i32** %12, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @cpu_to_le16(i32 %116)
  %118 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %119 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.super_block*, %struct.super_block** %5, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %123 = call i32 @ext4_group_desc_csum_set(%struct.super_block* %120, i32 %121, %struct.ext4_group_desc* %122)
  %124 = load i32*, i32** %4, align 8
  %125 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %126 = call i32 @ext4_handle_dirty_metadata(i32* %124, i32* null, %struct.buffer_head* %125)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %114
  %131 = load %struct.super_block*, %struct.super_block** %5, align 8
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @ext4_std_error(%struct.super_block* %131, i32 %132)
  br label %150

134:                                              ; preds = %114
  %135 = load %struct.super_block*, %struct.super_block** %5, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %138 = call i32 @ext4_mb_add_groupinfo(%struct.super_block* %135, i32 %136, %struct.ext4_group_desc* %137)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %150

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  %146 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %7, align 8
  %147 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %146, i32 1
  store %struct.ext4_new_group_data* %147, %struct.ext4_new_group_data** %7, align 8
  %148 = load i32*, i32** %12, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %12, align 8
  br label %25

150:                                              ; preds = %141, %130, %83, %25
  %151 = load i32, i32* %16, align 4
  ret i32 %151
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @EXT4_DESC_PER_BLOCK(%struct.super_block*) #1

declare dso_local i32 @EXT4_DESC_SIZE(%struct.super_block*) #1

declare dso_local i32 @memset(%struct.ext4_group_desc*, i32, i32) #1

declare dso_local i32 @ext4_block_bitmap_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i32 @ext4_inode_bitmap_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i32 @ext4_set_bitmap_checksums(%struct.super_block*, i32, %struct.ext4_group_desc*, %struct.ext4_new_group_data*) #1

declare dso_local i32 @ext4_std_error(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_inode_table_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i32 @ext4_free_group_clusters_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i32 @ext4_free_inodes_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i32 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i64 @ext4_has_group_desc_csum(%struct.super_block*) #1

declare dso_local i32 @ext4_itable_unused_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_group_desc_csum_set(%struct.super_block*, i32, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, i32*, %struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_mb_add_groupinfo(%struct.super_block*, i32, %struct.ext4_group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
