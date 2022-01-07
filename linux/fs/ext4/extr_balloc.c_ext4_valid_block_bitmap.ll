; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_valid_block_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_valid_block_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_sb_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.super_block*, %struct.ext4_group_desc*, i32, %struct.buffer_head*)* @ext4_valid_block_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_valid_block_bitmap(%struct.super_block* %0, %struct.ext4_group_desc* %1, i32 %2, %struct.buffer_head* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ext4_group_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ext4_sb_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.ext4_group_desc* %1, %struct.ext4_group_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %16)
  store %struct.ext4_sb_info* %17, %struct.ext4_sb_info** %10, align 8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = call i64 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block* %18)
  store i64 %19, i64* %13, align 8
  %20 = load %struct.super_block*, %struct.super_block** %6, align 8
  %21 = call i64 @ext4_has_feature_flex_bg(%struct.super_block* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %133

24:                                               ; preds = %4
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @ext4_group_first_block_no(%struct.super_block* %25, i32 %26)
  store i64 %27, i64* %15, align 8
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %30 = call i64 @ext4_block_bitmap(%struct.super_block* %28, %struct.ext4_group_desc* %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %15, align 8
  %33 = sub nsw i64 %31, %32
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %24
  %37 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %37, i64 %38)
  %40 = load i64, i64* %13, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %43, i64 %44)
  %46 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ext4_test_bit(i64 %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %42, %36, %24
  %52 = load i64, i64* %14, align 8
  store i64 %52, i64* %5, align 8
  br label %133

53:                                               ; preds = %42
  %54 = load %struct.super_block*, %struct.super_block** %6, align 8
  %55 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %56 = call i64 @ext4_inode_bitmap(%struct.super_block* %54, %struct.ext4_group_desc* %55)
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %15, align 8
  %59 = sub nsw i64 %57, %58
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %53
  %63 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %63, i64 %64)
  %66 = load i64, i64* %13, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %77, label %68

68:                                               ; preds = %62
  %69 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %69, i64 %70)
  %72 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ext4_test_bit(i64 %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %68, %62, %53
  %78 = load i64, i64* %14, align 8
  store i64 %78, i64* %5, align 8
  br label %133

79:                                               ; preds = %68
  %80 = load %struct.super_block*, %struct.super_block** %6, align 8
  %81 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %82 = call i64 @ext4_inode_table(%struct.super_block* %80, %struct.ext4_group_desc* %81)
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %15, align 8
  %85 = sub nsw i64 %83, %84
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %11, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %79
  %89 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %89, i64 %90)
  %92 = load i64, i64* %13, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %104, label %94

94:                                               ; preds = %88
  %95 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %98 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %96, %99
  %101 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %95, i64 %100)
  %102 = load i64, i64* %13, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %94, %88, %79
  %105 = load i64, i64* %14, align 8
  store i64 %105, i64* %5, align 8
  br label %133

106:                                              ; preds = %94
  %107 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %108 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %113 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %110, i64 %115)
  %117 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %117, i64 %118)
  %120 = call i64 @ext4_find_next_zero_bit(i32 %109, i64 %116, i64 %119)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %125 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %122, i64 %127)
  %129 = icmp slt i64 %121, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %106
  %131 = load i64, i64* %14, align 8
  store i64 %131, i64* %5, align 8
  br label %133

132:                                              ; preds = %106
  store i64 0, i64* %5, align 8
  br label %133

133:                                              ; preds = %132, %130, %104, %77, %51, %23
  %134 = load i64, i64* %5, align 8
  ret i64 %134
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block*) #1

declare dso_local i64 @ext4_has_feature_flex_bg(%struct.super_block*) #1

declare dso_local i64 @ext4_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i64 @ext4_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @EXT4_B2C(%struct.ext4_sb_info*, i64) #1

declare dso_local i32 @ext4_test_bit(i64, i32) #1

declare dso_local i64 @ext4_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_find_next_zero_bit(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
