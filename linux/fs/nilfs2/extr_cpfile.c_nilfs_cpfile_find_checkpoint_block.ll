; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_find_checkpoint_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_find_checkpoint_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32*, %struct.buffer_head**)* @nilfs_cpfile_find_checkpoint_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_cpfile_find_checkpoint_block(%struct.inode* %0, i32 %1, i32 %2, i32* %3, %struct.buffer_head** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %54

25:                                               ; preds = %5
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @nilfs_cpfile_get_blkoff(%struct.inode* %26, i32 %27)
  store i64 %28, i64* %12, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @nilfs_cpfile_get_blkoff(%struct.inode* %29, i32 %30)
  store i64 %31, i64* %13, align 8
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %36 = call i32 @nilfs_mdt_find_block(%struct.inode* %32, i64 %33, i64 %34, i64* %14, %struct.buffer_head** %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %25
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  br label %49

45:                                               ; preds = %39
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @nilfs_cpfile_first_checkpoint_in_block(%struct.inode* %46, i64 %47)
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi i32 [ %44, %43 ], [ %48, %45 ]
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %25
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %22
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nilfs_cpfile_get_blkoff(%struct.inode*, i32) #1

declare dso_local i32 @nilfs_mdt_find_block(%struct.inode*, i64, i64, i64*, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_cpfile_first_checkpoint_in_block(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
