; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___get_data_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___get_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32, i32 }
%struct.f2fs_map_blocks = type { i32, i32, i32, i32, i32, i32*, i32*, i32 }

@F2FS_MAP_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32, i32, i32*, i32, i32)* @__get_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_data_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3, i32 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.f2fs_map_blocks, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %17, i32 0, i32 7
  store i32 %19, i32* %20, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %23, %26
  %28 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %17, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %17, i32 0, i32 6
  store i32* %29, i32** %30, align 8
  %31 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %17, i32 0, i32 5
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* %15, align 4
  %33 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %17, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %16, align 4
  %35 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %17, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @f2fs_map_blocks(%struct.inode* %36, %struct.f2fs_map_blocks* %17, i32 %37, i32 %38)
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %18, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %69, label %42

42:                                               ; preds = %8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %17, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @map_bh(%struct.buffer_head* %43, i32 %46, i32 %48)
  %50 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @F2FS_MAP_FLAGS, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %17, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %55, %57
  %59 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %17, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %62, %65
  %67 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %42, %8
  %70 = load i32, i32* %18, align 4
  ret i32 %70
}

declare dso_local i32 @f2fs_map_blocks(%struct.inode*, %struct.f2fs_map_blocks*, i32, i32) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
