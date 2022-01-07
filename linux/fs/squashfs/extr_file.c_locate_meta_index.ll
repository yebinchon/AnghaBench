; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_file.c_locate_meta_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_file.c_locate_meta_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meta_index = type { i64, i32, i64 }
%struct.inode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.squashfs_sb_info* }
%struct.squashfs_sb_info = type { i32, %struct.meta_index* }

@.str = private unnamed_addr constant [40 x i8] c"locate_meta_index: index %d, offset %d\0A\00", align 1
@SQUASHFS_META_SLOTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"locate_meta_index: entry %d, offset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.meta_index* (%struct.inode*, i32, i32)* @locate_meta_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.meta_index* @locate_meta_index(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.meta_index*, align 8
  %8 = alloca %struct.squashfs_sb_info*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.meta_index* null, %struct.meta_index** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %13, align 8
  store %struct.squashfs_sb_info* %14, %struct.squashfs_sb_info** %8, align 8
  %15 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %8, align 8
  %16 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %8, align 8
  %22 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %21, i32 0, i32 1
  %23 = load %struct.meta_index*, %struct.meta_index** %22, align 8
  %24 = icmp eq %struct.meta_index* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %107

26:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %97, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @SQUASHFS_META_SLOTS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %100

31:                                               ; preds = %27
  %32 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %8, align 8
  %33 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %32, i32 0, i32 1
  %34 = load %struct.meta_index*, %struct.meta_index** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %34, i64 %36
  %38 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %31
  %45 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %8, align 8
  %46 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %45, i32 0, i32 1
  %47 = load %struct.meta_index*, %struct.meta_index** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %47, i64 %49
  %51 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %44
  %56 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %8, align 8
  %57 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %56, i32 0, i32 1
  %58 = load %struct.meta_index*, %struct.meta_index** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %58, i64 %60
  %62 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %55
  %67 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %8, align 8
  %68 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %67, i32 0, i32 1
  %69 = load %struct.meta_index*, %struct.meta_index** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %69, i64 %71
  %73 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %8, align 8
  %79 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %78, i32 0, i32 1
  %80 = load %struct.meta_index*, %struct.meta_index** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %80, i64 %82
  %84 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %85)
  %87 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %8, align 8
  %88 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %87, i32 0, i32 1
  %89 = load %struct.meta_index*, %struct.meta_index** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %89, i64 %91
  store %struct.meta_index* %92, %struct.meta_index** %7, align 8
  %93 = load %struct.meta_index*, %struct.meta_index** %7, align 8
  %94 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %76, %66, %55, %44, %31
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %27

100:                                              ; preds = %27
  %101 = load %struct.meta_index*, %struct.meta_index** %7, align 8
  %102 = icmp ne %struct.meta_index* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.meta_index*, %struct.meta_index** %7, align 8
  %105 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %104, i32 0, i32 2
  store i64 1, i64* %105, align 8
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %25
  %108 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %8, align 8
  %109 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load %struct.meta_index*, %struct.meta_index** %7, align 8
  ret %struct.meta_index* %111
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
