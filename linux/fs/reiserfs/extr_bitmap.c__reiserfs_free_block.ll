; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c__reiserfs_free_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c__reiserfs_free_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.reiserfs_super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.reiserfs_bitmap_info = type { i32 }

@free_block = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vs-4075\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"block %lu is out of range\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"vs-4080\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"block %lu: bit already cleared\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32)* @_reiserfs_free_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_reiserfs_free_block(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.reiserfs_transaction_handle*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.reiserfs_super_block*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.reiserfs_bitmap_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %18 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %17, i32 0, i32 1
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %9, align 8
  %20 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %21 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.super_block*, %struct.super_block** %9, align 8
  %28 = load i32, i32* @free_block, align 4
  %29 = call i32 @PROC_INFO_INC(%struct.super_block* %27, i32 %28)
  %30 = load %struct.super_block*, %struct.super_block** %9, align 8
  %31 = call %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block* %30)
  store %struct.reiserfs_super_block* %31, %struct.reiserfs_super_block** %10, align 8
  %32 = load %struct.super_block*, %struct.super_block** %9, align 8
  %33 = call %struct.buffer_head* @SB_BUFFER_WITH_SB(%struct.super_block* %32)
  store %struct.buffer_head* %33, %struct.buffer_head** %11, align 8
  %34 = load %struct.super_block*, %struct.super_block** %9, align 8
  %35 = call %struct.reiserfs_bitmap_info* @SB_AP_BITMAP(%struct.super_block* %34)
  store %struct.reiserfs_bitmap_info* %35, %struct.reiserfs_bitmap_info** %13, align 8
  %36 = load %struct.super_block*, %struct.super_block** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @get_bit_address(%struct.super_block* %36, i32 %37, i32* %14, i32* %15)
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.super_block*, %struct.super_block** %9, align 8
  %41 = call i32 @reiserfs_bmap_count(%struct.super_block* %40)
  %42 = icmp uge i32 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %4
  %44 = load %struct.super_block*, %struct.super_block** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @reiserfs_error(%struct.super_block* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %102

47:                                               ; preds = %4
  %48 = load %struct.super_block*, %struct.super_block** %9, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call %struct.buffer_head* @reiserfs_read_bitmap_block(%struct.super_block* %48, i32 %49)
  store %struct.buffer_head* %50, %struct.buffer_head** %12, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %52 = icmp ne %struct.buffer_head* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %102

54:                                               ; preds = %47
  %55 = load %struct.super_block*, %struct.super_block** %9, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %57 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %55, %struct.buffer_head* %56, i32 1)
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @reiserfs_test_and_clear_le_bit(i32 %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %54
  %65 = load %struct.super_block*, %struct.super_block** %9, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @reiserfs_error(%struct.super_block* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %54
  %69 = load %struct.reiserfs_bitmap_info*, %struct.reiserfs_bitmap_info** %13, align 8
  %70 = load i32, i32* %14, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %69, i64 %71
  %73 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %78 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %76, %struct.buffer_head* %77)
  %79 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %80 = call i32 @brelse(%struct.buffer_head* %79)
  %81 = load %struct.super_block*, %struct.super_block** %9, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %83 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %81, %struct.buffer_head* %82, i32 1)
  %84 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %10, align 8
  %85 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %10, align 8
  %86 = call i64 @sb_free_blocks(%struct.reiserfs_super_block* %85)
  %87 = add nsw i64 %86, 1
  %88 = call i32 @set_sb_free_blocks(%struct.reiserfs_super_block* %84, i64 %87)
  %89 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %90 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %91 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %89, %struct.buffer_head* %90)
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %68
  %95 = load %struct.super_block*, %struct.super_block** %9, align 8
  %96 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %95)
  store i32 %96, i32* %16, align 4
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = call i32 @dquot_free_block_nodirty(%struct.inode* %97, i32 1)
  %99 = load %struct.super_block*, %struct.super_block** %9, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %99, i32 %100)
  br label %102

102:                                              ; preds = %43, %53, %94, %68
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PROC_INFO_INC(%struct.super_block*, i32) #1

declare dso_local %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local %struct.reiserfs_bitmap_info* @SB_AP_BITMAP(%struct.super_block*) #1

declare dso_local i32 @get_bit_address(%struct.super_block*, i32, i32*, i32*) #1

declare dso_local i32 @reiserfs_bmap_count(%struct.super_block*) #1

declare dso_local i32 @reiserfs_error(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local %struct.buffer_head* @reiserfs_read_bitmap_block(%struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, %struct.buffer_head*, i32) #1

declare dso_local i32 @reiserfs_test_and_clear_le_bit(i32, i32) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @set_sb_free_blocks(%struct.reiserfs_super_block*, i64) #1

declare dso_local i64 @sb_free_blocks(%struct.reiserfs_super_block*) #1

declare dso_local i32 @reiserfs_write_unlock_nested(%struct.super_block*) #1

declare dso_local i32 @dquot_free_block_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @reiserfs_write_lock_nested(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
