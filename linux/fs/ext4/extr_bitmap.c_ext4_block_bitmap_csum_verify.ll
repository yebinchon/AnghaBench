; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_bitmap.c_ext4_block_bitmap_csum_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_bitmap.c_ext4_block_bitmap_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ext4_sb_info = type { i64, i32 }

@EXT4_BG_BLOCK_BITMAP_CSUM_HI_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_block_bitmap_csum_verify(%struct.super_block* %0, i32 %1, %struct.ext4_group_desc* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_group_desc*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ext4_sb_info*, align 8
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ext4_group_desc* %2, %struct.ext4_group_desc** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %15)
  store %struct.ext4_sb_info* %16, %struct.ext4_sb_info** %13, align 8
  %17 = load %struct.super_block*, %struct.super_block** %6, align 8
  %18 = call i32 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block* %17)
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %14, align 4
  %20 = load %struct.super_block*, %struct.super_block** %6, align 8
  %21 = call i32 @ext4_has_metadata_csum(%struct.super_block* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %62

24:                                               ; preds = %4
  %25 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %26 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %30 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %31 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @ext4_chksum(%struct.ext4_sb_info* %29, i32 %32, i32* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %13, align 8
  %40 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EXT4_BG_BLOCK_BITMAP_CSUM_HI_END, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %24
  %45 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %46 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = shl i32 %49, 16
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  br label %56

53:                                               ; preds = %24
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, 65535
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %53, %44
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 1, i32* %5, align 4
  br label %62

61:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %60, %23
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext4_has_metadata_csum(%struct.super_block*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ext4_chksum(%struct.ext4_sb_info*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
