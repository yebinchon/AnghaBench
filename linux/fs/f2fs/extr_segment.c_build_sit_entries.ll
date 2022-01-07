; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_build_sit_entries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_build_sit_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32 }
%struct.sit_info = type { i32, %struct.seg_entry* }
%struct.seg_entry = type { i32, i32, i32, i32 }
%struct.curseg_info = type { i32, %struct.f2fs_journal* }
%struct.f2fs_journal = type { i32 }
%struct.f2fs_sit_entry = type { i32 }
%struct.f2fs_sit_block = type { %struct.f2fs_sit_entry* }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@META_SIT = common dso_local global i32 0, align 4
@CP_TRIMMED_FLAG = common dso_local global i32 0, align 4
@SIT_VBLOCK_MAP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Wrong journal entry on segno %u\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"SIT is corrupted node# %u vs %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @build_sit_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_sit_entries(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.sit_info*, align 8
  %5 = alloca %struct.curseg_info*, align 8
  %6 = alloca %struct.f2fs_journal*, align 8
  %7 = alloca %struct.seg_entry*, align 8
  %8 = alloca %struct.f2fs_sit_entry, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.f2fs_sit_block*, align 8
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.f2fs_sit_entry, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %21 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %22 = call %struct.sit_info* @SIT_I(%struct.f2fs_sb_info* %21)
  store %struct.sit_info* %22, %struct.sit_info** %4, align 8
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %24 = load i32, i32* @CURSEG_COLD_DATA, align 4
  %25 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %23, i32 %24)
  store %struct.curseg_info* %25, %struct.curseg_info** %5, align 8
  %26 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %27 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %26, i32 0, i32 1
  %28 = load %struct.f2fs_journal*, %struct.f2fs_journal** %27, align 8
  store %struct.f2fs_journal* %28, %struct.f2fs_journal** %6, align 8
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %30 = call i32 @SIT_BLK_CNT(%struct.f2fs_sb_info* %29)
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %31

31:                                               ; preds = %165, %1
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @BIO_MAX_PAGES, align 4
  %35 = load i32, i32* @META_SIT, align 4
  %36 = call i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info* %32, i32 %33, i32 %34, i32 %35, i32 1)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.sit_info*, %struct.sit_info** %4, align 8
  %39 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul i32 %37, %40
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = add i32 %42, %43
  %45 = load %struct.sit_info*, %struct.sit_info** %4, align 8
  %46 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul i32 %44, %47
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %158, %31
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %56 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %55)
  %57 = icmp ult i32 %54, %56
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i1 [ false, %49 ], [ %57, %53 ]
  br i1 %59, label %60, label %161

60:                                               ; preds = %58
  %61 = load %struct.sit_info*, %struct.sit_info** %4, align 8
  %62 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %61, i32 0, i32 1
  %63 = load %struct.seg_entry*, %struct.seg_entry** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %63, i64 %65
  store %struct.seg_entry* %66, %struct.seg_entry** %7, align 8
  %67 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call %struct.page* @get_current_sit_page(%struct.f2fs_sb_info* %67, i32 %68)
  store %struct.page* %69, %struct.page** %18, align 8
  %70 = load %struct.page*, %struct.page** %18, align 8
  %71 = call i64 @IS_ERR(%struct.page* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load %struct.page*, %struct.page** %18, align 8
  %75 = call i32 @PTR_ERR(%struct.page* %74)
  store i32 %75, i32* %2, align 4
  br label %317

76:                                               ; preds = %60
  %77 = load %struct.page*, %struct.page** %18, align 8
  %78 = call i64 @page_address(%struct.page* %77)
  %79 = inttoptr i64 %78 to %struct.f2fs_sit_block*
  store %struct.f2fs_sit_block* %79, %struct.f2fs_sit_block** %17, align 8
  %80 = load %struct.f2fs_sit_block*, %struct.f2fs_sit_block** %17, align 8
  %81 = getelementptr inbounds %struct.f2fs_sit_block, %struct.f2fs_sit_block* %80, i32 0, i32 0
  %82 = load %struct.f2fs_sit_entry*, %struct.f2fs_sit_entry** %81, align 8
  %83 = load %struct.sit_info*, %struct.sit_info** %4, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i64 @SIT_ENTRY_OFFSET(%struct.sit_info* %83, i32 %84)
  %86 = getelementptr inbounds %struct.f2fs_sit_entry, %struct.f2fs_sit_entry* %82, i64 %85
  %87 = bitcast %struct.f2fs_sit_entry* %8 to i8*
  %88 = bitcast %struct.f2fs_sit_entry* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 4, i1 false)
  %89 = load %struct.page*, %struct.page** %18, align 8
  %90 = call i32 @f2fs_put_page(%struct.page* %89, i32 1)
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @check_block_count(%struct.f2fs_sb_info* %91, i32 %92, %struct.f2fs_sit_entry* %8)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %76
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %2, align 4
  br label %317

