; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_bitmap.c_ext4_inode_bitmap_csum_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_bitmap.c_ext4_inode_bitmap_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i8*, i8* }
%struct.buffer_head = type { i64 }
%struct.ext4_sb_info = type { i64, i32 }

@EXT4_BG_INODE_BITMAP_CSUM_HI_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext4_inode_bitmap_csum_set(%struct.super_block* %0, i32 %1, %struct.ext4_group_desc* %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_group_desc*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ext4_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ext4_group_desc* %2, %struct.ext4_group_desc** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %13)
  store %struct.ext4_sb_info* %14, %struct.ext4_sb_info** %12, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = call i32 @ext4_has_metadata_csum(%struct.super_block* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %46

19:                                               ; preds = %5
  %20 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %12, align 8
  %21 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %12, align 8
  %22 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @ext4_chksum(%struct.ext4_sb_info* %20, i32 %23, i32* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, 65535
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %34 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %12, align 8
  %36 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EXT4_BG_INODE_BITMAP_CSUM_HI_END, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %19
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %41, 16
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %45 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %18, %40, %19
  ret void
}

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
