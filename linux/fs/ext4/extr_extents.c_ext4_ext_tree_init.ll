; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_tree_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_tree_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent_header = type { i32, i32, i64, i64 }

@EXT4_EXT_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_tree_init(i32* %0, %struct.inode* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_extent_header*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %4, align 8
  %7 = call %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode* %6)
  store %struct.ext4_extent_header* %7, %struct.ext4_extent_header** %5, align 8
  %8 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %5, align 8
  %9 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %5, align 8
  %11 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @EXT4_EXT_MAGIC, align 4
  %13 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %5, align 8
  %14 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call i32 @ext4_ext_space_root(%struct.inode* %15, i32 0)
  %17 = call i32 @cpu_to_le16(i32 %16)
  %18 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %5, align 8
  %19 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @ext4_mark_inode_dirty(i32* %20, %struct.inode* %21)
  ret i32 0
}

declare dso_local %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_ext_space_root(%struct.inode*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
