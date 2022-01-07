; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_bitmap.c_ext4_inode_bitmap_csum_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_bitmap.c_ext4_inode_bitmap_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ext4_sb_info = type { i64, i32 }

@EXT4_BG_INODE_BITMAP_CSUM_HI_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_inode_bitmap_csum_verify(%struct.super_block* %0, i32 %1, %struct.ext4_group_desc* %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_group_desc*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext4_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ext4_group_desc* %2, %struct.ext4_group_desc** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.super_block*, %struct.super_block** %7, align 8
  %17 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %16)
  store %struct.ext4_sb_info* %17, %struct.ext4_sb_info** %15, align 8
  %18 = load %struct.super_block*, %struct.super_block** %7, align 8
  %19 = call i32 @ext4_has_metadata_csum(%struct.super_block* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %59

22:                                               ; preds = %5
  %23 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %24 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %28 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %29 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %32 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @ext4_chksum(%struct.ext4_sb_info* %27, i32 %30, i32* %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %38 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EXT4_BG_INODE_BITMAP_CSUM_HI_END, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %22
  %43 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %44 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = shl i32 %47, 16
  %49 = load i32, i32* %13, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %13, align 4
  br label %54

51:                                               ; preds = %22
  %52 = load i32, i32* %14, align 4
  %53 = and i32 %52, 65535
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %51, %42
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54, %21
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_has_metadata_csum(%struct.super_block*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ext4_chksum(%struct.ext4_sb_info*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
