; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_get_victim_by_default.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_get_victim_by_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32*, i32, i32 }
%struct.dirty_seglist_info = type { i32, i32 }
%struct.sit_info = type { i32*, i32 }
%struct.victim_sel_policy = type { i8, i32, i64, i32, i64, i32, i32, i32 }

@NULL_SEGNO = common dso_local global i32 0, align 4
@LFS = common dso_local global i8 0, align 1
@BG_GC = common dso_local global i64 0, align 8
@FG_GC = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@SSR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32*, i32, i32, i8)* @get_victim_by_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_victim_by_default(%struct.f2fs_sb_info* %0, i32* %1, i32 %2, i32 %3, i8 signext %4) #0 {
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.dirty_seglist_info*, align 8
  %12 = alloca %struct.sit_info*, align 8
  %13 = alloca %struct.victim_sel_policy, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8 %4, i8* %10, align 1
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %21 = call %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info* %20)
  store %struct.dirty_seglist_info* %21, %struct.dirty_seglist_info** %11, align 8
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %23 = call %struct.sit_info* @SIT_I(%struct.f2fs_sb_info* %22)
  store %struct.sit_info* %23, %struct.sit_info** %12, align 8
  store i32 0, i32* %17, align 4
  %24 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %11, align 8
  %25 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %28 = call i32 @MAIN_SECS(%struct.f2fs_sb_info* %27)
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %30 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul i32 %28, %31
  store i32 %32, i32* %16, align 4
  %33 = load i8, i8* %10, align 1
  %34 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 0
  store i8 %33, i8* %34, align 8
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @select_policy(%struct.f2fs_sb_info* %35, i32 %36, i32 %37, %struct.victim_sel_policy* %13)
  %39 = load i32, i32* @NULL_SEGNO, align 4
  %40 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %42 = call i64 @get_max_cost(%struct.f2fs_sb_info* %41, %struct.victim_sel_policy* %13)
  %43 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 2
  store i64 %42, i64* %43, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NULL_SEGNO, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %5
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @get_valid_blocks(%struct.f2fs_sb_info* %49, i32 %51, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %56 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @GET_SEC_FROM_SEG(%struct.f2fs_sb_info* %56, i32 %58)
  %60 = call i64 @sec_usage_check(%struct.f2fs_sb_info* %55, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %54
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %54, %48
  br label %396

67:                                               ; preds = %5
  %68 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %396

72:                                               ; preds = %67
  %73 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %74 = call i64 @__is_large_section(%struct.f2fs_sb_info* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %143

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 0
  %78 = load i8, i8* %77, align 8
  %79 = sext i8 %78 to i32
  %80 = load i8, i8* @LFS, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %143

83:                                               ; preds = %76
  %84 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %85 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @BG_GC, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NULL_SEGNO, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %83
  %93 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %94 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @BG_GC, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  %100 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @NULL_SEGNO, align 4
  %104 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %105 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @BG_GC, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 %103, i32* %108, align 4
  br label %368

109:                                              ; preds = %83
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @FG_GC, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %142

113:                                              ; preds = %109
  %114 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %115 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* @FG_GC, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @NULL_SEGNO, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %142

123:                                              ; preds = %113
  %124 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %125 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* @FG_GC, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 1
  store i32 %130, i32* %131, align 4
  %132 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %7, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* @NULL_SEGNO, align 4
  %136 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %137 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @FG_GC, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %135, i32* %141, align 4
  br label %368

142:                                              ; preds = %113, %109
  br label %143

143:                                              ; preds = %142, %76, %72
  %144 = load %struct.sit_info*, %struct.sit_info** %12, align 8
  %145 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %15, align 4
  %151 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 0
  %152 = load i8, i8* %151, align 8
  %153 = sext i8 %152 to i32
  %154 = load i8, i8* @LFS, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %143
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @FG_GC, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %157
  %162 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %163 = call i32 @check_bg_victims(%struct.f2fs_sb_info* %162)
  %164 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 1
  store i32 %163, i32* %164, align 4
  %165 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @NULL_SEGNO, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %358

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170, %157, %143
  br label %172

172:                                              ; preds = %171, %191, %351
  %173 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %16, align 4
  %176 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @find_next_bit(i32 %174, i32 %175, i32 %177)
  store i32 %178, i32* %19, align 4
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %16, align 4
  %181 = icmp uge i32 %179, %180
  br i1 %181, label %182, label %207

182:                                              ; preds = %172
  %183 = load %struct.sit_info*, %struct.sit_info** %12, align 8
  %184 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %206

191:                                              ; preds = %182
  %192 = load %struct.sit_info*, %struct.sit_info** %12, align 8
  %193 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %16, align 4
  %199 = load %struct.sit_info*, %struct.sit_info** %12, align 8
  %200 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 0, i32* %204, align 4
  %205 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 5
  store i32 0, i32* %205, align 8
  br label %172

206:                                              ; preds = %182
  br label %352

207:                                              ; preds = %172
  %208 = load i32, i32* %19, align 4
  %209 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = add i32 %208, %210
  %212 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 5
  store i32 %211, i32* %212, align 8
  %213 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 6
  %214 = load i32, i32* %213, align 4
  %215 = icmp ugt i32 %214, 1
  br i1 %215, label %216, label %238

216:                                              ; preds = %207
  %217 = load i32, i32* %19, align 4
  %218 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 6
  %219 = load i32, i32* %218, align 4
  %220 = urem i32 %217, %219
  %221 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = sub i32 %222, %220
  store i32 %223, i32* %221, align 8
  %224 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 7
  %225 = load i32, i32* %224, align 8
  %226 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 5
  %227 = load i32, i32* %226, align 8
  %228 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 6
  %229 = load i32, i32* %228, align 4
  %230 = sub i32 %227, %229
  %231 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 6
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @count_bits(i32 %225, i32 %230, i32 %232)
  %234 = load i32, i32* %17, align 4
  %235 = zext i32 %234 to i64
  %236 = add nsw i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %17, align 4
  br label %241

238:                                              ; preds = %207
  %239 = load i32, i32* %17, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* %17, align 4
  br label %241

241:                                              ; preds = %238, %216
  %242 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %243 = load i32, i32* %19, align 4
  %244 = call i32 @GET_SEC_FROM_SEG(%struct.f2fs_sb_info* %242, i32 %243)
  store i32 %244, i32* %14, align 4
  %245 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %246 = load i32, i32* %14, align 4
  %247 = call i64 @sec_usage_check(%struct.f2fs_sb_info* %245, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %241
  br label %300

250:                                              ; preds = %241
  %251 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %252 = load i32, i32* @SBI_CP_DISABLED, align 4
  %253 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %251, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %267

255:                                              ; preds = %250
  %256 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %257 = load i32, i32* %19, align 4
  %258 = call i64 @get_ckpt_valid_blocks(%struct.f2fs_sb_info* %256, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 0
  %262 = load i8, i8* %261, align 8
  %263 = sext i8 %262 to i32
  %264 = load i8, i8* @SSR, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp ne i32 %263, %265
  br label %267

267:                                              ; preds = %260, %255, %250
  %268 = phi i1 [ false, %255 ], [ false, %250 ], [ %266, %260 ]
  %269 = zext i1 %268 to i32
  %270 = call i64 @unlikely(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %267
  br label %300

273:                                              ; preds = %267
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = load i64, i64* @BG_GC, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %286

278:                                              ; preds = %273
  %279 = load i32, i32* %14, align 4
  %280 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %11, align 8
  %281 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i64 @test_bit(i32 %279, i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %278
  br label %300

286:                                              ; preds = %278, %273
  %287 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %288 = load i32, i32* %19, align 4
  %289 = call i64 @get_gc_cost(%struct.f2fs_sb_info* %287, i32 %288, %struct.victim_sel_policy* %13)
  store i64 %289, i64* %18, align 8
  %290 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* %18, align 8
  %293 = icmp ugt i64 %291, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %286
  %295 = load i32, i32* %19, align 4
  %296 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 1
  store i32 %295, i32* %296, align 4
  %297 = load i64, i64* %18, align 8
  %298 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 2
  store i64 %297, i64* %298, align 8
  br label %299

299:                                              ; preds = %294, %286
  br label %300

300:                                              ; preds = %299, %285, %272, %249
  %301 = load i32, i32* %17, align 4
  %302 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = icmp uge i32 %301, %303
  br i1 %304, label %305, label %351

305:                                              ; preds = %300
  %306 = load %struct.sit_info*, %struct.sit_info** %12, align 8
  %307 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %327, label %314

314:                                              ; preds = %305
  %315 = load i32, i32* %19, align 4
  %316 = load i32, i32* %15, align 4
  %317 = icmp ule i32 %315, %316
  br i1 %317, label %318, label %327

318:                                              ; preds = %314
  %319 = load i32, i32* %15, align 4
  %320 = add i32 %319, 1
  %321 = load %struct.sit_info*, %struct.sit_info** %12, align 8
  %322 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 4
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  store i32 %320, i32* %326, align 4
  br label %336

327:                                              ; preds = %314, %305
  %328 = load i32, i32* %19, align 4
  %329 = add i32 %328, 1
  %330 = load %struct.sit_info*, %struct.sit_info** %12, align 8
  %331 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %330, i32 0, i32 0
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 4
  %334 = load i64, i64* %333, align 8
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  store i32 %329, i32* %335, align 4
  br label %336

336:                                              ; preds = %327, %318
  %337 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %338 = call i32 @MAIN_SECS(%struct.f2fs_sb_info* %337)
  %339 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %340 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = mul i32 %338, %341
  %343 = load %struct.sit_info*, %struct.sit_info** %12, align 8
  %344 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %343, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 4
  %347 = load i64, i64* %346, align 8
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = urem i32 %349, %342
  store i32 %350, i32* %348, align 4
  br label %352

351:                                              ; preds = %300
  br label %172

352:                                              ; preds = %336, %206
  %353 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @NULL_SEGNO, align 4
  %356 = icmp ne i32 %354, %355
  br i1 %356, label %357, label %395

357:                                              ; preds = %352
  br label %358

358:                                              ; preds = %357, %169
  %359 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 6
  %362 = load i32, i32* %361, align 4
  %363 = udiv i32 %360, %362
  %364 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 6
  %365 = load i32, i32* %364, align 4
  %366 = mul i32 %363, %365
  %367 = load i32*, i32** %7, align 8
  store i32 %366, i32* %367, align 4
  br label %368

368:                                              ; preds = %358, %123, %92
  %369 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 0
  %370 = load i8, i8* %369, align 8
  %371 = sext i8 %370 to i32
  %372 = load i8, i8* @LFS, align 1
  %373 = sext i8 %372 to i32
  %374 = icmp eq i32 %371, %373
  br i1 %374, label %375, label %394

375:                                              ; preds = %368
  %376 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %377 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @GET_SEC_FROM_SEG(%struct.f2fs_sb_info* %376, i32 %378)
  store i32 %379, i32* %14, align 4
  %380 = load i32, i32* %8, align 4
  %381 = load i32, i32* @FG_GC, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %387

383:                                              ; preds = %375
  %384 = load i32, i32* %14, align 4
  %385 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %386 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %385, i32 0, i32 2
  store i32 %384, i32* %386, align 8
  br label %393

387:                                              ; preds = %375
  %388 = load i32, i32* %14, align 4
  %389 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %11, align 8
  %390 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @set_bit(i32 %388, i32 %391)
  br label %393

393:                                              ; preds = %387, %383
  br label %394

394:                                              ; preds = %393, %368
  br label %395

395:                                              ; preds = %394, %352
  br label %396

396:                                              ; preds = %395, %71, %66
  %397 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @NULL_SEGNO, align 4
  %400 = icmp ne i32 %398, %399
  br i1 %400, label %401, label %415

401:                                              ; preds = %396
  %402 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %403 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* %9, align 4
  %406 = load i32, i32* %8, align 4
  %407 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %408 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %411 = call i32 @prefree_segments(%struct.f2fs_sb_info* %410)
  %412 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %413 = call i32 @free_segments(%struct.f2fs_sb_info* %412)
  %414 = call i32 @trace_f2fs_get_victim(i32 %404, i32 %405, i32 %406, %struct.victim_sel_policy* %13, i32 %409, i32 %411, i32 %413)
  br label %415

415:                                              ; preds = %401, %396
  %416 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %11, align 8
  %417 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %416, i32 0, i32 0
  %418 = call i32 @mutex_unlock(i32* %417)
  %419 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %13, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @NULL_SEGNO, align 4
  %422 = icmp eq i32 %420, %421
  %423 = zext i1 %422 to i64
  %424 = select i1 %422, i32 0, i32 1
  ret i32 %424
}

declare dso_local %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.sit_info* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @MAIN_SECS(%struct.f2fs_sb_info*) #1

declare dso_local i32 @select_policy(%struct.f2fs_sb_info*, i32, i32, %struct.victim_sel_policy*) #1

declare dso_local i64 @get_max_cost(%struct.f2fs_sb_info*, %struct.victim_sel_policy*) #1

declare dso_local i64 @get_valid_blocks(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i64 @sec_usage_check(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @GET_SEC_FROM_SEG(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @__is_large_section(%struct.f2fs_sb_info*) #1

declare dso_local i32 @check_bg_victims(%struct.f2fs_sb_info*) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i64 @count_bits(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @get_ckpt_valid_blocks(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @get_gc_cost(%struct.f2fs_sb_info*, i32, %struct.victim_sel_policy*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @trace_f2fs_get_victim(i32, i32, i32, %struct.victim_sel_policy*, i32, i32, i32) #1

declare dso_local i32 @prefree_segments(%struct.f2fs_sb_info*) #1

declare dso_local i32 @free_segments(%struct.f2fs_sb_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
