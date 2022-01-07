; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_update_sd_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_update_sd_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.inode = type { i64, i32 }
%struct.cpu_key = type { i32 }
%struct.buffer_head = type { i32 }
%struct.item_head = type { i32 }

@path = common dso_local global i32 0, align 4
@SD_OFFSET = common dso_local global i32 0, align 4
@TYPE_STAT_DATA = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vs-13050\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"i/o failure occurred trying to update %K stat data\00", align 1
@ITEM_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"vs-13060\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"stat data of object %k (nlink == %d) not found (pos %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_update_sd_size(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.reiserfs_transaction_handle*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpu_key, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.item_head*, align 8
  %11 = alloca %struct.item_head, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @path, align 4
  %15 = call i32 @INITIALIZE_PATH(i32 %14)
  %16 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %17 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = load i32, i32* @SD_OFFSET, align 4
  %25 = load i32, i32* @TYPE_STAT_DATA, align 4
  %26 = call i32 @make_cpu_key(%struct.cpu_key* %7, %struct.inode* %23, i32 %24, i32 %25, i32 3)
  br label %27

27:                                               ; preds = %87, %3
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @search_item(i32 %30, %struct.cpu_key* %7, i32* @path)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @IO_ERROR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @reiserfs_error(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), %struct.cpu_key* %7)
  br label %102

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @ITEM_NOT_FOUND, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = call i32 @PATH_LAST_POSITION(i32* @path)
  store i32 %45, i32* %13, align 4
  %46 = call i32 @pathrelse(i32* @path)
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %102

52:                                               ; preds = %44
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = call i32 @INODE_PKEY(%struct.inode* %56)
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @reiserfs_warning(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %57, i64 %60, i32 %61)
  %63 = call i32 @reiserfs_check_path(i32* @path)
  br label %102

64:                                               ; preds = %40
  %65 = call %struct.buffer_head* @get_last_bh(i32* @path)
  store %struct.buffer_head* %65, %struct.buffer_head** %8, align 8
  %66 = call %struct.item_head* @tp_item_head(i32* @path)
  store %struct.item_head* %66, %struct.item_head** %10, align 8
  %67 = load %struct.item_head*, %struct.item_head** %10, align 8
  %68 = call i32 @copy_item_head(%struct.item_head* %11, %struct.item_head* %67)
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @get_generation(i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %77 = call i32 @reiserfs_prepare_for_journal(i32 %75, %struct.buffer_head* %76, i32 1)
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @fs_changed(i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %64
  %85 = call i64 @item_moved(%struct.item_head* %11, i32* @path)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %92 = call i32 @reiserfs_restore_prepared_buffer(i32 %90, %struct.buffer_head* %91)
  br label %27

93:                                               ; preds = %84, %64
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @update_stat_data(i32* @path, %struct.inode* %95, i32 %96)
  %98 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %100 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %98, %struct.buffer_head* %99)
  %101 = call i32 @pathrelse(i32* @path)
  br label %102

102:                                              ; preds = %94, %52, %51, %35
  ret void
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @make_cpu_key(%struct.cpu_key*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @search_item(i32, %struct.cpu_key*, i32*) #1

declare dso_local i32 @reiserfs_error(i32, i8*, i8*, %struct.cpu_key*) #1

declare dso_local i32 @PATH_LAST_POSITION(i32*) #1

declare dso_local i32 @pathrelse(i32*) #1

declare dso_local i32 @reiserfs_warning(i32, i8*, i8*, i32, i64, i32) #1

declare dso_local i32 @INODE_PKEY(%struct.inode*) #1

declare dso_local i32 @reiserfs_check_path(i32*) #1

declare dso_local %struct.buffer_head* @get_last_bh(i32*) #1

declare dso_local %struct.item_head* @tp_item_head(i32*) #1

declare dso_local i32 @copy_item_head(%struct.item_head*, %struct.item_head*) #1

declare dso_local i32 @get_generation(i32) #1

declare dso_local i32 @reiserfs_prepare_for_journal(i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @fs_changed(i32, i32) #1

declare dso_local i64 @item_moved(%struct.item_head*, i32*) #1

declare dso_local i32 @reiserfs_restore_prepared_buffer(i32, %struct.buffer_head*) #1

declare dso_local i32 @update_stat_data(i32*, %struct.inode*, i32) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
