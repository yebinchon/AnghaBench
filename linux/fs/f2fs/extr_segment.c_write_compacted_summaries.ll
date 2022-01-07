; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_write_compacted_summaries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_write_compacted_summaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i16, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }
%struct.page = type { i32 }
%struct.f2fs_summary = type { i32 }
%struct.curseg_info = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.f2fs_summary* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@SUM_JOURNAL_SIZE = common dso_local global i64 0, align 8
@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@SSR = common dso_local global i64 0, align 8
@SUMMARY_SIZE = common dso_local global i64 0, align 8
@SUM_FOOTER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32)* @write_compacted_summaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_compacted_summaries(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.f2fs_summary*, align 8
  %8 = alloca %struct.curseg_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = call %struct.page* @f2fs_grab_meta_page(%struct.f2fs_sb_info* %13, i32 %14)
  store %struct.page* %16, %struct.page** %5, align 8
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i64 @page_address(%struct.page* %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = call i32 @memset(i8* %20, i32 0, i64 %21)
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %24 = load i32, i32* @CURSEG_HOT_DATA, align 4
  %25 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %23, i32 %24)
  store %struct.curseg_info* %25, %struct.curseg_info** %8, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.curseg_info*, %struct.curseg_info** %8, align 8
  %28 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* @SUM_JOURNAL_SIZE, align 8
  %31 = call i32 @memcpy(i8* %26, i32 %29, i64 %30)
  %32 = load i64, i64* @SUM_JOURNAL_SIZE, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %38 = load i32, i32* @CURSEG_COLD_DATA, align 4
  %39 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %37, i32 %38)
  store %struct.curseg_info* %39, %struct.curseg_info** %8, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load %struct.curseg_info*, %struct.curseg_info** %8, align 8
  %45 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* @SUM_JOURNAL_SIZE, align 8
  %48 = call i32 @memcpy(i8* %43, i32 %46, i64 %47)
  %49 = load i64, i64* @SUM_JOURNAL_SIZE, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @CURSEG_HOT_DATA, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %142, %2
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @CURSEG_COLD_DATA, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %145

59:                                               ; preds = %55
  %60 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %60, i32 %61)
  store %struct.curseg_info* %62, %struct.curseg_info** %8, align 8
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %64 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SSR, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %59
  %75 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %76 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %75, i32 0, i32 0
  %77 = load i16, i16* %76, align 8
  store i16 %77, i16* %12, align 2
  br label %82

78:                                               ; preds = %59
  %79 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call zeroext i16 @curseg_blkoff(%struct.f2fs_sb_info* %79, i32 %80)
  store i16 %81, i16* %12, align 2
  br label %82

82:                                               ; preds = %78, %74
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %138, %82
  %84 = load i32, i32* %11, align 4
  %85 = load i16, i16* %12, align 2
  %86 = zext i16 %85 to i32
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %141

88:                                               ; preds = %83
  %89 = load %struct.page*, %struct.page** %5, align 8
  %90 = icmp ne %struct.page* %89, null
  br i1 %90, label %102, label %91

91:                                               ; preds = %88
  %92 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  %95 = call %struct.page* @f2fs_grab_meta_page(%struct.f2fs_sb_info* %92, i32 %93)
  store %struct.page* %95, %struct.page** %5, align 8
  %96 = load %struct.page*, %struct.page** %5, align 8
  %97 = call i64 @page_address(%struct.page* %96)
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %6, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load i64, i64* @PAGE_SIZE, align 8
  %101 = call i32 @memset(i8* %99, i32 0, i64 %100)
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %91, %88
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = bitcast i8* %106 to %struct.f2fs_summary*
  store %struct.f2fs_summary* %107, %struct.f2fs_summary** %7, align 8
  %108 = load %struct.f2fs_summary*, %struct.f2fs_summary** %7, align 8
  %109 = load %struct.curseg_info*, %struct.curseg_info** %8, align 8
  %110 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.f2fs_summary*, %struct.f2fs_summary** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %113, i64 %115
  %117 = bitcast %struct.f2fs_summary* %108 to i8*
  %118 = bitcast %struct.f2fs_summary* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %117, i8* align 4 %118, i64 4, i1 false)
  %119 = load i64, i64* @SUMMARY_SIZE, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* @SUMMARY_SIZE, align 8
  %127 = add nsw i64 %125, %126
  %128 = load i64, i64* @PAGE_SIZE, align 8
  %129 = load i64, i64* @SUM_FOOTER_SIZE, align 8
  %130 = sub nsw i64 %128, %129
  %131 = icmp sle i64 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %102
  br label %138

133:                                              ; preds = %102
  %134 = load %struct.page*, %struct.page** %5, align 8
  %135 = call i32 @set_page_dirty(%struct.page* %134)
  %136 = load %struct.page*, %struct.page** %5, align 8
  %137 = call i32 @f2fs_put_page(%struct.page* %136, i32 1)
  store %struct.page* null, %struct.page** %5, align 8
  br label %138

138:                                              ; preds = %133, %132
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %83

141:                                              ; preds = %83
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %55

145:                                              ; preds = %55
  %146 = load %struct.page*, %struct.page** %5, align 8
  %147 = icmp ne %struct.page* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load %struct.page*, %struct.page** %5, align 8
  %150 = call i32 @set_page_dirty(%struct.page* %149)
  %151 = load %struct.page*, %struct.page** %5, align 8
  %152 = call i32 @f2fs_put_page(%struct.page* %151, i32 1)
  br label %153

153:                                              ; preds = %148, %145
  ret void
}

declare dso_local %struct.page* @f2fs_grab_meta_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local zeroext i16 @curseg_blkoff(%struct.f2fs_sb_info*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
