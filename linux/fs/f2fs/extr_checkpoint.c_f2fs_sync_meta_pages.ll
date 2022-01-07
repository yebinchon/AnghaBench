; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_sync_meta_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_sync_meta_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.address_space = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i64, %struct.address_space* }
%struct.writeback_control = type { i32 }
%struct.blk_plug = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i64 0, align 8
@META = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f2fs_sync_meta_pages(%struct.f2fs_sb_info* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pagevec, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.writeback_control, align 4
  %16 = alloca %struct.blk_plug, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %20 = call %struct.address_space* @META_MAPPING(%struct.f2fs_sb_info* %19)
  store %struct.address_space* %20, %struct.address_space** %9, align 8
  store i64 0, i64* %10, align 8
  %21 = load i64, i64* @ULONG_MAX, align 8
  store i64 %21, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %22 = bitcast %struct.writeback_control* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = call i32 @pagevec_init(%struct.pagevec* %12)
  %24 = call i32 @blk_start_plug(%struct.blk_plug* %16)
  br label %25

25:                                               ; preds = %116, %4
  %26 = load %struct.address_space*, %struct.address_space** %9, align 8
  %27 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %28 = call i32 @pagevec_lookup_tag(%struct.pagevec* %12, %struct.address_space* %26, i64* %10, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %119

30:                                               ; preds = %25
  store i32 0, i32* %17, align 4
  br label %31

31:                                               ; preds = %113, %30
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %116

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %12, i32 0, i32 0
  %37 = load %struct.page**, %struct.page*** %36, align 8
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.page*, %struct.page** %37, i64 %39
  %41 = load %struct.page*, %struct.page** %40, align 8
  store %struct.page* %41, %struct.page** %18, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @ULONG_MAX, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.page*, %struct.page** %18, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 1
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %45, %35
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @LONG_MAX, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.page*, %struct.page** %18, align 8
  %56 = getelementptr inbounds %struct.page, %struct.page* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add nsw i64 %58, 1
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 @pagevec_release(%struct.pagevec* %12)
  br label %120

63:                                               ; preds = %54, %50
  %64 = load %struct.page*, %struct.page** %18, align 8
  %65 = call i32 @lock_page(%struct.page* %64)
  %66 = load %struct.page*, %struct.page** %18, align 8
  %67 = getelementptr inbounds %struct.page, %struct.page* %66, i32 0, i32 1
  %68 = load %struct.address_space*, %struct.address_space** %67, align 8
  %69 = load %struct.address_space*, %struct.address_space** %9, align 8
  %70 = icmp ne %struct.address_space* %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %90, %82, %74
  %76 = load %struct.page*, %struct.page** %18, align 8
  %77 = call i32 @unlock_page(%struct.page* %76)
  br label %113

78:                                               ; preds = %63
  %79 = load %struct.page*, %struct.page** %18, align 8
  %80 = call i32 @PageDirty(%struct.page* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %75

83:                                               ; preds = %78
  %84 = load %struct.page*, %struct.page** %18, align 8
  %85 = load i32, i32* @META, align 4
  %86 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %84, i32 %85, i32 1, i32 1)
  %87 = load %struct.page*, %struct.page** %18, align 8
  %88 = call i32 @clear_page_dirty_for_io(%struct.page* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  br label %75

91:                                               ; preds = %83
  %92 = load %struct.page*, %struct.page** %18, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @__f2fs_write_meta_page(%struct.page* %92, %struct.writeback_control* %15, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.page*, %struct.page** %18, align 8
  %98 = call i32 @unlock_page(%struct.page* %97)
  br label %116

99:                                               ; preds = %91
  %100 = load i64, i64* %13, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %13, align 8
  %102 = load %struct.page*, %struct.page** %18, align 8
  %103 = getelementptr inbounds %struct.page, %struct.page* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %11, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %7, align 8
  %107 = icmp sge i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  br label %116

112:                                              ; preds = %99
  br label %113

113:                                              ; preds = %112, %75
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %31

116:                                              ; preds = %111, %96, %31
  %117 = call i32 @pagevec_release(%struct.pagevec* %12)
  %118 = call i32 (...) @cond_resched()
  br label %25

119:                                              ; preds = %25
  br label %120

120:                                              ; preds = %119, %61
  %121 = load i64, i64* %13, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @f2fs_submit_merged_write(%struct.f2fs_sb_info* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %120
  %128 = call i32 @blk_finish_plug(%struct.blk_plug* %16)
  %129 = load i64, i64* %13, align 8
  ret i64 %129
}

declare dso_local %struct.address_space* @META_MAPPING(%struct.f2fs_sb_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @pagevec_lookup_tag(%struct.pagevec*, %struct.address_space*, i64*, i32) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i64 @__f2fs_write_meta_page(%struct.page*, %struct.writeback_control*, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @f2fs_submit_merged_write(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
