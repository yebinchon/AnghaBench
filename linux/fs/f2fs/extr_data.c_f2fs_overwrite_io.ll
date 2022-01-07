; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_overwrite_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_overwrite_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_map_blocks = type { i64, i32, i64, i32, i32*, i32* }

@NO_CHECK_TYPE = common dso_local global i32 0, align 4
@F2FS_GET_BLOCK_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_overwrite_io(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.f2fs_map_blocks, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = add i64 %11, %12
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call i64 @i_size_read(%struct.inode* %14)
  %16 = icmp ugt i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @F2FS_BYTES_TO_BLK(i64 %19)
  %21 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %8, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %8, i32 0, i32 5
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %8, i32 0, i32 4
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* @NO_CHECK_TYPE, align 4
  %25 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %8, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %8, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %27, %28
  %30 = call i64 @F2FS_BLK_ALIGN(i64 %29)
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %52, %18
  %32 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %8, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %37, %39
  %41 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %8, i32 0, i32 2
  store i64 %40, i64* %41, align 8
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = load i32, i32* @F2FS_GET_BLOCK_DEFAULT, align 4
  %44 = call i32 @f2fs_map_blocks(%struct.inode* %42, %struct.f2fs_map_blocks* %8, i32 0, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %8, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %36
  store i32 0, i32* %4, align 4
  br label %59

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %8, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.f2fs_map_blocks, %struct.f2fs_map_blocks* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %54
  store i64 %57, i64* %55, align 8
  br label %31

58:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %51, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @F2FS_BYTES_TO_BLK(i64) #1

declare dso_local i64 @F2FS_BLK_ALIGN(i64) #1

declare dso_local i32 @f2fs_map_blocks(%struct.inode*, %struct.f2fs_map_blocks*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
