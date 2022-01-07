; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_file.c_find_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_file.c_find_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.omfs_extent_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, %struct.omfs_extent_entry*, i64, i32, i32*)* @find_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_block(%struct.inode* %0, %struct.omfs_extent_entry* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.omfs_extent_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.omfs_extent_entry* %1, %struct.omfs_extent_entry** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %12, align 8
  br label %14

14:                                               ; preds = %67, %5
  %15 = load i32, i32* %10, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %70

17:                                               ; preds = %14
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @OMFS_SB(i32 %20)
  %22 = load %struct.omfs_extent_entry*, %struct.omfs_extent_entry** %8, align 8
  %23 = getelementptr inbounds %struct.omfs_extent_entry, %struct.omfs_extent_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be64_to_cpu(i32 %24)
  %26 = call i32 @clus_to_blk(i32 %21, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %17
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %12, align 8
  %42 = sub nsw i64 %40, %41
  %43 = sub nsw i64 %39, %42
  %44 = trunc i64 %43 to i32
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @OMFS_SB(i32 %48)
  %50 = load %struct.omfs_extent_entry*, %struct.omfs_extent_entry** %8, align 8
  %51 = getelementptr inbounds %struct.omfs_extent_entry, %struct.omfs_extent_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be64_to_cpu(i32 %52)
  %54 = call i32 @clus_to_blk(i32 %49, i32 %53)
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i64, i64* %12, align 8
  %59 = sub nsw i64 %57, %58
  store i64 %59, i64* %6, align 8
  br label %71

60:                                               ; preds = %30, %17
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %12, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %12, align 8
  %65 = load %struct.omfs_extent_entry*, %struct.omfs_extent_entry** %8, align 8
  %66 = getelementptr inbounds %struct.omfs_extent_entry, %struct.omfs_extent_entry* %65, i32 1
  store %struct.omfs_extent_entry* %66, %struct.omfs_extent_entry** %8, align 8
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %10, align 4
  br label %14

70:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %71

71:                                               ; preds = %70, %37
  %72 = load i64, i64* %6, align 8
  ret i64 %72
}

declare dso_local i32 @clus_to_blk(i32, i32) #1

declare dso_local i32 @OMFS_SB(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
