; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c___written_first_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c___written_first_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_inode = type { i32* }

@DATA_GENERIC_ENHANCE = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.f2fs_inode*)* @__written_first_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__written_first_block(%struct.f2fs_sb_info* %0, %struct.f2fs_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.f2fs_inode*, align 8
  %6 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.f2fs_inode* %1, %struct.f2fs_inode** %5, align 8
  %7 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %8 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.f2fs_inode*, %struct.f2fs_inode** %5, align 8
  %11 = call i64 @offset_in_addr(%struct.f2fs_inode* %10)
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le32_to_cpu(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @__is_valid_data_blkaddr(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DATA_GENERIC_ENHANCE, align 4
  %23 = call i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @EFSCORRUPTED, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %25, %18
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @offset_in_addr(%struct.f2fs_inode*) #1

declare dso_local i32 @__is_valid_data_blkaddr(i32) #1

declare dso_local i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
