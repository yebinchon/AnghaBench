; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_generic_file_buffered_read.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_generic_file_buffered_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i32, %struct.file* }
%struct.file = type { %struct.file_ra_state, %struct.address_space* }
%struct.file_ra_state = type { i32 }
%struct.address_space = type { %struct.TYPE_4__*, %struct.inode* }
%struct.TYPE_4__ = type { i32 (%struct.file*, %struct.page*)*, i32 (%struct.page*, i64, i32)* }
%struct.page = type { i32* }
%struct.inode = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iov_iter = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@IOCB_NOWAIT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@AOP_TRUNCATED_PAGE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*, i32)* @generic_file_buffered_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_file_buffered_read(%struct.kiocb* %0, %struct.iov_iter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.file_ra_state*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.page*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %25 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %24, i32 0, i32 2
  %26 = load %struct.file*, %struct.file** %25, align 8
  store %struct.file* %26, %struct.file** %8, align 8
  %27 = load %struct.file*, %struct.file** %8, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 1
  %29 = load %struct.address_space*, %struct.address_space** %28, align 8
  store %struct.address_space* %29, %struct.address_space** %9, align 8
  %30 = load %struct.address_space*, %struct.address_space** %9, align 8
  %31 = getelementptr inbounds %struct.address_space, %struct.address_space* %30, i32 0, i32 1
  %32 = load %struct.inode*, %struct.inode** %31, align 8
  store %struct.inode* %32, %struct.inode** %10, align 8
  %33 = load %struct.file*, %struct.file** %8, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  store %struct.file_ra_state* %34, %struct.file_ra_state** %11, align 8
  %35 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %36 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %35, i32 0, i32 0
  store i32* %36, i32** %12, align 8
  store i32 0, i32* %18, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %38, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %483

49:                                               ; preds = %3
  %50 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @iov_iter_truncate(%struct.iov_iter* %50, i32 %55)
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %13, align 8
  %62 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %63 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PAGE_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %15, align 8
  %68 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %69 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = and i32 %70, %72
  store i32 %73, i32* %17, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %77 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = add nsw i32 %79, %80
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* @PAGE_SHIFT, align 4
  %84 = ashr i32 %82, %83
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %14, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @PAGE_MASK, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %16, align 8
  br label %92

92:                                               ; preds = %343, %329, %49
  %93 = call i32 (...) @cond_resched()
  br label %94

94:                                               ; preds = %443, %398, %374, %92
  %95 = load i32, i32* @current, align 4
  %96 = call i64 @fatal_signal_pending(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @EINTR, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %18, align 4
  br label %449

101:                                              ; preds = %94
  %102 = load %struct.address_space*, %struct.address_space** %9, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call %struct.page* @find_get_page(%struct.address_space* %102, i64 %103)
  store %struct.page* %104, %struct.page** %19, align 8
  %105 = load %struct.page*, %struct.page** %19, align 8
  %106 = icmp ne %struct.page* %105, null
  br i1 %106, label %134, label %107

107:                                              ; preds = %101
  %108 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %109 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IOCB_NOWAIT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %446

115:                                              ; preds = %107
  %116 = load %struct.address_space*, %struct.address_space** %9, align 8
  %117 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %118 = load %struct.file*, %struct.file** %8, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %13, align 8
  %122 = sub i64 %120, %121
  %123 = call i32 @page_cache_sync_readahead(%struct.address_space* %116, %struct.file_ra_state* %117, %struct.file* %118, i64 %119, i64 %122)
  %124 = load %struct.address_space*, %struct.address_space** %9, align 8
  %125 = load i64, i64* %13, align 8
  %126 = call %struct.page* @find_get_page(%struct.address_space* %124, i64 %125)
  store %struct.page* %126, %struct.page** %19, align 8
  %127 = load %struct.page*, %struct.page** %19, align 8
  %128 = icmp eq %struct.page* %127, null
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %115
  br label %418

133:                                              ; preds = %115
  br label %134

134:                                              ; preds = %133, %101
  %135 = load %struct.page*, %struct.page** %19, align 8
  %136 = call i64 @PageReadahead(%struct.page* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load %struct.address_space*, %struct.address_space** %9, align 8
  %140 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %141 = load %struct.file*, %struct.file** %8, align 8
  %142 = load %struct.page*, %struct.page** %19, align 8
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* %13, align 8
  %146 = sub i64 %144, %145
  %147 = call i32 @page_cache_async_readahead(%struct.address_space* %139, %struct.file_ra_state* %140, %struct.file* %141, %struct.page* %142, i64 %143, i64 %146)
  br label %148

148:                                              ; preds = %138, %134
  %149 = load %struct.page*, %struct.page** %19, align 8
  %150 = call i64 @PageUptodate(%struct.page* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %222, label %152

152:                                              ; preds = %148
  %153 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %154 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @IOCB_NOWAIT, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %152
  %160 = load %struct.page*, %struct.page** %19, align 8
  %161 = call i32 @put_page(%struct.page* %160)
  br label %446

162:                                              ; preds = %152
  %163 = load %struct.page*, %struct.page** %19, align 8
  %164 = call i32 @wait_on_page_locked_killable(%struct.page* %163)
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = call i64 @unlikely(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %415

169:                                              ; preds = %162
  %170 = load %struct.page*, %struct.page** %19, align 8
  %171 = call i64 @PageUptodate(%struct.page* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  br label %223

174:                                              ; preds = %169
  %175 = load %struct.inode*, %struct.inode** %10, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @PAGE_SHIFT, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %187, label %180

180:                                              ; preds = %174
  %181 = load %struct.address_space*, %struct.address_space** %9, align 8
  %182 = getelementptr inbounds %struct.address_space, %struct.address_space* %181, i32 0, i32 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i32 (%struct.page*, i64, i32)*, i32 (%struct.page*, i64, i32)** %184, align 8
  %186 = icmp ne i32 (%struct.page*, i64, i32)* %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %180, %174
  br label %330

188:                                              ; preds = %180
  %189 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %190 = call i32 @iov_iter_is_pipe(%struct.iov_iter* %189)
  %191 = call i64 @unlikely(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %330

194:                                              ; preds = %188
  %195 = load %struct.page*, %struct.page** %19, align 8
  %196 = call i32 @trylock_page(%struct.page* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %194
  br label %330

199:                                              ; preds = %194
  %200 = load %struct.page*, %struct.page** %19, align 8
  %201 = getelementptr inbounds %struct.page, %struct.page* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %199
  br label %338

205:                                              ; preds = %199
  %206 = load %struct.address_space*, %struct.address_space** %9, align 8
  %207 = getelementptr inbounds %struct.address_space, %struct.address_space* %206, i32 0, i32 0
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i32 (%struct.page*, i64, i32)*, i32 (%struct.page*, i64, i32)** %209, align 8
  %211 = load %struct.page*, %struct.page** %19, align 8
  %212 = load i64, i64* %16, align 8
  %213 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %214 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 %210(%struct.page* %211, i64 %212, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %205
  br label %338

219:                                              ; preds = %205
  %220 = load %struct.page*, %struct.page** %19, align 8
  %221 = call i32 @unlock_page(%struct.page* %220)
  br label %222

222:                                              ; preds = %219, %148
  br label %223

223:                                              ; preds = %414, %352, %222, %173
  %224 = load %struct.inode*, %struct.inode** %10, align 8
  %225 = call i32 @i_size_read(%struct.inode* %224)
  store i32 %225, i32* %21, align 4
  %226 = load i32, i32* %21, align 4
  %227 = sub nsw i32 %226, 1
  %228 = load i32, i32* @PAGE_SHIFT, align 4
  %229 = ashr i32 %227, %228
  %230 = sext i32 %229 to i64
  store i64 %230, i64* %20, align 8
  %231 = load i32, i32* %21, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %223
  %234 = load i64, i64* %13, align 8
  %235 = load i64, i64* %20, align 8
  %236 = icmp ugt i64 %234, %235
  br label %237

237:                                              ; preds = %233, %223
  %238 = phi i1 [ true, %223 ], [ %236, %233 ]
  %239 = zext i1 %238 to i32
  %240 = call i64 @unlikely(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load %struct.page*, %struct.page** %19, align 8
  %244 = call i32 @put_page(%struct.page* %243)
  br label %449

245:                                              ; preds = %237
  %246 = load i32, i32* @PAGE_SIZE, align 4
  %247 = sext i32 %246 to i64
  store i64 %247, i64* %22, align 8
  %248 = load i64, i64* %13, align 8
  %249 = load i64, i64* %20, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %266

251:                                              ; preds = %245
  %252 = load i32, i32* %21, align 4
  %253 = sub nsw i32 %252, 1
  %254 = load i32, i32* @PAGE_MASK, align 4
  %255 = xor i32 %254, -1
  %256 = and i32 %253, %255
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  store i64 %258, i64* %22, align 8
  %259 = load i64, i64* %22, align 8
  %260 = load i64, i64* %16, align 8
  %261 = icmp ule i64 %259, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %251
  %263 = load %struct.page*, %struct.page** %19, align 8
  %264 = call i32 @put_page(%struct.page* %263)
  br label %449

265:                                              ; preds = %251
  br label %266

266:                                              ; preds = %265, %245
  %267 = load i64, i64* %22, align 8
  %268 = load i64, i64* %16, align 8
  %269 = sub i64 %267, %268
  store i64 %269, i64* %22, align 8
  %270 = load %struct.address_space*, %struct.address_space** %9, align 8
  %271 = call i64 @mapping_writably_mapped(%struct.address_space* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %266
  %274 = load %struct.page*, %struct.page** %19, align 8
  %275 = call i32 @flush_dcache_page(%struct.page* %274)
  br label %276

276:                                              ; preds = %273, %266
  %277 = load i64, i64* %15, align 8
  %278 = load i64, i64* %13, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %285, label %280

280:                                              ; preds = %276
  %281 = load i64, i64* %16, align 8
  %282 = load i32, i32* %17, align 4
  %283 = zext i32 %282 to i64
  %284 = icmp ne i64 %281, %283
  br i1 %284, label %285, label %288

285:                                              ; preds = %280, %276
  %286 = load %struct.page*, %struct.page** %19, align 8
  %287 = call i32 @mark_page_accessed(%struct.page* %286)
  br label %288

288:                                              ; preds = %285, %280
  %289 = load i64, i64* %13, align 8
  store i64 %289, i64* %15, align 8
  %290 = load %struct.page*, %struct.page** %19, align 8
  %291 = load i64, i64* %16, align 8
  %292 = load i64, i64* %22, align 8
  %293 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %294 = call i64 @copy_page_to_iter(%struct.page* %290, i64 %291, i64 %292, %struct.iov_iter* %293)
  store i64 %294, i64* %23, align 8
  %295 = load i64, i64* %23, align 8
  %296 = load i64, i64* %16, align 8
  %297 = add i64 %296, %295
  store i64 %297, i64* %16, align 8
  %298 = load i64, i64* %16, align 8
  %299 = load i32, i32* @PAGE_SHIFT, align 4
  %300 = zext i32 %299 to i64
  %301 = lshr i64 %298, %300
  %302 = load i64, i64* %13, align 8
  %303 = add i64 %302, %301
  store i64 %303, i64* %13, align 8
  %304 = load i32, i32* @PAGE_MASK, align 4
  %305 = xor i32 %304, -1
  %306 = sext i32 %305 to i64
  %307 = load i64, i64* %16, align 8
  %308 = and i64 %307, %306
  store i64 %308, i64* %16, align 8
  %309 = load i64, i64* %16, align 8
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %17, align 4
  %311 = load %struct.page*, %struct.page** %19, align 8
  %312 = call i32 @put_page(%struct.page* %311)
  %313 = load i64, i64* %23, align 8
  %314 = load i32, i32* %7, align 4
  %315 = sext i32 %314 to i64
  %316 = add i64 %315, %313
  %317 = trunc i64 %316 to i32
  store i32 %317, i32* %7, align 4
  %318 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %319 = call i32 @iov_iter_count(%struct.iov_iter* %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %322, label %321

321:                                              ; preds = %288
  br label %449

322:                                              ; preds = %288
  %323 = load i64, i64* %23, align 8
  %324 = load i64, i64* %22, align 8
  %325 = icmp ult i64 %323, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %322
  %327 = load i32, i32* @EFAULT, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %18, align 4
  br label %449

329:                                              ; preds = %322
  br label %92

330:                                              ; preds = %198, %193, %187
  %331 = load %struct.page*, %struct.page** %19, align 8
  %332 = call i32 @lock_page_killable(%struct.page* %331)
  store i32 %332, i32* %18, align 4
  %333 = load i32, i32* %18, align 4
  %334 = call i64 @unlikely(i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %330
  br label %415

337:                                              ; preds = %330
  br label %338

338:                                              ; preds = %337, %218, %204
  %339 = load %struct.page*, %struct.page** %19, align 8
  %340 = getelementptr inbounds %struct.page, %struct.page* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = icmp ne i32* %341, null
  br i1 %342, label %348, label %343

343:                                              ; preds = %338
  %344 = load %struct.page*, %struct.page** %19, align 8
  %345 = call i32 @unlock_page(%struct.page* %344)
  %346 = load %struct.page*, %struct.page** %19, align 8
  %347 = call i32 @put_page(%struct.page* %346)
  br label %92

348:                                              ; preds = %338
  %349 = load %struct.page*, %struct.page** %19, align 8
  %350 = call i64 @PageUptodate(%struct.page* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %348
  %353 = load %struct.page*, %struct.page** %19, align 8
  %354 = call i32 @unlock_page(%struct.page* %353)
  br label %223

355:                                              ; preds = %348
  br label %356

356:                                              ; preds = %445, %355
  %357 = load %struct.page*, %struct.page** %19, align 8
  %358 = call i32 @ClearPageError(%struct.page* %357)
  %359 = load %struct.address_space*, %struct.address_space** %9, align 8
  %360 = getelementptr inbounds %struct.address_space, %struct.address_space* %359, i32 0, i32 0
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 0
  %363 = load i32 (%struct.file*, %struct.page*)*, i32 (%struct.file*, %struct.page*)** %362, align 8
  %364 = load %struct.file*, %struct.file** %8, align 8
  %365 = load %struct.page*, %struct.page** %19, align 8
  %366 = call i32 %363(%struct.file* %364, %struct.page* %365)
  store i32 %366, i32* %18, align 4
  %367 = load i32, i32* %18, align 4
  %368 = call i64 @unlikely(i32 %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %378

370:                                              ; preds = %356
  %371 = load i32, i32* %18, align 4
  %372 = load i32, i32* @AOP_TRUNCATED_PAGE, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %377

374:                                              ; preds = %370
  %375 = load %struct.page*, %struct.page** %19, align 8
  %376 = call i32 @put_page(%struct.page* %375)
  store i32 0, i32* %18, align 4
  br label %94

377:                                              ; preds = %370
  br label %415

378:                                              ; preds = %356
  %379 = load %struct.page*, %struct.page** %19, align 8
  %380 = call i64 @PageUptodate(%struct.page* %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %414, label %382

382:                                              ; preds = %378
  %383 = load %struct.page*, %struct.page** %19, align 8
  %384 = call i32 @lock_page_killable(%struct.page* %383)
  store i32 %384, i32* %18, align 4
  %385 = load i32, i32* %18, align 4
  %386 = call i64 @unlikely(i32 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %382
  br label %415

389:                                              ; preds = %382
  %390 = load %struct.page*, %struct.page** %19, align 8
  %391 = call i64 @PageUptodate(%struct.page* %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %411, label %393

393:                                              ; preds = %389
  %394 = load %struct.page*, %struct.page** %19, align 8
  %395 = getelementptr inbounds %struct.page, %struct.page* %394, i32 0, i32 0
  %396 = load i32*, i32** %395, align 8
  %397 = icmp eq i32* %396, null
  br i1 %397, label %398, label %403

398:                                              ; preds = %393
  %399 = load %struct.page*, %struct.page** %19, align 8
  %400 = call i32 @unlock_page(%struct.page* %399)
  %401 = load %struct.page*, %struct.page** %19, align 8
  %402 = call i32 @put_page(%struct.page* %401)
  br label %94

403:                                              ; preds = %393
  %404 = load %struct.page*, %struct.page** %19, align 8
  %405 = call i32 @unlock_page(%struct.page* %404)
  %406 = load %struct.file*, %struct.file** %8, align 8
  %407 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %408 = call i32 @shrink_readahead_size_eio(%struct.file* %406, %struct.file_ra_state* %407)
  %409 = load i32, i32* @EIO, align 4
  %410 = sub nsw i32 0, %409
  store i32 %410, i32* %18, align 4
  br label %415

411:                                              ; preds = %389
  %412 = load %struct.page*, %struct.page** %19, align 8
  %413 = call i32 @unlock_page(%struct.page* %412)
  br label %414

414:                                              ; preds = %411, %378
  br label %223

415:                                              ; preds = %403, %388, %377, %336, %168
  %416 = load %struct.page*, %struct.page** %19, align 8
  %417 = call i32 @put_page(%struct.page* %416)
  br label %449

418:                                              ; preds = %132
  %419 = load %struct.address_space*, %struct.address_space** %9, align 8
  %420 = call %struct.page* @page_cache_alloc(%struct.address_space* %419)
  store %struct.page* %420, %struct.page** %19, align 8
  %421 = load %struct.page*, %struct.page** %19, align 8
  %422 = icmp ne %struct.page* %421, null
  br i1 %422, label %426, label %423

423:                                              ; preds = %418
  %424 = load i32, i32* @ENOMEM, align 4
  %425 = sub nsw i32 0, %424
  store i32 %425, i32* %18, align 4
  br label %449

426:                                              ; preds = %418
  %427 = load %struct.page*, %struct.page** %19, align 8
  %428 = load %struct.address_space*, %struct.address_space** %9, align 8
  %429 = load i64, i64* %13, align 8
  %430 = load %struct.address_space*, %struct.address_space** %9, align 8
  %431 = load i32, i32* @GFP_KERNEL, align 4
  %432 = call i32 @mapping_gfp_constraint(%struct.address_space* %430, i32 %431)
  %433 = call i32 @add_to_page_cache_lru(%struct.page* %427, %struct.address_space* %428, i64 %429, i32 %432)
  store i32 %433, i32* %18, align 4
  %434 = load i32, i32* %18, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %445

436:                                              ; preds = %426
  %437 = load %struct.page*, %struct.page** %19, align 8
  %438 = call i32 @put_page(%struct.page* %437)
  %439 = load i32, i32* %18, align 4
  %440 = load i32, i32* @EEXIST, align 4
  %441 = sub nsw i32 0, %440
  %442 = icmp eq i32 %439, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %436
  store i32 0, i32* %18, align 4
  br label %94

444:                                              ; preds = %436
  br label %449

445:                                              ; preds = %426
  br label %356

446:                                              ; preds = %159, %114
  %447 = load i32, i32* @EAGAIN, align 4
  %448 = sub nsw i32 0, %447
  store i32 %448, i32* %18, align 4
  br label %449

449:                                              ; preds = %446, %444, %423, %415, %326, %321, %262, %242, %98
  %450 = load i64, i64* %15, align 8
  %451 = trunc i64 %450 to i32
  %452 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %453 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %452, i32 0, i32 0
  store i32 %451, i32* %453, align 4
  %454 = load i32, i32* @PAGE_SHIFT, align 4
  %455 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %456 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = shl i32 %457, %454
  store i32 %458, i32* %456, align 4
  %459 = load i32, i32* %17, align 4
  %460 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %461 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = or i32 %462, %459
  store i32 %463, i32* %461, align 4
  %464 = load i64, i64* %13, align 8
  %465 = trunc i64 %464 to i32
  %466 = load i32, i32* @PAGE_SHIFT, align 4
  %467 = shl i32 %465, %466
  %468 = sext i32 %467 to i64
  %469 = load i64, i64* %16, align 8
  %470 = add i64 %468, %469
  %471 = trunc i64 %470 to i32
  %472 = load i32*, i32** %12, align 8
  store i32 %471, i32* %472, align 4
  %473 = load %struct.file*, %struct.file** %8, align 8
  %474 = call i32 @file_accessed(%struct.file* %473)
  %475 = load i32, i32* %7, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %479

477:                                              ; preds = %449
  %478 = load i32, i32* %7, align 4
  br label %481

479:                                              ; preds = %449
  %480 = load i32, i32* %18, align 4
  br label %481

481:                                              ; preds = %479, %477
  %482 = phi i32 [ %478, %477 ], [ %480, %479 ]
  store i32 %482, i32* %4, align 4
  br label %483

483:                                              ; preds = %481, %48
  %484 = load i32, i32* %4, align 4
  ret i32 %484
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iov_iter_truncate(%struct.iov_iter*, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local %struct.page* @find_get_page(%struct.address_space*, i64) #1

declare dso_local i32 @page_cache_sync_readahead(%struct.address_space*, %struct.file_ra_state*, %struct.file*, i64, i64) #1

declare dso_local i64 @PageReadahead(%struct.page*) #1

declare dso_local i32 @page_cache_async_readahead(%struct.address_space*, %struct.file_ra_state*, %struct.file*, %struct.page*, i64, i64) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @wait_on_page_locked_killable(%struct.page*) #1

declare dso_local i32 @iov_iter_is_pipe(%struct.iov_iter*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @mapping_writably_mapped(%struct.address_space*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i64 @copy_page_to_iter(%struct.page*, i64, i64, %struct.iov_iter*) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @lock_page_killable(%struct.page*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @shrink_readahead_size_eio(%struct.file*, %struct.file_ra_state*) #1

declare dso_local %struct.page* @page_cache_alloc(%struct.address_space*) #1

declare dso_local i32 @add_to_page_cache_lru(%struct.page*, %struct.address_space*, i64, i32) #1

declare dso_local i32 @mapping_gfp_constraint(%struct.address_space*, i32) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
