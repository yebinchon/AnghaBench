; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_collapse_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_collapse_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@F2FS_BLKSIZE = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64)* @f2fs_collapse_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_collapse_range(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = add nsw i64 %10, %11
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call i64 @i_size_read(%struct.inode* %13)
  %15 = icmp sge i64 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %99

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @F2FS_BLKSIZE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = and i64 %20, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @F2FS_BLKSIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = and i64 %27, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26, %19
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %99

36:                                               ; preds = %26
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i32 @f2fs_convert_inline_inode(%struct.inode* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %99

43:                                               ; preds = %36
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* @LLONG_MAX, align 4
  %49 = call i32 @filemap_write_and_wait_range(i32 %46, i64 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %99

54:                                               ; preds = %43
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @f2fs_do_collapse(%struct.inode* %55, i64 %56, i64 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %99

63:                                               ; preds = %54
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @down_write(i32* %66)
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* @LLONG_MAX, align 4
  %73 = call i32 @filemap_write_and_wait_range(i32 %70, i64 %71, i32 %72)
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @truncate_pagecache(%struct.inode* %74, i64 %75)
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = call i64 @i_size_read(%struct.inode* %77)
  %79 = load i64, i64* %7, align 8
  %80 = sub nsw i64 %78, %79
  store i64 %80, i64* %8, align 8
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @truncate_pagecache(%struct.inode* %81, i64 %82)
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @f2fs_truncate_blocks(%struct.inode* %84, i64 %85, i32 1)
  store i32 %86, i32* %9, align 4
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %87)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @up_write(i32* %89)
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %63
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @f2fs_i_size_write(%struct.inode* %94, i64 %95)
  br label %97

97:                                               ; preds = %93, %63
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %61, %52, %41, %33, %16
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @f2fs_convert_inline_inode(%struct.inode*) #1

declare dso_local i32 @filemap_write_and_wait_range(i32, i64, i32) #1

declare dso_local i32 @f2fs_do_collapse(%struct.inode*, i64, i64) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i64) #1

declare dso_local i32 @f2fs_truncate_blocks(%struct.inode*, i64, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @f2fs_i_size_write(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
