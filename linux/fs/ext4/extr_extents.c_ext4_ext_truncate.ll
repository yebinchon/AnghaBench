; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_truncate(i32* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call i32 @ext4_mark_inode_dirty(i32* %18, %struct.inode* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %66

25:                                               ; preds = %2
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block* %34)
  %36 = ashr i32 %33, %35
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %49, %25
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  %44 = call i32 @ext4_es_remove_extent(%struct.inode* %38, i32 %39, i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = call i32 (...) @cond_resched()
  %51 = load i32, i32* @BLK_RW_ASYNC, align 4
  %52 = load i32, i32* @HZ, align 4
  %53 = sdiv i32 %52, 50
  %54 = call i32 @congestion_wait(i32 %51, i32 %53)
  br label %37

55:                                               ; preds = %37
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %55
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %64 = sub nsw i64 %63, 1
  %65 = call i32 @ext4_ext_remove_space(%struct.inode* %61, i32 %62, i64 %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %58, %23
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block*) #1

declare dso_local i32 @ext4_es_remove_extent(%struct.inode*, i32, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @congestion_wait(i32, i32) #1

declare dso_local i32 @ext4_ext_remove_space(%struct.inode*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
