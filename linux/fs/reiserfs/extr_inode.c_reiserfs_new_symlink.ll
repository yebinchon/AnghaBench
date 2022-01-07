; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_new_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_new_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.item_head = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.treepath = type { i32 }
%struct.cpu_key = type { i32 }

@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4
@TYPE_DIRECT = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vs-13080\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"i/o failure occurred creating new symlink\00", align 1
@EIO = common dso_local global i32 0, align 4
@ITEM_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"object with this key exists (%k)\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.item_head*, %struct.treepath*, i8*, i32)* @reiserfs_new_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_new_symlink(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, %struct.item_head* %2, %struct.treepath* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.reiserfs_transaction_handle*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.item_head*, align 8
  %11 = alloca %struct.treepath*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.super_block*, align 8
  %15 = alloca %struct.cpu_key, align 4
  %16 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.item_head* %2, %struct.item_head** %10, align 8
  store %struct.treepath* %3, %struct.treepath** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %18 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %17, i32 0, i32 1
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %14, align 8
  %20 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %21 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %28 = load %struct.item_head*, %struct.item_head** %10, align 8
  %29 = getelementptr inbounds %struct.item_head, %struct.item_head* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load %struct.item_head*, %struct.item_head** %10, align 8
  %34 = getelementptr inbounds %struct.item_head, %struct.item_head* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = load i32, i32* @TYPE_DIRECT, align 4
  %39 = call i32 @_make_cpu_key(%struct.cpu_key* %15, i32 %27, i32 %32, i32 %37, i32 1, i32 %38, i32 3)
  %40 = load %struct.item_head*, %struct.item_head** %10, align 8
  %41 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %42 = load i32, i32* @TYPE_DIRECT, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @make_le_item_head(%struct.item_head* %40, i32* null, i32 %41, i32 1, i32 %42, i32 %43, i32 0)
  %45 = load %struct.super_block*, %struct.super_block** %14, align 8
  %46 = load %struct.treepath*, %struct.treepath** %11, align 8
  %47 = call i32 @search_item(%struct.super_block* %45, %struct.cpu_key* %15, %struct.treepath* %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @IO_ERROR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %6
  %52 = load %struct.super_block*, %struct.super_block** %14, align 8
  %53 = call i32 @reiserfs_error(%struct.super_block* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %76

56:                                               ; preds = %6
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @ITEM_FOUND, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.treepath*, %struct.treepath** %11, align 8
  %62 = call i32 @pathrelse(%struct.treepath* %61)
  %63 = load %struct.super_block*, %struct.super_block** %14, align 8
  %64 = load %struct.item_head*, %struct.item_head** %10, align 8
  %65 = getelementptr inbounds %struct.item_head, %struct.item_head* %64, i32 0, i32 0
  %66 = call i32 @reiserfs_warning(%struct.super_block* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_2__* %65)
  %67 = load i32, i32* @EEXIST, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %76

69:                                               ; preds = %56
  %70 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %71 = load %struct.treepath*, %struct.treepath** %11, align 8
  %72 = load %struct.item_head*, %struct.item_head** %10, align 8
  %73 = load %struct.inode*, %struct.inode** %9, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @reiserfs_insert_item(%struct.reiserfs_transaction_handle* %70, %struct.treepath* %71, %struct.cpu_key* %15, %struct.item_head* %72, %struct.inode* %73, i8* %74)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %69, %60, %51
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @_make_cpu_key(%struct.cpu_key*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @make_le_item_head(%struct.item_head*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @search_item(%struct.super_block*, %struct.cpu_key*, %struct.treepath*) #1

declare dso_local i32 @reiserfs_error(%struct.super_block*, i8*, i8*) #1

declare dso_local i32 @pathrelse(%struct.treepath*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @reiserfs_insert_item(%struct.reiserfs_transaction_handle*, %struct.treepath*, %struct.cpu_key*, %struct.item_head*, %struct.inode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
