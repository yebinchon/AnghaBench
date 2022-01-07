; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_symlink.c_udf_symlink_filler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_symlink.c_udf_symlink_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.buffer_head = type { i8* }
%struct.udf_inode_info = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @udf_symlink_filler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_symlink_filler(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.udf_inode_info*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i8* @page_address(%struct.page* %18)
  store i8* %19, i8** %10, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %22, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @ENAMETOOLONG, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %100

32:                                               ; preds = %2
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %33)
  store %struct.udf_inode_info* %34, %struct.udf_inode_info** %11, align 8
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call i32 @udf_block_map(%struct.inode* %35, i32 0)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %38 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %37, i32 0, i32 2
  %39 = call i32 @down_read(i32* %38)
  %40 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %41 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %32
  %46 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %47 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %51 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  store i8* %54, i8** %8, align 8
  br label %70

55:                                               ; preds = %32
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call %struct.buffer_head* @sb_bread(%struct.TYPE_7__* %58, i32 %59)
  store %struct.buffer_head* %60, %struct.buffer_head** %7, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %62 = icmp ne %struct.buffer_head* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %94

66:                                               ; preds = %55
  %67 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %8, align 8
  br label %70

70:                                               ; preds = %66, %45
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = call i32 @udf_pc_to_char(%struct.TYPE_7__* %73, i8* %74, i64 %77, i8* %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %82 = call i32 @brelse(%struct.buffer_head* %81)
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  br label %94

86:                                               ; preds = %70
  %87 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %88 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %87, i32 0, i32 2
  %89 = call i32 @up_read(i32* %88)
  %90 = load %struct.page*, %struct.page** %5, align 8
  %91 = call i32 @SetPageUptodate(%struct.page* %90)
  %92 = load %struct.page*, %struct.page** %5, align 8
  %93 = call i32 @unlock_page(%struct.page* %92)
  store i32 0, i32* %3, align 4
  br label %104

94:                                               ; preds = %85, %63
  %95 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %96 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %95, i32 0, i32 2
  %97 = call i32 @up_read(i32* %96)
  %98 = load %struct.page*, %struct.page** %5, align 8
  %99 = call i32 @SetPageError(%struct.page* %98)
  br label %100

100:                                              ; preds = %94, %29
  %101 = load %struct.page*, %struct.page** %5, align 8
  %102 = call i32 @unlock_page(%struct.page* %101)
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %86
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_block_map(%struct.inode*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @udf_pc_to_char(%struct.TYPE_7__*, i8*, i64, i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
