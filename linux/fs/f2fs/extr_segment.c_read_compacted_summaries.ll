; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_read_compacted_summaries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_read_compacted_summaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i16 }
%struct.f2fs_checkpoint = type { i64*, i32*, i32* }
%struct.curseg_info = type { i32, i64, i16, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.f2fs_summary* }
%struct.f2fs_summary = type { i32 }
%struct.page = type { i32 }

@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@SUM_JOURNAL_SIZE = common dso_local global i32 0, align 4
@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@SSR = common dso_local global i64 0, align 8
@SUMMARY_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@SUM_FOOTER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @read_compacted_summaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_compacted_summaries(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.f2fs_checkpoint*, align 8
  %5 = alloca %struct.curseg_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca %struct.f2fs_summary*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %16 = call %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info* %15)
  store %struct.f2fs_checkpoint* %16, %struct.f2fs_checkpoint** %4, align 8
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %18 = call i32 @start_sum_block(%struct.f2fs_sb_info* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = call %struct.page* @f2fs_get_meta_page(%struct.f2fs_sb_info* %19, i32 %20)
  store %struct.page* %22, %struct.page** %7, align 8
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = call i64 @IS_ERR(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = call i32 @PTR_ERR(%struct.page* %27)
  store i32 %28, i32* %2, align 4
  br label %172

29:                                               ; preds = %1
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = call i64 @page_address(%struct.page* %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %6, align 8
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %34 = load i32, i32* @CURSEG_HOT_DATA, align 4
  %35 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %33, i32 %34)
  store %struct.curseg_info* %35, %struct.curseg_info** %5, align 8
  %36 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %37 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @SUM_JOURNAL_SIZE, align 4
  %41 = call i32 @memcpy(i32 %38, i8* %39, i32 %40)
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %43 = load i32, i32* @CURSEG_COLD_DATA, align 4
  %44 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %42, i32 %43)
  store %struct.curseg_info* %44, %struct.curseg_info** %5, align 8
  %45 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %46 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @SUM_JOURNAL_SIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i32, i32* @SUM_JOURNAL_SIZE, align 4
  %53 = call i32 @memcpy(i32 %47, i8* %51, i32 %52)
  %54 = load i32, i32* @SUM_JOURNAL_SIZE, align 4
  %55 = mul nsw i32 2, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @CURSEG_HOT_DATA, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %166, %29
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @CURSEG_COLD_DATA, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %169

61:                                               ; preds = %57
  %62 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %62, i32 %63)
  store %struct.curseg_info* %64, %struct.curseg_info** %5, align 8
  %65 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %4, align 8
  %66 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %4, align 8
  %74 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call zeroext i16 @le16_to_cpu(i32 %79)
  store i16 %80, i16* %12, align 2
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %83 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @reset_curseg(%struct.f2fs_sb_info* %84, i32 %85, i32 0)
  %87 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %4, align 8
  %88 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %95 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i16, i16* %12, align 2
  %97 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %98 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %97, i32 0, i32 2
  store i16 %96, i16* %98, align 8
  %99 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %100 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SSR, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %61
  %105 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %106 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %105, i32 0, i32 0
  %107 = load i16, i16* %106, align 2
  store i16 %107, i16* %12, align 2
  br label %108

108:                                              ; preds = %104, %61
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %162, %108
  %110 = load i32, i32* %10, align 4
  %111 = load i16, i16* %12, align 2
  %112 = zext i16 %111 to i32
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %165

114:                                              ; preds = %109
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = bitcast i8* %118 to %struct.f2fs_summary*
  store %struct.f2fs_summary* %119, %struct.f2fs_summary** %14, align 8
  %120 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %121 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %120, i32 0, i32 3
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load %struct.f2fs_summary*, %struct.f2fs_summary** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %124, i64 %126
  %128 = load %struct.f2fs_summary*, %struct.f2fs_summary** %14, align 8
  %129 = bitcast %struct.f2fs_summary* %127 to i8*
  %130 = bitcast %struct.f2fs_summary* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 4 %130, i64 4, i1 false)
  %131 = load i64, i64* @SUMMARY_SIZE, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* @SUMMARY_SIZE, align 8
  %139 = add nsw i64 %137, %138
  %140 = load i64, i64* @PAGE_SIZE, align 8
  %141 = load i64, i64* @SUM_FOOTER_SIZE, align 8
  %142 = sub nsw i64 %140, %141
  %143 = icmp sle i64 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %114
  br label %162

145:                                              ; preds = %114
  %146 = load %struct.page*, %struct.page** %7, align 8
  %147 = call i32 @f2fs_put_page(%struct.page* %146, i32 1)
  store %struct.page* null, %struct.page** %7, align 8
  %148 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  %151 = call %struct.page* @f2fs_get_meta_page(%struct.f2fs_sb_info* %148, i32 %149)
  store %struct.page* %151, %struct.page** %7, align 8
  %152 = load %struct.page*, %struct.page** %7, align 8
  %153 = call i64 @IS_ERR(%struct.page* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %145
  %156 = load %struct.page*, %struct.page** %7, align 8
  %157 = call i32 @PTR_ERR(%struct.page* %156)
  store i32 %157, i32* %2, align 4
  br label %172

158:                                              ; preds = %145
  %159 = load %struct.page*, %struct.page** %7, align 8
  %160 = call i64 @page_address(%struct.page* %159)
  %161 = inttoptr i64 %160 to i8*
  store i8* %161, i8** %6, align 8
  store i32 0, i32* %11, align 4
  br label %162

162:                                              ; preds = %158, %144
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %109

165:                                              ; preds = %109
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %57

169:                                              ; preds = %57
  %170 = load %struct.page*, %struct.page** %7, align 8
  %171 = call i32 @f2fs_put_page(%struct.page* %170, i32 1)
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %169, %155, %26
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info*) #1

declare dso_local i32 @start_sum_block(%struct.f2fs_sb_info*) #1

declare dso_local %struct.page* @f2fs_get_meta_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local zeroext i16 @le16_to_cpu(i32) #1

declare dso_local i32 @reset_curseg(%struct.f2fs_sb_info*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
