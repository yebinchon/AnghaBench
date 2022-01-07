; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_buffer_head_io.c_ocfs2_read_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_buffer_head_io.c_ocfs2_read_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32, i64 }
%struct.super_block = type opaque

@OCFS2_BH_READAHEAD = common dso_local global i32 0, align 4
@OCFS2_BH_IGNORE_CACHE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"asked to read %d blocks!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_read_blocks(%struct.ocfs2_caching_info* %0, i64 %1, i32 %2, %struct.buffer_head** %3, i32 %4, i32 (%struct.super_block*, %struct.buffer_head*)* %5) #0 {
  %7 = alloca %struct.ocfs2_caching_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (%struct.super_block*, %struct.buffer_head*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.super_block*, align 8
  %18 = alloca i32, align 4
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 (%struct.super_block*, %struct.buffer_head*)* %5, i32 (%struct.super_block*, %struct.buffer_head*)** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %20 = call %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info* %19)
  store %struct.super_block* %20, %struct.super_block** %17, align 8
  store i32 0, i32* %18, align 4
  %21 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @trace_ocfs2_read_blocks_begin(%struct.ocfs2_caching_info* %21, i64 %22, i32 %23, i32 %24)
  %26 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %27 = icmp ne %struct.ocfs2_caching_info* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @OCFS2_BH_READAHEAD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %6
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %35, %6
  %41 = phi i1 [ false, %6 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %45 = icmp eq %struct.buffer_head** %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %315

51:                                               ; preds = %40
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* @ML_ERROR, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 @mlog(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %315

63:                                               ; preds = %51
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %13, align 4
  br label %315

67:                                               ; preds = %63
  %68 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %69 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %68, i64 0
  %70 = load %struct.buffer_head*, %struct.buffer_head** %69, align 8
  %71 = icmp eq %struct.buffer_head* %70, null
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %18, align 4
  %73 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %74 = call i32 @ocfs2_metadata_cache_io_lock(%struct.ocfs2_caching_info* %73)
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %209, %67
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %212

79:                                               ; preds = %75
  %80 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %80, i64 %82
  %84 = load %struct.buffer_head*, %struct.buffer_head** %83, align 8
  %85 = icmp eq %struct.buffer_head* %84, null
  br i1 %85, label %86, label %110

86:                                               ; preds = %79
  %87 = load %struct.super_block*, %struct.super_block** %17, align 8
  %88 = load i64, i64* %8, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %8, align 8
  %90 = trunc i64 %88 to i32
  %91 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %87, i32 %90)
  %92 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %92, i64 %94
  store %struct.buffer_head* %91, %struct.buffer_head** %95, align 8
  %96 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %96, i64 %98
  %100 = load %struct.buffer_head*, %struct.buffer_head** %99, align 8
  %101 = icmp eq %struct.buffer_head* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %86
  %103 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %104 = call i32 @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info* %103)
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @mlog_errno(i32 %107)
  br label %212

109:                                              ; preds = %86
  br label %110

110:                                              ; preds = %109, %79
  %111 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %111, i64 %113
  %115 = load %struct.buffer_head*, %struct.buffer_head** %114, align 8
  store %struct.buffer_head* %115, %struct.buffer_head** %16, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %110
  %122 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %124 = call i64 @ocfs2_buffer_uptodate(%struct.ocfs2_caching_info* %122, %struct.buffer_head* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %121
  %127 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %128 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %131 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %130)
  %132 = call i32 @trace_ocfs2_read_blocks_from_disk(i64 %129, i64 %131)
  store i32 1, i32* %15, align 4
  br label %133

