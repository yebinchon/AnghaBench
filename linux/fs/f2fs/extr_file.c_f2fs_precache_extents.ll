; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_precache_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_precache_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_inode_info = type { i32* }
%struct.f2fs_map_blocks = type { i64, i64*, i32, i64, i32, i32* }
%struct.TYPE_2__ = type { i64 }

@FI_NO_EXTENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NO_CHECK_TYPE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@F2FS_GET_BLOCK_PRECACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_precache_extents(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.f2fs_inode_info*, align 8
  %5 = alloca %struct.f2fs_map_blocks, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %9)
  store %struct.f2fs_inode_info* %10, %struct.f2fs_inode_info** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = load i32, i32* @FI_NO_EXTENT, align 4
  %13 = call i64 @is_inode_flag_set(%struct.inode* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %64

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %5, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %5, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %5, i32 0, i32 1
  store i64* %6, i64** %21, align 8
  %22 = load i32, i32* @NO_CHECK_TYPE, align 4
  %23 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %5, i32 0, i32 4
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %5, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = call %struct.TYPE_2__* @F2FS_I_SB(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %59, %18
  %30 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %5, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %35, %37
  %39 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %5, i32 0, i32 3
  store i64 %38, i64* %39, align 8
  %40 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %41 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @WRITE, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = call i32 @down_write(i32* %44)
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = load i32, i32* @F2FS_GET_BLOCK_PRECACHE, align 4
  %48 = call i32 @f2fs_map_blocks(%struct.inode* %46, %struct.f2fs_map_blocks* %5, i32 0, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %4, align 8
  %50 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @WRITE, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = call i32 @up_write(i32* %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %34
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %64

59:                                               ; preds = %34
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %5, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  br label %29

62:                                               ; preds = %29
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %57, %15
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.f2fs_inode_info* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_2__* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @f2fs_map_blocks(%struct.inode*, %struct.f2fs_map_blocks*, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
