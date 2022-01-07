; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_reiserfs_free_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_reiserfs_free_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { %struct.super_block*, i32 }
%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"vs-4061: trying to free block on nonexistent device\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bitmap-4072\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Trying to free block outside file system boundaries (%lu > %lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_free_block(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.reiserfs_transaction_handle*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %11 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %9, align 8
  %13 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %14 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.super_block*, %struct.super_block** %9, align 8
  %21 = icmp ne %struct.super_block* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @RFALSE(i32 %23, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.super_block*, %struct.super_block** %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @is_reusable(%struct.super_block* %25, i64 %26, i32 1)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  br label %59

30:                                               ; preds = %4
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.super_block*, %struct.super_block** %9, align 8
  %33 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @sb_block_count(i32 %35)
  %37 = icmp sgt i64 %31, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %40 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %39, i32 0, i32 0
  %41 = load %struct.super_block*, %struct.super_block** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.super_block*, %struct.super_block** %9, align 8
  %44 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @sb_block_count(i32 %46)
  %48 = call i32 @reiserfs_error(%struct.super_block* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %42, i64 %47)
  br label %59

49:                                               ; preds = %30
  %50 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %51 = load %struct.super_block*, %struct.super_block** %9, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @journal_mark_freed(%struct.reiserfs_transaction_handle* %50, %struct.super_block* %51, i64 %52)
  %54 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @_reiserfs_free_block(%struct.reiserfs_transaction_handle* %54, %struct.inode* %55, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %49, %38, %29
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i32 @is_reusable(%struct.super_block*, i64, i32) #1

declare dso_local i64 @sb_block_count(i32) #1

declare dso_local %struct.TYPE_2__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @reiserfs_error(%struct.super_block*, i8*, i8*, i64, i64) #1

declare dso_local i32 @journal_mark_freed(%struct.reiserfs_transaction_handle*, %struct.super_block*, i64) #1

declare dso_local i32 @_reiserfs_free_block(%struct.reiserfs_transaction_handle*, %struct.inode*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
