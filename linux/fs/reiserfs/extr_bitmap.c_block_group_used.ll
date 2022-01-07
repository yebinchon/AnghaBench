; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_block_group_used.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_block_group_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_bitmap_info = type { i32 }
%struct.buffer_head = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @block_group_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_group_used(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.reiserfs_bitmap_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @bmap_hash_id(%struct.super_block* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call %struct.reiserfs_bitmap_info* @SB_AP_BITMAP(%struct.super_block* %12)
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %13, i64 %15
  store %struct.reiserfs_bitmap_info* %16, %struct.reiserfs_bitmap_info** %7, align 8
  %17 = load %struct.reiserfs_bitmap_info*, %struct.reiserfs_bitmap_info** %7, align 8
  %18 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @UINT_MAX, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.buffer_head* @reiserfs_read_bitmap_block(%struct.super_block* %23, i32 %24)
  store %struct.buffer_head* %25, %struct.buffer_head** %8, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %27 = call i32 @brelse(%struct.buffer_head* %26)
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.reiserfs_bitmap_info*, %struct.reiserfs_bitmap_info** %7, align 8
  %30 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 3
  %36 = mul nsw i32 %35, 60
  %37 = sdiv i32 %36, 100
  %38 = icmp sgt i32 %31, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %41

40:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @bmap_hash_id(%struct.super_block*, i32) #1

declare dso_local %struct.reiserfs_bitmap_info* @SB_AP_BITMAP(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @reiserfs_read_bitmap_block(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
