; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.treepath = type { i32 }
%struct.reiserfs_dir_entry = type { i32, i32 }
%struct.cpu_key = type { i32 }

@NAME_NOT_FOUND = common dso_local global i32 0, align 4
@TYPE_DIRENTRY = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"zam-7001\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"io error\00", align 1
@GOTO_PREVIOUS_ITEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32, %struct.treepath*, %struct.reiserfs_dir_entry*)* @reiserfs_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_find_entry(%struct.inode* %0, i8* %1, i32 %2, %struct.treepath* %3, %struct.reiserfs_dir_entry* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.treepath*, align 8
  %11 = alloca %struct.reiserfs_dir_entry*, align 8
  %12 = alloca %struct.cpu_key, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.treepath* %3, %struct.treepath** %10, align 8
  store %struct.reiserfs_dir_entry* %4, %struct.reiserfs_dir_entry** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @REISERFS_MAX_NAME(i32 %19)
  %21 = icmp sgt i32 %14, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @NAME_NOT_FOUND, align 4
  store i32 %23, i32* %6, align 4
  br label %74

24:                                               ; preds = %5
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @get_third_component(%struct.TYPE_4__* %28, i8* %29, i32 %30)
  %32 = load i32, i32* @TYPE_DIRENTRY, align 4
  %33 = call i32 @make_cpu_key(%struct.cpu_key* %12, %struct.inode* %25, i32 %31, i32 %32, i32 3)
  br label %34

34:                                               ; preds = %24, %65
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load %struct.treepath*, %struct.treepath** %10, align 8
  %39 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %11, align 8
  %40 = call i32 @search_by_entry_key(%struct.TYPE_4__* %37, %struct.cpu_key* %12, %struct.treepath* %38, %struct.reiserfs_dir_entry* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @IO_ERROR, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @reiserfs_error(%struct.TYPE_4__* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @IO_ERROR, align 4
  store i32 %49, i32* %6, align 4
  br label %74

50:                                               ; preds = %34
  %51 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %11, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @linear_search_in_dir_item(%struct.cpu_key* %12, %struct.reiserfs_dir_entry* %51, i8* %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @GOTO_PREVIOUS_ITEM, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %11, align 8
  %60 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.treepath*, %struct.treepath** %10, align 8
  %63 = getelementptr inbounds %struct.treepath, %struct.treepath* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %6, align 4
  br label %74

65:                                               ; preds = %50
  %66 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %11, align 8
  %67 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le_ih_k_offset(i32 %68)
  %70 = sub nsw i64 %69, 1
  %71 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %12, i64 %70)
  %72 = load %struct.treepath*, %struct.treepath** %10, align 8
  %73 = call i32 @pathrelse(%struct.treepath* %72)
  br label %34

74:                                               ; preds = %58, %44, %22
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @REISERFS_MAX_NAME(i32) #1

declare dso_local i32 @make_cpu_key(%struct.cpu_key*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @get_third_component(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @search_by_entry_key(%struct.TYPE_4__*, %struct.cpu_key*, %struct.treepath*, %struct.reiserfs_dir_entry*) #1

declare dso_local i32 @reiserfs_error(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @linear_search_in_dir_item(%struct.cpu_key*, %struct.reiserfs_dir_entry*, i8*, i32) #1

declare dso_local i32 @set_cpu_key_k_offset(%struct.cpu_key*, i64) #1

declare dso_local i64 @le_ih_k_offset(i32) #1

declare dso_local i32 @pathrelse(%struct.treepath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
