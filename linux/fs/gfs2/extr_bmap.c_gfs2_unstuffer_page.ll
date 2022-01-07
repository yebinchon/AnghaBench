; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_unstuffer_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_unstuffer_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.inode }
%struct.inode = type { i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.page = type { i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@BH_Uptodate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, i64, %struct.page*)* @gfs2_unstuffer_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_unstuffer_page(%struct.gfs2_inode* %0, %struct.buffer_head* %1, i64 %2, %struct.page* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.page* %3, %struct.page** %9, align 8
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 1
  store %struct.inode* %16, %struct.inode** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.page*, %struct.page** %9, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.page*, %struct.page** %9, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19, %4
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GFP_NOFS, align 4
  %29 = call %struct.page* @find_or_create_page(i32 %27, i32 0, i32 %28)
  store %struct.page* %29, %struct.page** %9, align 8
  %30 = load %struct.page*, %struct.page** %9, align 8
  %31 = icmp ne %struct.page* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %123

35:                                               ; preds = %24
  store i32 1, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.page*, %struct.page** %9, align 8
  %38 = call i32 @PageUptodate(%struct.page* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %71, label %40

40:                                               ; preds = %36
  %41 = load %struct.page*, %struct.page** %9, align 8
  %42 = call i8* @kmap(%struct.page* %41)
  store i8* %42, i8** %13, align 8
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call i64 @i_size_read(%struct.inode* %43)
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %47 = call i64 @gfs2_max_stuffed_size(%struct.gfs2_inode* %46)
  %48 = icmp sgt i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %51 = call i64 @gfs2_max_stuffed_size(%struct.gfs2_inode* %50)
  store i64 %51, i64* %14, align 8
  br label %52

52:                                               ; preds = %49, %40
  %53 = load i8*, i8** %13, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 4
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @memcpy(i8* %53, i64 %57, i64 %58)
  %60 = load i8*, i8** %13, align 8
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr i8, i8* %60, i64 %61
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = load i64, i64* %14, align 8
  %65 = sub nsw i64 %63, %64
  %66 = call i32 @memset(i8* %62, i32 0, i64 %65)
  %67 = load %struct.page*, %struct.page** %9, align 8
  %68 = call i32 @kunmap(%struct.page* %67)
  %69 = load %struct.page*, %struct.page** %9, align 8
  %70 = call i32 @SetPageUptodate(%struct.page* %69)
  br label %71

71:                                               ; preds = %52, %36
  %72 = load %struct.page*, %struct.page** %9, align 8
  %73 = call i32 @page_has_buffers(%struct.page* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = load %struct.page*, %struct.page** %9, align 8
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @BIT(i32 %79)
  %81 = load i32, i32* @BH_Uptodate, align 4
  %82 = call i32 @BIT(i32 %81)
  %83 = call i32 @create_empty_buffers(%struct.page* %76, i32 %80, i32 %82)
  br label %84

84:                                               ; preds = %75, %71
  %85 = load %struct.page*, %struct.page** %9, align 8
  %86 = call %struct.buffer_head* @page_buffers(%struct.page* %85)
  store %struct.buffer_head* %86, %struct.buffer_head** %11, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %88 = call i32 @buffer_mapped(%struct.buffer_head* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %84
  %91 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %92 = load %struct.inode*, %struct.inode** %10, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @map_bh(%struct.buffer_head* %91, i32 %94, i64 %95)
  br label %97

97:                                               ; preds = %90, %84
  %98 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %99 = call i32 @set_buffer_uptodate(%struct.buffer_head* %98)
  %100 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %101 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %105 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %108 = call i32 @gfs2_trans_add_data(i32 %106, %struct.buffer_head* %107)
  br label %114

109:                                              ; preds = %97
  %110 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %111 = call i32 @mark_buffer_dirty(%struct.buffer_head* %110)
  %112 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %113 = call i32 @gfs2_ordered_add_inode(%struct.gfs2_inode* %112)
  br label %114

114:                                              ; preds = %109, %103
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.page*, %struct.page** %9, align 8
  %119 = call i32 @unlock_page(%struct.page* %118)
  %120 = load %struct.page*, %struct.page** %9, align 8
  %121 = call i32 @put_page(%struct.page* %120)
  br label %122

122:                                              ; preds = %117, %114
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %32
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.page* @find_or_create_page(i32, i32, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @gfs2_max_stuffed_size(%struct.gfs2_inode*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i64) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_add_data(i32, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_ordered_add_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
