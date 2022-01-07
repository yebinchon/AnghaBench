; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_file.c_read_blocklist.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_file.c_read_blocklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@.str = private unnamed_addr constant [75 x i8] c"read_blocklist: res %d, index %d, start 0x%llx, offset 0x%x, block 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i64*)* @read_blocklist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_blocklist(%struct.inode* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i64*, i64** %7, align 8
  %16 = call i32 @fill_meta_index(%struct.inode* %13, i32 %14, i64* %8, i32* %10, i64* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i64 %19, i32 %20, i64 %22)
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %4, align 4
  br label %62

28:                                               ; preds = %3
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %36, %37
  %39 = call i64 @read_indexes(i32 %35, i32 %38, i64* %8, i32* %10)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %62

45:                                               ; preds = %32
  %46 = load i64, i64* %9, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %46
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %45, %28
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @squashfs_read_metadata(i32 %53, i32* %11, i64* %8, i32* %10, i32 4)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  br label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @squashfs_block_size(i32 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %57, %42, %26
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @fill_meta_index(%struct.inode*, i32, i64*, i32*, i64*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i64, i32, i64) #1

declare dso_local i64 @read_indexes(i32, i32, i64*, i32*) #1

declare dso_local i32 @squashfs_read_metadata(i32, i32*, i64*, i32*, i32) #1

declare dso_local i32 @squashfs_block_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
