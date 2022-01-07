; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_reiserfs_cache_bitmap_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_reiserfs_cache_bitmap_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i32, i64 }
%struct.reiserfs_bitmap_info = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"reiserfs-2025\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"bitmap block %lu is corrupted: first bit must be 1\00", align 1
@BITS_PER_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_cache_bitmap_metadata(%struct.super_block* %0, %struct.buffer_head* %1, %struct.reiserfs_bitmap_info* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.reiserfs_bitmap_info*, align 8
  %7 = alloca i64*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.reiserfs_bitmap_info* %2, %struct.reiserfs_bitmap_info** %6, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %7, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i64*
  %20 = call i32 @reiserfs_test_le_bit(i32 0, i64* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @reiserfs_error(%struct.super_block* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %3
  %29 = load %struct.reiserfs_bitmap_info*, %struct.reiserfs_bitmap_info** %6, align 8
  %30 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %64, %28
  %32 = load i64*, i64** %7, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 -1
  store i64* %33, i64** %7, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i64*
  %38 = icmp uge i64* %33, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %31
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* @BITS_PER_LONG, align 8
  %45 = load %struct.reiserfs_bitmap_info*, %struct.reiserfs_bitmap_info** %6, align 8
  %46 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  br label %64

49:                                               ; preds = %39
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, -1
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i64, i64* @BITS_PER_LONG, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @hweight_long(i64 %56)
  %58 = sub nsw i64 %54, %57
  %59 = load %struct.reiserfs_bitmap_info*, %struct.reiserfs_bitmap_info** %6, align 8
  %60 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %53, %49
  br label %64

64:                                               ; preds = %63, %43
  br label %31

65:                                               ; preds = %31
  ret void
}

declare dso_local i32 @reiserfs_test_le_bit(i32, i64*) #1

declare dso_local i32 @reiserfs_error(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local i64 @hweight_long(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
