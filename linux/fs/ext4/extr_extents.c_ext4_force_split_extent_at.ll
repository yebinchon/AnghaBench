; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_force_split_extent_at.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_force_split_extent_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i64, i32 }

@EXT4_EXT_MARK_UNWRIT1 = common dso_local global i32 0, align 4
@EXT4_EXT_MARK_UNWRIT2 = common dso_local global i32 0, align 4
@EXT4_EX_NOCACHE = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_PRE_IO = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_METADATA_NOFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_ext_path**, i32, i32)* @ext4_force_split_extent_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_force_split_extent_at(i32* %0, %struct.inode* %1, %struct.ext4_ext_path** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_ext_path**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_ext_path*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext4_ext_path** %2, %struct.ext4_ext_path*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %8, align 8
  %14 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  store %struct.ext4_ext_path* %14, %struct.ext4_ext_path** %11, align 8
  %15 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %16 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %17 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %15, i64 %18
  %20 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ext4_ext_is_unwritten(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32, i32* @EXT4_EXT_MARK_UNWRIT1, align 4
  %31 = load i32, i32* @EXT4_EXT_MARK_UNWRIT2, align 4
  %32 = or i32 %30, %31
  br label %34

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %32, %29 ], [ 0, %33 ]
  %36 = load i32, i32* @EXT4_EX_NOCACHE, align 4
  %37 = load i32, i32* @EXT4_GET_BLOCKS_PRE_IO, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @EXT4_GET_BLOCKS_METADATA_NOFAIL, align 4
  br label %44

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = or i32 %38, %45
  %47 = call i32 @ext4_split_extent_at(i32* %23, %struct.inode* %24, %struct.ext4_ext_path** %25, i32 %26, i32 %35, i32 %46)
  ret i32 %47
}

declare dso_local i32 @ext4_ext_is_unwritten(i32) #1

declare dso_local i32 @ext4_split_extent_at(i32*, %struct.inode*, %struct.ext4_ext_path**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