133:                                              ; preds = %126, %121, %110
  %134 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %135 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %139 = call i32 @buffer_jbd(%struct.buffer_head* %138)
  %140 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %141 = call i64 @buffer_dirty(%struct.buffer_head* %140)
  %142 = call i32 @trace_ocfs2_read_blocks_bh(i64 %136, i32 %137, i32 %139, i64 %141)
  %143 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %144 = call i32 @buffer_jbd(%struct.buffer_head* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %133
  br label %209

147:                                              ; preds = %133
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %208

150:                                              ; preds = %147
  %151 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %152 = call i64 @buffer_dirty(%struct.buffer_head* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %209

155:                                              ; preds = %150
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @OCFS2_BH_READAHEAD, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %162 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %163 = call i64 @ocfs2_buffer_read_ahead(%struct.ocfs2_caching_info* %161, %struct.buffer_head* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %209

166:                                              ; preds = %160, %155
  %167 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %168 = call i32 @lock_buffer(%struct.buffer_head* %167)
  %169 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %170 = call i32 @buffer_jbd(%struct.buffer_head* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %174 = call i32 @unlock_buffer(%struct.buffer_head* %173)
  br label %209

175:                                              ; preds = %166
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %193, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @OCFS2_BH_READAHEAD, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %180
  %186 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %187 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %188 = call i64 @ocfs2_buffer_uptodate(%struct.ocfs2_caching_info* %186, %struct.buffer_head* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %192 = call i32 @unlock_buffer(%struct.buffer_head* %191)
  br label %209

193:                                              ; preds = %185, %180, %175
  %194 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %195 = call i32 @get_bh(%struct.buffer_head* %194)
  %196 = load i32 (%struct.super_block*, %struct.buffer_head*)*, i32 (%struct.super_block*, %struct.buffer_head*)** %12, align 8
  %197 = icmp ne i32 (%struct.super_block*, %struct.buffer_head*)* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %200 = call i32 @set_buffer_needs_validate(%struct.buffer_head* %199)
  br label %201

201:                                              ; preds = %198, %193
  %202 = load i32, i32* @end_buffer_read_sync, align 4
  %203 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %204 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* @REQ_OP_READ, align 4
  %206 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %207 = call i32 @submit_bh(i32 %205, i32 0, %struct.buffer_head* %206)
  br label %209

208:                                              ; preds = %147
  br label %209

209:                                              ; preds = %208, %201, %190, %172, %165, %154, %146
  %210 = load i32, i32* %14, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %14, align 4
  br label %75

212:                                              ; preds = %102, %75
  br label %213

213:                                              ; preds = %297, %276, %212
  %214 = load i32, i32* %9, align 4
  %215 = sub nsw i32 %214, 1
  store i32 %215, i32* %14, align 4
  br label %216

216:                                              ; preds = %304, %213
  %217 = load i32, i32* %14, align 4
  %218 = icmp sge i32 %217, 0
  br i1 %218, label %219, label %307

219:                                              ; preds = %216
  %220 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %220, i64 %222
  %224 = load %struct.buffer_head*, %struct.buffer_head** %223, align 8
  store %struct.buffer_head* %224, %struct.buffer_head** %16, align 8
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* @OCFS2_BH_READAHEAD, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %300, label %229

229:                                              ; preds = %219
  %230 = load i32, i32* %13, align 4
  %231 = call i64 @unlikely(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %265

233:                                              ; preds = %229
  %234 = load i32, i32* %18, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %253

236:                                              ; preds = %233
  %237 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %238 = icmp ne %struct.buffer_head* %237, null
  br i1 %238, label %239, label %253

239:                                              ; preds = %236
  %240 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %241 = call i32 @buffer_jbd(%struct.buffer_head* %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %239
  %244 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %245 = call i32 @wait_on_buffer(%struct.buffer_head* %244)
  br label %246

246:                                              ; preds = %243, %239
  %247 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %248 = call i32 @put_bh(%struct.buffer_head* %247)
  %249 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %250 = load i32, i32* %14, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %249, i64 %251
  store %struct.buffer_head* null, %struct.buffer_head** %252, align 8
  br label %264

253:                                              ; preds = %236, %233
  %254 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %255 = icmp ne %struct.buffer_head* %254, null
  br i1 %255, label %256, label %263

256:                                              ; preds = %253
  %257 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %258 = call i64 @buffer_uptodate(%struct.buffer_head* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %262 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %261)
  br label %263

263:                                              ; preds = %260, %256, %253
  br label %264

264:                                              ; preds = %263, %246
  br label %304

265:                                              ; preds = %229
  %266 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %267 = call i32 @buffer_jbd(%struct.buffer_head* %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %265
  %270 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %271 = call i32 @wait_on_buffer(%struct.buffer_head* %270)
  br label %272

272:                                              ; preds = %269, %265
  %273 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %274 = call i64 @buffer_uptodate(%struct.buffer_head* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %281, label %276

276:                                              ; preds = %272
  %277 = load i32, i32* @EIO, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %13, align 4
  %279 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %280 = call i32 @clear_buffer_needs_validate(%struct.buffer_head* %279)
  br label %213

281:                                              ; preds = %272
  %282 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %283 = call i64 @buffer_needs_validate(%struct.buffer_head* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %299

285:                                              ; preds = %281
  %286 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %287 = call i32 @buffer_jbd(%struct.buffer_head* %286)
  %288 = call i32 @BUG_ON(i32 %287)
  %289 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %290 = call i32 @clear_buffer_needs_validate(%struct.buffer_head* %289)
  %291 = load i32 (%struct.super_block*, %struct.buffer_head*)*, i32 (%struct.super_block*, %struct.buffer_head*)** %12, align 8
  %292 = load %struct.super_block*, %struct.super_block** %17, align 8
  %293 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %294 = call i32 %291(%struct.super_block* %292, %struct.buffer_head* %293)
  store i32 %294, i32* %13, align 4
  %295 = load i32, i32* %13, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %285
  br label %213

298:                                              ; preds = %285
  br label %299

299:                                              ; preds = %298, %281
  br label %300

300:                                              ; preds = %299, %219
  %301 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %302 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %303 = call i32 @ocfs2_set_buffer_uptodate(%struct.ocfs2_caching_info* %301, %struct.buffer_head* %302)
  br label %304

304:                                              ; preds = %300, %264
  %305 = load i32, i32* %14, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %14, align 4
  br label %216

307:                                              ; preds = %216
  %308 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %309 = call i32 @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info* %308)
  %310 = load i64, i64* %8, align 8
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* %11, align 4
  %313 = load i32, i32* %15, align 4
  %314 = call i32 @trace_ocfs2_read_blocks_end(i64 %310, i32 %311, i32 %312, i32 %313)
  br label %315

315:                                              ; preds = %307, %66, %54, %46
  %316 = load i32, i32* %13, align 4
  ret i32 %316
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @trace_ocfs2_read_blocks_begin(%struct.ocfs2_caching_info*, i64, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @ocfs2_metadata_cache_io_lock(%struct.ocfs2_caching_info*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info*) #1

declare dso_local i64 @ocfs2_buffer_uptodate(%struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @trace_ocfs2_read_blocks_from_disk(i64, i64) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @trace_ocfs2_read_blocks_bh(i64, i32, i32, i64) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @ocfs2_buffer_read_ahead(%struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_needs_validate(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_needs_validate(%struct.buffer_head*) #1

declare dso_local i64 @buffer_needs_validate(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_set_buffer_uptodate(%struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @trace_ocfs2_read_blocks_end(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
