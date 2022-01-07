; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_new_meta_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_new_meta_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32 }
%struct.ext4_extent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*, i32*, i32)* @ext4_ext_new_meta_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_new_meta_block(i32* %0, %struct.inode* %1, %struct.ext4_ext_path* %2, %struct.ext4_extent* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_ext_path*, align 8
  %10 = alloca %struct.ext4_extent*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %9, align 8
  store %struct.ext4_extent* %3, %struct.ext4_extent** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %17 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %18 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  %21 = call i32 @ext4_ext_find_goal(%struct.inode* %15, %struct.ext4_ext_path* %16, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @ext4_new_meta_blocks(i32* %22, %struct.inode* %23, i32 %24, i32 %25, i32* null, i32* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  ret i32 %28
}

declare dso_local i32 @ext4_ext_find_goal(%struct.inode*, %struct.ext4_ext_path*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_new_meta_blocks(i32*, %struct.inode*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
