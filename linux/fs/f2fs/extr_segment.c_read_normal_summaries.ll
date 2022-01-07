; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_read_normal_summaries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_read_normal_summaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_checkpoint = type { i32*, i32*, i32*, i32*, i32* }
%struct.f2fs_summary_block = type { %struct.f2fs_summary, %struct.f2fs_summary*, %struct.f2fs_summary }
%struct.f2fs_summary = type { i64, i64 }
%struct.curseg_info = type { i32, i16, i32, i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.page = type { i32 }

@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@NR_CURSEG_TYPE = common dso_local global i32 0, align 4
@NR_CURSEG_DATA_TYPE = common dso_local global i32 0, align 4
@CURSEG_HOT_NODE = common dso_local global i32 0, align 4
@NR_CURSEG_NODE_TYPE = common dso_local global i32 0, align 4
@SUM_JOURNAL_SIZE = common dso_local global i32 0, align 4
@SUM_ENTRY_SIZE = common dso_local global i32 0, align 4
@SUM_FOOTER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32)* @read_normal_summaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_normal_summaries(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_checkpoint*, align 8
  %7 = alloca %struct.f2fs_summary_block*, align 8
  %8 = alloca %struct.curseg_info*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.f2fs_summary*, align 8
  %15 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %17 = call %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info* %16)
  store %struct.f2fs_checkpoint* %17, %struct.f2fs_checkpoint** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @IS_DATASEG(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %2
  %22 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %23 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %31 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @CURSEG_HOT_DATA, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call zeroext i16 @le16_to_cpu(i32 %38)
  store i16 %39, i16* %10, align 2
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %41 = call i64 @__exist_node_summaries(%struct.f2fs_sb_info* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %21
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %45 = load i32, i32* @NR_CURSEG_TYPE, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @sum_blk_addr(%struct.f2fs_sb_info* %44, i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  br label %53

48:                                               ; preds = %21
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %50 = load i32, i32* @NR_CURSEG_DATA_TYPE, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @sum_blk_addr(%struct.f2fs_sb_info* %49, i32 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %48, %43
  br label %90

54:                                               ; preds = %2
  %55 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %56 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @CURSEG_HOT_NODE, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %66 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @CURSEG_HOT_NODE, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call zeroext i16 @le16_to_cpu(i32 %73)
  store i16 %74, i16* %10, align 2
  %75 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %76 = call i64 @__exist_node_summaries(%struct.f2fs_sb_info* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %54
  %79 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %80 = load i32, i32* @NR_CURSEG_NODE_TYPE, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @CURSEG_HOT_NODE, align 4
  %83 = sub nsw i32 %81, %82
  %84 = call i32 @sum_blk_addr(%struct.f2fs_sb_info* %79, i32 %80, i32 %83)
  store i32 %84, i32* %12, align 4
  br label %89

85:                                               ; preds = %54
  %86 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @GET_SUM_BLOCK(%struct.f2fs_sb_info* %86, i32 %87)
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %85, %78
  br label %90

90:                                               ; preds = %89, %53
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call %struct.page* @f2fs_get_meta_page(%struct.f2fs_sb_info* %91, i32 %92)
  store %struct.page* %93, %struct.page** %9, align 8
  %94 = load %struct.page*, %struct.page** %9, align 8
  %95 = call i64 @IS_ERR(%struct.page* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.page*, %struct.page** %9, align 8
  %99 = call i32 @PTR_ERR(%struct.page* %98)
  store i32 %99, i32* %3, align 4
  br label %206

100:                                              ; preds = %90
  %101 = load %struct.page*, %struct.page** %9, align 8
  %102 = call i64 @page_address(%struct.page* %101)
  %103 = inttoptr i64 %102 to %struct.f2fs_summary_block*
  store %struct.f2fs_summary_block* %103, %struct.f2fs_summary_block** %7, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @IS_NODESEG(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %143

107:                                              ; preds = %100
  %108 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %109 = call i64 @__exist_node_summaries(%struct.f2fs_sb_info* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %107
  %112 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %7, align 8
  %113 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %112, i32 0, i32 1
  %114 = load %struct.f2fs_summary*, %struct.f2fs_summary** %113, align 8
  %115 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %114, i64 0
  store %struct.f2fs_summary* %115, %struct.f2fs_summary** %14, align 8
  store i32 0, i32* %15, align 4
  br label %116

116:                                              ; preds = %127, %111
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %119 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %116
  %123 = load %struct.f2fs_summary*, %struct.f2fs_summary** %14, align 8
  %124 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  %125 = load %struct.f2fs_summary*, %struct.f2fs_summary** %14, align 8
  %126 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  %130 = load %struct.f2fs_summary*, %struct.f2fs_summary** %14, align 8
  %131 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %130, i32 1
  store %struct.f2fs_summary* %131, %struct.f2fs_summary** %14, align 8
  br label %116

132:                                              ; preds = %116
  br label %142

133:                                              ; preds = %107
  %134 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %7, align 8
  %137 = call i32 @f2fs_restore_node_summary(%struct.f2fs_sb_info* %134, i32 %135, %struct.f2fs_summary_block* %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %202

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141, %132
  br label %143

143:                                              ; preds = %142, %100
  %144 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %144, i32 %145)
  store %struct.curseg_info* %146, %struct.curseg_info** %8, align 8
  %147 = load %struct.curseg_info*, %struct.curseg_info** %8, align 8
  %148 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %147, i32 0, i32 2
  %149 = call i32 @mutex_lock(i32* %148)
  %150 = load %struct.curseg_info*, %struct.curseg_info** %8, align 8
  %151 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %150, i32 0, i32 5
  %152 = call i32 @down_write(i32* %151)
  %153 = load %struct.curseg_info*, %struct.curseg_info** %8, align 8
  %154 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %153, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %7, align 8
  %157 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %156, i32 0, i32 2
  %158 = load i32, i32* @SUM_JOURNAL_SIZE, align 4
  %159 = call i32 @memcpy(i32* %155, %struct.f2fs_summary* %157, i32 %158)
  %160 = load %struct.curseg_info*, %struct.curseg_info** %8, align 8
  %161 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %160, i32 0, i32 5
  %162 = call i32 @up_write(i32* %161)
  %163 = load %struct.curseg_info*, %struct.curseg_info** %8, align 8
  %164 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %163, i32 0, i32 4
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %7, align 8
  %169 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %168, i32 0, i32 1
  %170 = load %struct.f2fs_summary*, %struct.f2fs_summary** %169, align 8
  %171 = load i32, i32* @SUM_ENTRY_SIZE, align 4
  %172 = call i32 @memcpy(i32* %167, %struct.f2fs_summary* %170, i32 %171)
  %173 = load %struct.curseg_info*, %struct.curseg_info** %8, align 8
  %174 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %173, i32 0, i32 4
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %7, align 8
  %178 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %177, i32 0, i32 0
  %179 = load i32, i32* @SUM_FOOTER_SIZE, align 4
  %180 = call i32 @memcpy(i32* %176, %struct.f2fs_summary* %178, i32 %179)
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.curseg_info*, %struct.curseg_info** %8, align 8
  %183 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @reset_curseg(%struct.f2fs_sb_info* %184, i32 %185, i32 0)
  %187 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %6, align 8
  %188 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.curseg_info*, %struct.curseg_info** %8, align 8
  %195 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 4
  %196 = load i16, i16* %10, align 2
  %197 = load %struct.curseg_info*, %struct.curseg_info** %8, align 8
  %198 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %197, i32 0, i32 1
  store i16 %196, i16* %198, align 4
  %199 = load %struct.curseg_info*, %struct.curseg_info** %8, align 8
  %200 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %199, i32 0, i32 2
  %201 = call i32 @mutex_unlock(i32* %200)
  br label %202

202:                                              ; preds = %143, %140
  %203 = load %struct.page*, %struct.page** %9, align 8
  %204 = call i32 @f2fs_put_page(%struct.page* %203, i32 1)
  %205 = load i32, i32* %13, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %202, %97
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info*) #1

declare dso_local i64 @IS_DATASEG(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local zeroext i16 @le16_to_cpu(i32) #1

declare dso_local i64 @__exist_node_summaries(%struct.f2fs_sb_info*) #1

declare dso_local i32 @sum_blk_addr(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @GET_SUM_BLOCK(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.page* @f2fs_get_meta_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @IS_NODESEG(i32) #1

declare dso_local i32 @f2fs_restore_node_summary(%struct.f2fs_sb_info*, i32, %struct.f2fs_summary_block*) #1

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.f2fs_summary*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @reset_curseg(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
