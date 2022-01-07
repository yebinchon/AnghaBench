; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_free_list_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_free_list_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_list_bitmap = type { i32*, i32* }

@JOURNAL_NUM_BITMAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.reiserfs_list_bitmap*)* @free_list_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_list_bitmaps(%struct.super_block* %0, %struct.reiserfs_list_bitmap* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.reiserfs_list_bitmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.reiserfs_list_bitmap*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.reiserfs_list_bitmap* %1, %struct.reiserfs_list_bitmap** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @JOURNAL_NUM_BITMAPS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %12, i64 %14
  store %struct.reiserfs_list_bitmap* %15, %struct.reiserfs_list_bitmap** %6, align 8
  %16 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %6, align 8
  %17 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.super_block*, %struct.super_block** %3, align 8
  %19 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %6, align 8
  %20 = call i32 @cleanup_bitmap_list(%struct.super_block* %18, %struct.reiserfs_list_bitmap* %19)
  %21 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %6, align 8
  %22 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @vfree(i32* %23)
  %25 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %6, align 8
  %26 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %11
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %7

30:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @cleanup_bitmap_list(%struct.super_block*, %struct.reiserfs_list_bitmap*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