98:                                               ; preds = %76
  %99 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %100 = call i32 @seg_info_from_raw_sit(%struct.seg_entry* %99, %struct.f2fs_sit_entry* %8)
  %101 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %102 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @IS_NODESEG(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %108 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %16, align 4
  %111 = add i32 %110, %109
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %106, %98
  %113 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %114 = load i32, i32* @CP_TRIMMED_FLAG, align 4
  %115 = call i64 @is_set_ckpt_flags(%struct.f2fs_sb_info* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %119 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @SIT_VBLOCK_MAP_SIZE, align 4
  %122 = call i32 @memset(i32 %120, i32 255, i32 %121)
  br label %143

123:                                              ; preds = %112
  %124 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %125 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %128 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SIT_VBLOCK_MAP_SIZE, align 4
  %131 = call i32 @memcpy(i32 %126, i32 %129, i32 %130)
  %132 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %133 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %136 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sub i32 %134, %137
  %139 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %140 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %123, %117
  %144 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %145 = call i64 @__is_large_section(%struct.f2fs_sb_info* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %149 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %152 = load i32, i32* %11, align 4
  %153 = call %struct.TYPE_2__* @get_sec_entry(%struct.f2fs_sb_info* %151, i32 %152)
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add i32 %155, %150
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %147, %143
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %49

161:                                              ; preds = %58
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %14, align 4
  %164 = add i32 %163, %162
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %161
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %31, label %169

169:                                              ; preds = %165
  %170 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %171 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %170, i32 0, i32 0
  %172 = call i32 @down_read(i32* %171)
  store i32 0, i32* %10, align 4
  br label %173

173:                                              ; preds = %293, %169
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.f2fs_journal*, %struct.f2fs_journal** %6, align 8
  %176 = call i32 @sits_in_cursum(%struct.f2fs_journal* %175)
  %177 = icmp ult i32 %174, %176
  br i1 %177, label %178, label %296

178:                                              ; preds = %173
  %179 = load %struct.f2fs_journal*, %struct.f2fs_journal** %6, align 8
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @segno_in_journal(%struct.f2fs_journal* %179, i32 %180)
  %182 = call i32 @le32_to_cpu(i32 %181)
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %185 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %184)
  %186 = icmp uge i32 %183, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %178
  %188 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %189 = load i32, i32* %11, align 4
  %190 = call i32 (%struct.f2fs_sb_info*, i8*, i32, ...) @f2fs_err(%struct.f2fs_sb_info* %188, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @EFSCORRUPTED, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %15, align 4
  br label %296

193:                                              ; preds = %178
  %194 = load %struct.sit_info*, %struct.sit_info** %4, align 8
  %195 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %194, i32 0, i32 1
  %196 = load %struct.seg_entry*, %struct.seg_entry** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %196, i64 %198
  store %struct.seg_entry* %199, %struct.seg_entry** %7, align 8
  %200 = load %struct.f2fs_journal*, %struct.f2fs_journal** %6, align 8
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @sit_in_journal(%struct.f2fs_journal* %200, i32 %201)
  %203 = getelementptr inbounds %struct.f2fs_sit_entry, %struct.f2fs_sit_entry* %20, i32 0, i32 0
  store i32 %202, i32* %203, align 4
  %204 = bitcast %struct.f2fs_sit_entry* %8 to i8*
  %205 = bitcast %struct.f2fs_sit_entry* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %204, i8* align 4 %205, i64 4, i1 false)
  %206 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %207 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %19, align 4
  %209 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %210 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @IS_NODESEG(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %193
  %215 = load i32, i32* %19, align 4
  %216 = load i32, i32* %16, align 4
  %217 = sub i32 %216, %215
  store i32 %217, i32* %16, align 4
  br label %218

218:                                              ; preds = %214, %193
  %219 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %220 = load i32, i32* %11, align 4
  %221 = call i32 @check_block_count(%struct.f2fs_sb_info* %219, i32 %220, %struct.f2fs_sit_entry* %8)
  store i32 %221, i32* %15, align 4
  %222 = load i32, i32* %15, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  br label %296

225:                                              ; preds = %218
  %226 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %227 = call i32 @seg_info_from_raw_sit(%struct.seg_entry* %226, %struct.f2fs_sit_entry* %8)
  %228 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %229 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @IS_NODESEG(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %225
  %234 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %235 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %16, align 4
  %238 = add i32 %237, %236
  store i32 %238, i32* %16, align 4
  br label %239

239:                                              ; preds = %233, %225
  %240 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %241 = load i32, i32* @CP_TRIMMED_FLAG, align 4
  %242 = call i64 @is_set_ckpt_flags(%struct.f2fs_sb_info* %240, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %239
  %245 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %246 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @SIT_VBLOCK_MAP_SIZE, align 4
  %249 = call i32 @memset(i32 %247, i32 255, i32 %248)
  br label %271

250:                                              ; preds = %239
  %251 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %252 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %255 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @SIT_VBLOCK_MAP_SIZE, align 4
  %258 = call i32 @memcpy(i32 %253, i32 %256, i32 %257)
  %259 = load i32, i32* %19, align 4
  %260 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %261 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = add i32 %262, %259
  store i32 %263, i32* %261, align 4
  %264 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %265 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %268 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = sub i32 %269, %266
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %250, %244
  %272 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %273 = call i64 @__is_large_section(%struct.f2fs_sb_info* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %292

275:                                              ; preds = %271
  %276 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %277 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %280 = load i32, i32* %11, align 4
  %281 = call %struct.TYPE_2__* @get_sec_entry(%struct.f2fs_sb_info* %279, i32 %280)
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = add i32 %283, %278
  store i32 %284, i32* %282, align 4
  %285 = load i32, i32* %19, align 4
  %286 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %287 = load i32, i32* %11, align 4
  %288 = call %struct.TYPE_2__* @get_sec_entry(%struct.f2fs_sb_info* %286, i32 %287)
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = sub i32 %290, %285
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %275, %271
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %10, align 4
  %295 = add i32 %294, 1
  store i32 %295, i32* %10, align 4
  br label %173

296:                                              ; preds = %224, %187, %173
  %297 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %298 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %297, i32 0, i32 0
  %299 = call i32 @up_read(i32* %298)
  %300 = load i32, i32* %15, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %315, label %302

302:                                              ; preds = %296
  %303 = load i32, i32* %16, align 4
  %304 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %305 = call i32 @valid_node_count(%struct.f2fs_sb_info* %304)
  %306 = icmp ne i32 %303, %305
  br i1 %306, label %307, label %315

307:                                              ; preds = %302
  %308 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %309 = load i32, i32* %16, align 4
  %310 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %311 = call i32 @valid_node_count(%struct.f2fs_sb_info* %310)
  %312 = call i32 (%struct.f2fs_sb_info*, i8*, i32, ...) @f2fs_err(%struct.f2fs_sb_info* %308, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %309, i32 %311)
  %313 = load i32, i32* @EFSCORRUPTED, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %15, align 4
  br label %315

315:                                              ; preds = %307, %302, %296
  %316 = load i32, i32* %15, align 4
  store i32 %316, i32* %2, align 4
  br label %317

317:                                              ; preds = %315, %96, %73
  %318 = load i32, i32* %2, align 4
  ret i32 %318
}

declare dso_local %struct.sit_info* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @SIT_BLK_CNT(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info*, i32, i32, i32, i32) #1

declare dso_local i32 @MAIN_SEGS(%struct.f2fs_sb_info*) #1

declare dso_local %struct.page* @get_current_sit_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @SIT_ENTRY_OFFSET(%struct.sit_info*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @check_block_count(%struct.f2fs_sb_info*, i32, %struct.f2fs_sit_entry*) #1

declare dso_local i32 @seg_info_from_raw_sit(%struct.seg_entry*, %struct.f2fs_sit_entry*) #1

declare dso_local i64 @IS_NODESEG(i32) #1

declare dso_local i64 @is_set_ckpt_flags(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @__is_large_section(%struct.f2fs_sb_info*) #1

declare dso_local %struct.TYPE_2__* @get_sec_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @sits_in_cursum(%struct.f2fs_journal*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @segno_in_journal(%struct.f2fs_journal*, i32) #1

declare dso_local i32 @f2fs_err(%struct.f2fs_sb_info*, i8*, i32, ...) #1

declare dso_local i32 @sit_in_journal(%struct.f2fs_journal*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @valid_node_count(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
