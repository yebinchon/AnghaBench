; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_new_meta_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_new_meta_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_allocation_request = type { i64, i32, i32, %struct.inode* }

@EXT4_MB_DELALLOC_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_new_meta_blocks(i32* %0, %struct.inode* %1, i32 %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ext4_allocation_request, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = call i32 @memset(%struct.ext4_allocation_request* %13, i32 0, i32 24)
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %13, i32 0, i32 3
  store %struct.inode* %16, %struct.inode** %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %13, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i64*, i64** %11, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i64*, i64** %11, align 8
  %24 = load i64, i64* %23, align 8
  br label %26

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i64 [ %24, %22 ], [ 1, %25 ]
  %28 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %13, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %13, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @ext4_mb_new_blocks(i32* %31, %struct.ext4_allocation_request* %13, i32* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i64*, i64** %11, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %13, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %11, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %26
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @EXT4_MB_DELALLOC_RESERVED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @EXT4_SB(i32 %53)
  %55 = getelementptr inbounds %struct.ext4_allocation_request, %struct.ext4_allocation_request* %13, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @EXT4_C2B(i32 %54, i64 %56)
  %58 = call i32 @dquot_alloc_block_nofail(%struct.inode* %50, i32 %57)
  br label %59

59:                                               ; preds = %49, %44, %40
  %60 = load i32, i32* %14, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.ext4_allocation_request*, i32, i32) #1

declare dso_local i32 @ext4_mb_new_blocks(i32*, %struct.ext4_allocation_request*, i32*) #1

declare dso_local i32 @dquot_alloc_block_nofail(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_C2B(i32, i64) #1

declare dso_local i32 @EXT4_SB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
