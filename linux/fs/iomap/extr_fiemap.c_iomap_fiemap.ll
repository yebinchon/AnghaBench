; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_fiemap.c_iomap_fiemap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_fiemap.c_iomap_fiemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fiemap_extent_info = type { i32 }
%struct.iomap_ops = type { i32 }
%struct.fiemap_ctx = type { %struct.TYPE_2__, %struct.fiemap_extent_info* }
%struct.TYPE_2__ = type { i64 }

@IOMAP_HOLE = common dso_local global i64 0, align 8
@FIEMAP_FLAG_SYNC = common dso_local global i32 0, align 4
@IOMAP_REPORT = common dso_local global i32 0, align 4
@iomap_fiemap_actor = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iomap_fiemap(%struct.inode* %0, %struct.fiemap_extent_info* %1, i32 %2, i32 %3, %struct.iomap_ops* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.fiemap_extent_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iomap_ops*, align 8
  %12 = alloca %struct.fiemap_ctx, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.fiemap_extent_info* %1, %struct.fiemap_extent_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.iomap_ops* %4, %struct.iomap_ops** %11, align 8
  %14 = call i32 @memset(%struct.fiemap_ctx* %12, i32 0, i32 16)
  %15 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %8, align 8
  %16 = getelementptr inbounds %struct.fiemap_ctx, %struct.fiemap_ctx* %12, i32 0, i32 1
  store %struct.fiemap_extent_info* %15, %struct.fiemap_extent_info** %16, align 8
  %17 = load i64, i64* @IOMAP_HOLE, align 8
  %18 = getelementptr inbounds %struct.fiemap_ctx, %struct.fiemap_ctx* %12, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %8, align 8
  %21 = load i32, i32* @FIEMAP_FLAG_SYNC, align 4
  %22 = call i32 @fiemap_check_flags(%struct.fiemap_extent_info* %20, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %94

27:                                               ; preds = %5
  %28 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %8, align 8
  %29 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FIEMAP_FLAG_SYNC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @filemap_write_and_wait(i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %94

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %27
  br label %45

45:                                               ; preds = %70, %44
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %45
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @IOMAP_REPORT, align 4
  %53 = load %struct.iomap_ops*, %struct.iomap_ops** %11, align 8
  %54 = load i32, i32* @iomap_fiemap_actor, align 4
  %55 = call i32 @iomap_apply(%struct.inode* %49, i32 %50, i32 %51, i32 %52, %struct.iomap_ops* %53, %struct.fiemap_ctx* %12, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %77

61:                                               ; preds = %48
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %94

66:                                               ; preds = %61
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %77

70:                                               ; preds = %66
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %45

77:                                               ; preds = %69, %60, %45
  %78 = getelementptr inbounds %struct.fiemap_ctx, %struct.fiemap_ctx* %12, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IOMAP_HOLE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %8, align 8
  %85 = getelementptr inbounds %struct.fiemap_ctx, %struct.fiemap_ctx* %12, i32 0, i32 0
  %86 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  %87 = call i32 @iomap_to_fiemap(%struct.fiemap_extent_info* %84, %struct.TYPE_2__* %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %6, align 4
  br label %94

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %77
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %90, %64, %41, %25
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @memset(%struct.fiemap_ctx*, i32, i32) #1

declare dso_local i32 @fiemap_check_flags(%struct.fiemap_extent_info*, i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @iomap_apply(%struct.inode*, i32, i32, i32, %struct.iomap_ops*, %struct.fiemap_ctx*, i32) #1

declare dso_local i32 @iomap_to_fiemap(%struct.fiemap_extent_info*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
