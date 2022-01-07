; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_bitmap.c_ext4_block_bitmap_csum_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_bitmap.c_ext4_block_bitmap_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i8*, i8* }
%struct.buffer_head = type { i64 }
%struct.ext4_sb_info = type { i64, i32 }

@EXT4_BG_BLOCK_BITMAP_CSUM_HI_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext4_block_bitmap_csum_set(%struct.super_block* %0, i32 %1, %struct.ext4_group_desc* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_group_desc*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext4_group_desc* %2, %struct.ext4_group_desc** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call i32 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block* %12)
  %14 = sdiv i32 %13, 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %15)
  store %struct.ext4_sb_info* %16, %struct.ext4_sb_info** %11, align 8
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = call i32 @ext4_has_metadata_csum(%struct.super_block* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %48

21:                                               ; preds = %4
  %22 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %23 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %24 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ext4_chksum(%struct.ext4_sb_info* %22, i32 %25, i32* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 65535
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %36 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %38 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EXT4_BG_BLOCK_BITMAP_CSUM_HI_END, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %21
  %43 = load i32, i32* %10, align 4
  %44 = ashr i32 %43, 16
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %47 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %20, %42, %21
  ret void
}

declare dso_local i32 @EXT4_CLUSTERS_PER_GROUP(%struct.super_block*) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_has_metadata_csum(%struct.super_block*) #1

declare dso_local i32 @ext4_chksum(%struct.ext4_sb_info*, i32, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
