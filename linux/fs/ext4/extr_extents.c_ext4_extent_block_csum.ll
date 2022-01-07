; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_extent_block_csum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_extent_block_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_inode_info = type { i32 }
%struct.ext4_sb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_extent_header*)* @ext4_extent_block_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_extent_block_csum(%struct.inode* %0, %struct.ext4_extent_header* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ext4_extent_header*, align 8
  %5 = alloca %struct.ext4_inode_info*, align 8
  %6 = alloca %struct.ext4_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ext4_extent_header* %1, %struct.ext4_extent_header** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %8)
  store %struct.ext4_inode_info* %9, %struct.ext4_inode_info** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ext4_sb_info* @EXT4_SB(i32 %12)
  store %struct.ext4_sb_info* %13, %struct.ext4_sb_info** %6, align 8
  %14 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %15 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %5, align 8
  %16 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %4, align 8
  %19 = bitcast %struct.ext4_extent_header* %18 to i32*
  %20 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %4, align 8
  %21 = call i32 @EXT4_EXTENT_TAIL_OFFSET(%struct.ext4_extent_header* %20)
  %22 = call i32 @ext4_chksum(%struct.ext4_sb_info* %14, i32 %17, i32* %19, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  ret i32 %24
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i32 @ext4_chksum(%struct.ext4_sb_info*, i32, i32*, i32) #1

declare dso_local i32 @EXT4_EXTENT_TAIL_OFFSET(%struct.ext4_extent_header*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
