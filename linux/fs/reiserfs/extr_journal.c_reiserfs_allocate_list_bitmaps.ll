; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_reiserfs_allocate_list_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_reiserfs_allocate_list_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_list_bitmap = type { i32, i32* }

@JOURNAL_NUM_BITMAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clm-2000\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"unable to allocate bitmaps for journal lists\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_allocate_list_bitmaps(%struct.super_block* %0, %struct.reiserfs_list_bitmap* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.reiserfs_list_bitmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.reiserfs_list_bitmap*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.reiserfs_list_bitmap* %1, %struct.reiserfs_list_bitmap** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %39, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @JOURNAL_NUM_BITMAPS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %21, i64 %23
  store %struct.reiserfs_list_bitmap* %24, %struct.reiserfs_list_bitmap** %10, align 8
  %25 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %10, align 8
  %26 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @vzalloc(i32 %27)
  %29 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %10, align 8
  %30 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %10, align 8
  %32 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %20
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = call i32 @reiserfs_warning(%struct.super_block* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %42

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %16

42:                                               ; preds = %35, %16
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %6, align 8
  %48 = call i32 @free_list_bitmaps(%struct.super_block* %46, %struct.reiserfs_list_bitmap* %47)
  store i32 -1, i32* %4, align 4
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

declare dso_local i32 @free_list_bitmaps(%struct.super_block*, %struct.reiserfs_list_bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
