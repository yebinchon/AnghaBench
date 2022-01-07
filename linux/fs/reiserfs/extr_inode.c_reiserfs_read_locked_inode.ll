; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_read_locked_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_read_locked_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32 }
%struct.reiserfs_iget_args = type { i64 }
%struct.cpu_key = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@path_to_sd = common dso_local global i32 0, align 4
@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vs-13070\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"i/o failure occurred trying to find stat data of %K\00", align 1
@ITEM_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"vs-13075\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"dead inode read from disk %K. This is likely to be race with knfsd. Ignore\00", align 1
@STAT_DATA_V1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_read_locked_inode(%struct.inode* %0, %struct.reiserfs_iget_args* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.reiserfs_iget_args*, align 8
  %5 = alloca %struct.cpu_key, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.reiserfs_iget_args* %1, %struct.reiserfs_iget_args** %4, align 8
  %8 = load i32, i32* @path_to_sd, align 4
  %9 = call i32 @INITIALIZE_PATH(i32 %8)
  %10 = load %struct.reiserfs_iget_args*, %struct.reiserfs_iget_args** %4, align 8
  %11 = getelementptr inbounds %struct.reiserfs_iget_args, %struct.reiserfs_iget_args* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %14 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %5, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %5, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %5, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @search_item(i32 %29, %struct.cpu_key* %5, i32* @path_to_sd)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @IO_ERROR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @reiserfs_error(i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), %struct.cpu_key* %5)
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = call i32 @reiserfs_make_bad_inode(%struct.inode* %39)
  br label %82

41:                                               ; preds = %2
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ITEM_FOUND, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = call i32 @pathrelse(i32* @path_to_sd)
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = call i32 @reiserfs_make_bad_inode(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = call i32 @clear_nlink(%struct.inode* %49)
  br label %82

51:                                               ; preds = %41
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = call i32 @init_inode(%struct.inode* %52, i32* @path_to_sd)
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.TYPE_4__* @REISERFS_SB(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %58
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @reiserfs_warning(i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), %struct.cpu_key* %5)
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = call i32 @reiserfs_make_bad_inode(%struct.inode* %71)
  br label %73

73:                                               ; preds = %66, %58, %51
  %74 = call i32 @reiserfs_check_path(i32* @path_to_sd)
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = call i64 @get_inode_sd_version(%struct.inode* %75)
  %77 = load i64, i64* @STAT_DATA_V1, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.inode*, %struct.inode** %3, align 8
  %81 = call i32 @cache_no_acl(%struct.inode* %80)
  br label %82

82:                                               ; preds = %34, %45, %79, %73
  ret void
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @search_item(i32, %struct.cpu_key*, i32*) #1

declare dso_local i32 @reiserfs_error(i32, i8*, i8*, %struct.cpu_key*) #1

declare dso_local i32 @reiserfs_make_bad_inode(%struct.inode*) #1

declare dso_local i32 @pathrelse(i32*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @init_inode(%struct.inode*, i32*) #1

declare dso_local %struct.TYPE_4__* @REISERFS_SB(i32) #1

declare dso_local i32 @reiserfs_warning(i32, i8*, i8*, %struct.cpu_key*) #1

declare dso_local i32 @reiserfs_check_path(i32*) #1

declare dso_local i64 @get_inode_sd_version(%struct.inode*) #1

declare dso_local i32 @cache_no_acl(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
