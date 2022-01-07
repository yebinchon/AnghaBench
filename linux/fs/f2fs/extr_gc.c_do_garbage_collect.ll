; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_do_garbage_collect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_do_garbage_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32*, i32, i32 }
%struct.gc_inode_list = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_summary_block = type { i32, i32 }
%struct.blk_plug = type { i32 }
%struct.TYPE_2__ = type { i32 }

@SUM_TYPE_DATA = common dso_local global i8 0, align 1
@SUM_TYPE_NODE = common dso_local global i8 0, align 1
@META_SSA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Inconsistent segment (%u) type [%d, %d] in SSA and SIT\00", align 1
@SBI_NEED_FSCK = common dso_local global i32 0, align 4
@FG_GC = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32, %struct.gc_inode_list*, i32)* @do_garbage_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_garbage_collect(%struct.f2fs_sb_info* %0, i32 %1, %struct.gc_inode_list* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gc_inode_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.f2fs_summary_block*, align 8
  %12 = alloca %struct.blk_plug, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.gc_inode_list* %2, %struct.gc_inode_list** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %23 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %21, %24
  store i32 %25, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call %struct.TYPE_2__* @get_seg_entry(%struct.f2fs_sb_info* %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IS_DATASEG(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i8, i8* @SUM_TYPE_DATA, align 1
  %35 = zext i8 %34 to i32
  br label %39

36:                                               ; preds = %4
  %37 = load i8, i8* @SUM_TYPE_NODE, align 1
  %38 = zext i8 %37 to i32
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i32 [ %35, %33 ], [ %38, %36 ]
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %17, align 1
  store i32 0, i32* %18, align 4
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %43 = call i64 @__is_large_section(%struct.f2fs_sb_info* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %48 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rounddown(i32 %46, i32 %49)
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %53 = call i64 @__is_large_section(%struct.f2fs_sb_info* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @GET_SUM_BLOCK(%struct.f2fs_sb_info* %57, i32 %58)
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = sub i32 %60, %61
  %63 = load i32, i32* @META_SSA, align 4
  %64 = call i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info* %56, i32 %59, i32 %62, i32 %63, i32 1)
  br label %65

65:                                               ; preds = %55, %51
  br label %66

66:                                               ; preds = %104, %65
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %66
  %71 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %72 = load i32, i32* %13, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %13, align 4
  %74 = call %struct.page* @f2fs_get_sum_page(%struct.f2fs_sb_info* %71, i32 %72)
  store %struct.page* %74, %struct.page** %10, align 8
  %75 = load %struct.page*, %struct.page** %10, align 8
  %76 = call i64 @IS_ERR(%struct.page* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %70
  %79 = load %struct.page*, %struct.page** %10, align 8
  %80 = call i32 @PTR_ERR(%struct.page* %79)
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub i32 %81, 1
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %99, %78
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %90 = call i32 @META_MAPPING(%struct.f2fs_sb_info* %89)
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @GET_SUM_BLOCK(%struct.f2fs_sb_info* %91, i32 %92)
  %94 = call %struct.page* @find_get_page(i32 %90, i32 %93)
  store %struct.page* %94, %struct.page** %10, align 8
  %95 = load %struct.page*, %struct.page** %10, align 8
  %96 = call i32 @f2fs_put_page(%struct.page* %95, i32 0)
  %97 = load %struct.page*, %struct.page** %10, align 8
  %98 = call i32 @f2fs_put_page(%struct.page* %97, i32 0)
  br label %99

99:                                               ; preds = %88
  %100 = load i32, i32* %13, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %84

102:                                              ; preds = %84
  %103 = load i32, i32* %19, align 4
  store i32 %103, i32* %5, align 4
  br label %271

104:                                              ; preds = %70
  %105 = load %struct.page*, %struct.page** %10, align 8
  %106 = call i32 @unlock_page(%struct.page* %105)
  br label %66

107:                                              ; preds = %66
  %108 = call i32 @blk_start_plug(%struct.blk_plug* %12)
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %244, %107
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %247

114:                                              ; preds = %110
  %115 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %116 = call i32 @META_MAPPING(%struct.f2fs_sb_info* %115)
  %117 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @GET_SUM_BLOCK(%struct.f2fs_sb_info* %117, i32 %118)
  %120 = call %struct.page* @find_get_page(i32 %116, i32 %119)
  store %struct.page* %120, %struct.page** %10, align 8
  %121 = load %struct.page*, %struct.page** %10, align 8
  %122 = call i32 @f2fs_put_page(%struct.page* %121, i32 0)
  %123 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call i64 @get_valid_blocks(%struct.f2fs_sb_info* %123, i32 %124, i32 0)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  br label %208

128:                                              ; preds = %114
  %129 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %130 = call i64 @__is_large_section(%struct.f2fs_sb_info* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load i32, i32* %16, align 4
  %134 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %135 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp sge i32 %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %241

139:                                              ; preds = %132, %128
  %140 = load %struct.page*, %struct.page** %10, align 8
  %141 = call i32 @PageUptodate(%struct.page* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %145 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %144)
  %146 = call i64 @unlikely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143, %139
  br label %241

149:                                              ; preds = %143
  %150 = load %struct.page*, %struct.page** %10, align 8
  %151 = call %struct.f2fs_summary_block* @page_address(%struct.page* %150)
  store %struct.f2fs_summary_block* %151, %struct.f2fs_summary_block** %11, align 8
  %152 = load i8, i8* %17, align 1
  %153 = zext i8 %152 to i32
  %154 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %11, align 8
  %155 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %154, i32 0, i32 1
  %156 = call zeroext i8 @GET_SUM_TYPE(i32* %155)
  %157 = zext i8 %156 to i32
  %158 = icmp ne i32 %153, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %149
  %160 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %161 = load i32, i32* %13, align 4
  %162 = load i8, i8* %17, align 1
  %163 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %11, align 8
  %164 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %163, i32 0, i32 1
  %165 = call zeroext i8 @GET_SUM_TYPE(i32* %164)
  %166 = call i32 @f2fs_err(%struct.f2fs_sb_info* %160, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %161, i8 zeroext %162, i8 zeroext %165)
  %167 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %168 = load i32, i32* @SBI_NEED_FSCK, align 4
  %169 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %167, i32 %168)
  %170 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %171 = call i32 @f2fs_stop_checkpoint(%struct.f2fs_sb_info* %170, i32 0)
  br label %241

172:                                              ; preds = %149
  %173 = load i8, i8* %17, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8, i8* @SUM_TYPE_NODE, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %178, label %190

178:                                              ; preds = %172
  %179 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %180 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %11, align 8
  %181 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %9, align 4
  %185 = call i64 @gc_node_segment(%struct.f2fs_sb_info* %179, i32 %182, i32 %183, i32 %184)
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %187, %185
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %18, align 4
  br label %203

190:                                              ; preds = %172
  %191 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %192 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %11, align 8
  %193 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.gc_inode_list*, %struct.gc_inode_list** %8, align 8
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %9, align 4
  %198 = call i64 @gc_data_segment(%struct.f2fs_sb_info* %191, i32 %194, %struct.gc_inode_list* %195, i32 %196, i32 %197)
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %18, align 4
  br label %203

203:                                              ; preds = %190, %178
  %204 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %205 = load i8, i8* %17, align 1
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @stat_inc_seg_count(%struct.f2fs_sb_info* %204, i8 zeroext %205, i32 %206)
  br label %208

208:                                              ; preds = %203, %127
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* @FG_GC, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %208
  %213 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %214 = load i32, i32* %13, align 4
  %215 = call i64 @get_valid_blocks(%struct.f2fs_sb_info* %213, i32 %214, i32 0)
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load i32, i32* %15, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %15, align 4
  br label %220

220:                                              ; preds = %217, %212, %208
  %221 = load i32, i32* %16, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %16, align 4
  %223 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %224 = call i64 @__is_large_section(%struct.f2fs_sb_info* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %240

226:                                              ; preds = %220
  %227 = load i32, i32* %13, align 4
  %228 = add i32 %227, 1
  %229 = load i32, i32* %14, align 4
  %230 = icmp ult i32 %228, %229
  br i1 %230, label %231, label %240

231:                                              ; preds = %226
  %232 = load i32, i32* %13, align 4
  %233 = add i32 %232, 1
  %234 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %235 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32 %233, i32* %239, align 4
  br label %240

240:                                              ; preds = %231, %226, %220
  br label %241

241:                                              ; preds = %240, %159, %148, %138
  %242 = load %struct.page*, %struct.page** %10, align 8
  %243 = call i32 @f2fs_put_page(%struct.page* %242, i32 0)
  br label %244

244:                                              ; preds = %241
  %245 = load i32, i32* %13, align 4
  %246 = add i32 %245, 1
  store i32 %246, i32* %13, align 4
  br label %110

247:                                              ; preds = %110
  %248 = load i32, i32* %18, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %247
  %251 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %252 = load i8, i8* %17, align 1
  %253 = zext i8 %252 to i32
  %254 = load i8, i8* @SUM_TYPE_NODE, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %250
  %258 = load i32, i32* @NODE, align 4
  br label %261

259:                                              ; preds = %250
  %260 = load i32, i32* @DATA, align 4
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi i32 [ %258, %257 ], [ %260, %259 ]
  %263 = call i32 @f2fs_submit_merged_write(%struct.f2fs_sb_info* %251, i32 %262)
  br label %264

264:                                              ; preds = %261, %247
  %265 = call i32 @blk_finish_plug(%struct.blk_plug* %12)
  %266 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %267 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @stat_inc_call_count(i32 %268)
  %270 = load i32, i32* %15, align 4
  store i32 %270, i32* %5, align 4
  br label %271

271:                                              ; preds = %264, %102
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local i64 @IS_DATASEG(i32) #1

declare dso_local %struct.TYPE_2__* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @__is_large_section(%struct.f2fs_sb_info*) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info*, i32, i32, i32, i32) #1

declare dso_local i32 @GET_SUM_BLOCK(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.page* @f2fs_get_sum_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local %struct.page* @find_get_page(i32, i32) #1

declare dso_local i32 @META_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i64 @get_valid_blocks(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local %struct.f2fs_summary_block* @page_address(%struct.page*) #1

declare dso_local zeroext i8 @GET_SUM_TYPE(i32*) #1

declare dso_local i32 @f2fs_err(%struct.f2fs_sb_info*, i8*, i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_stop_checkpoint(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @gc_node_segment(%struct.f2fs_sb_info*, i32, i32, i32) #1

declare dso_local i64 @gc_data_segment(%struct.f2fs_sb_info*, i32, %struct.gc_inode_list*, i32, i32) #1

declare dso_local i32 @stat_inc_seg_count(%struct.f2fs_sb_info*, i8 zeroext, i32) #1

declare dso_local i32 @f2fs_submit_merged_write(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

declare dso_local i32 @stat_inc_call_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
