; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_direct-io.c_do_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_direct-io.c_do_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i64, i32, i32 }
%struct.dio_submit = type { i32, i32, i64, i64, i32, i64, i32, i64, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@REQ_OP_WRITE = common dso_local global i64 0, align 8
@ENOTBLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio*, %struct.dio_submit*, %struct.buffer_head*)* @do_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_direct_IO(%struct.dio* %0, %struct.dio_submit* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dio*, align 8
  %6 = alloca %struct.dio_submit*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.dio* %0, %struct.dio** %5, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  %20 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %21 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %25 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %23, %26
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %359, %3
  %29 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %30 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %33 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %362

36:                                               ; preds = %28
  %37 = load %struct.dio*, %struct.dio** %5, align 8
  %38 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %39 = call %struct.page* @dio_get_page(%struct.dio* %37, %struct.dio_submit* %38)
  store %struct.page* %39, %struct.page** %11, align 8
  %40 = load %struct.page*, %struct.page** %11, align 8
  %41 = call i64 @IS_ERR(%struct.page* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.page*, %struct.page** %11, align 8
  %45 = call i32 @PTR_ERR(%struct.page* %44)
  store i32 %45, i32* %10, align 4
  br label %363

46:                                               ; preds = %36
  %47 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %48 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %56

52:                                               ; preds = %46
  %53 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %54 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  br label %56

56:                                               ; preds = %52, %51
  %57 = phi i64 [ 0, %51 ], [ %55, %52 ]
  store i64 %57, i64* %12, align 8
  %58 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %59 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %62 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = icmp eq i32 %60, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %68 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  br label %72

70:                                               ; preds = %56
  %71 = load i64, i64* @PAGE_SIZE, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi i64 [ %69, %66 ], [ %71, %70 ]
  store i64 %73, i64* %13, align 8
  %74 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %75 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %358, %72
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %13, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %359

82:                                               ; preds = %78
  %83 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %84 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %172

87:                                               ; preds = %82
  %88 = load %struct.dio*, %struct.dio** %5, align 8
  %89 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %90 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %91 = call i32 @get_more_blocks(%struct.dio* %88, %struct.dio_submit* %89, %struct.buffer_head* %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load %struct.page*, %struct.page** %11, align 8
  %96 = call i32 @put_page(%struct.page* %95)
  br label %363

97:                                               ; preds = %87
  %98 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %99 = call i32 @buffer_mapped(%struct.buffer_head* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  br label %173

102:                                              ; preds = %97
  %103 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %104 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = lshr i32 %105, %106
  %108 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %109 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %111 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %114 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %112, %115
  %117 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %118 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 4
  %119 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %120 = call i64 @buffer_new(%struct.buffer_head* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %102
  %123 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %124 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %127 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %130 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %9, align 4
  %133 = lshr i32 %131, %132
  %134 = call i32 @clean_bdev_aliases(i32 %125, i32 %128, i32 %133)
  br label %135

135:                                              ; preds = %122, %102
  %136 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %137 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  br label %173

141:                                              ; preds = %135
  %142 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %143 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 1, %144
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %17, align 8
  %148 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %149 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %17, align 8
  %152 = and i64 %150, %151
  store i64 %152, i64* %18, align 8
  %153 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %154 = call i64 @buffer_new(%struct.buffer_head* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %141
  %157 = load i64, i64* %18, align 8
  %158 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %159 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %158, i32 0, i32 9
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = add i64 %161, %157
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %159, align 4
  br label %164

164:                                              ; preds = %156, %141
  %165 = load i64, i64* %18, align 8
  %166 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %167 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 8
  %169 = zext i32 %168 to i64
  %170 = sub i64 %169, %165
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %167, align 8
  br label %172

172:                                              ; preds = %164, %82
  br label %173

173:                                              ; preds = %172, %140, %101
  %174 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %175 = call i32 @buffer_mapped(%struct.buffer_head* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %228, label %177

177:                                              ; preds = %173
  %178 = load %struct.dio*, %struct.dio** %5, align 8
  %179 = getelementptr inbounds %struct.dio, %struct.dio* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @REQ_OP_WRITE, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load %struct.page*, %struct.page** %11, align 8
  %185 = call i32 @put_page(%struct.page* %184)
  %186 = load i32, i32* @ENOTBLK, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %4, align 4
  br label %365

188:                                              ; preds = %177
  %189 = load %struct.dio*, %struct.dio** %5, align 8
  %190 = getelementptr inbounds %struct.dio, %struct.dio* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @i_size_read(i32 %191)
  %193 = load i32, i32* %8, align 4
  %194 = shl i32 1, %193
  %195 = call i64 @ALIGN(i32 %192, i32 %194)
  store i64 %195, i64* %19, align 8
  %196 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %197 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %19, align 8
  %200 = load i32, i32* %8, align 4
  %201 = zext i32 %200 to i64
  %202 = ashr i64 %199, %201
  %203 = icmp uge i64 %198, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %188
  %205 = load %struct.page*, %struct.page** %11, align 8
  %206 = call i32 @put_page(%struct.page* %205)
  br label %363

207:                                              ; preds = %188
  %208 = load %struct.page*, %struct.page** %11, align 8
  %209 = load i64, i64* %12, align 8
  %210 = load i32, i32* %8, align 4
  %211 = shl i32 1, %210
  %212 = call i32 @zero_user(%struct.page* %208, i64 %209, i32 %211)
  %213 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %214 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %214, align 8
  %217 = load i32, i32* %8, align 4
  %218 = shl i32 1, %217
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* %12, align 8
  %221 = add i64 %220, %219
  store i64 %221, i64* %12, align 8
  %222 = load i32, i32* %8, align 4
  %223 = shl i32 1, %222
  %224 = load %struct.dio*, %struct.dio** %5, align 8
  %225 = getelementptr inbounds %struct.dio, %struct.dio* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, %223
  store i32 %227, i32* %225, align 8
  br label %340

228:                                              ; preds = %173
  %229 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %230 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %235 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %234, i32 0, i32 11
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  br label %239

239:                                              ; preds = %233, %228
  %240 = phi i1 [ false, %228 ], [ %238, %233 ]
  %241 = zext i1 %240 to i32
  %242 = call i64 @unlikely(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load %struct.dio*, %struct.dio** %5, align 8
  %246 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %247 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %248 = call i32 @dio_zero_block(%struct.dio* %245, %struct.dio_submit* %246, i32 0, %struct.buffer_head* %247)
  br label %249

249:                                              ; preds = %244, %239
  %250 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %251 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %250, i32 0, i32 8
  %252 = load i32, i32* %251, align 8
  store i32 %252, i32* %15, align 4
  %253 = load i64, i64* %13, align 8
  %254 = load i64, i64* %12, align 8
  %255 = sub i64 %253, %254
  %256 = load i32, i32* %8, align 4
  %257 = zext i32 %256 to i64
  %258 = lshr i64 %255, %257
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %16, align 4
  %260 = load i32, i32* %15, align 4
  %261 = load i32, i32* %16, align 4
  %262 = icmp ugt i32 %260, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %249
  %264 = load i32, i32* %16, align 4
  store i32 %264, i32* %15, align 4
  br label %265

265:                                              ; preds = %263, %249
  %266 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %267 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %270 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = sub i64 %268, %271
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %16, align 4
  %274 = load i32, i32* %15, align 4
  %275 = load i32, i32* %16, align 4
  %276 = icmp ugt i32 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %265
  %278 = load i32, i32* %16, align 4
  store i32 %278, i32* %15, align 4
  br label %279

279:                                              ; preds = %277, %265
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* %8, align 4
  %282 = shl i32 %280, %281
  store i32 %282, i32* %14, align 4
  %283 = load i32, i32* %14, align 4
  %284 = icmp eq i32 %283, 0
  %285 = zext i1 %284 to i32
  %286 = call i32 @BUG_ON(i32 %285)
  %287 = load i32, i32* %15, align 4
  %288 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %289 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %288, i32 0, i32 8
  %290 = load i32, i32* %289, align 8
  %291 = icmp eq i32 %287, %290
  br i1 %291, label %292, label %297

292:                                              ; preds = %279
  %293 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %294 = call i32 @buffer_boundary(%struct.buffer_head* %293)
  %295 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %296 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %295, i32 0, i32 10
  store i32 %294, i32* %296, align 8
  br label %297

297:                                              ; preds = %292, %279
  %298 = load %struct.dio*, %struct.dio** %5, align 8
  %299 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %300 = load %struct.page*, %struct.page** %11, align 8
  %301 = load i64, i64* %12, align 8
  %302 = load i32, i32* %14, align 4
  %303 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %304 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %303, i32 0, i32 9
  %305 = load i32, i32* %304, align 4
  %306 = sext i32 %305 to i64
  %307 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %308 = call i32 @submit_page_section(%struct.dio* %298, %struct.dio_submit* %299, %struct.page* %300, i64 %301, i32 %302, i64 %306, %struct.buffer_head* %307)
  store i32 %308, i32* %10, align 4
  %309 = load i32, i32* %10, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %297
  %312 = load %struct.page*, %struct.page** %11, align 8
  %313 = call i32 @put_page(%struct.page* %312)
  br label %363

314:                                              ; preds = %297
  %315 = load i32, i32* %15, align 4
  %316 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %317 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %316, i32 0, i32 9
  %318 = load i32, i32* %317, align 4
  %319 = add i32 %318, %315
  store i32 %319, i32* %317, align 4
  %320 = load i32, i32* %15, align 4
  %321 = zext i32 %320 to i64
  %322 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %323 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = add i64 %324, %321
  store i64 %325, i64* %323, align 8
  %326 = load i32, i32* %14, align 4
  %327 = zext i32 %326 to i64
  %328 = load i64, i64* %12, align 8
  %329 = add i64 %328, %327
  store i64 %329, i64* %12, align 8
  %330 = load i32, i32* %14, align 4
  %331 = load %struct.dio*, %struct.dio** %5, align 8
  %332 = getelementptr inbounds %struct.dio, %struct.dio* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = add i32 %333, %330
  store i32 %334, i32* %332, align 8
  %335 = load i32, i32* %15, align 4
  %336 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %337 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %336, i32 0, i32 8
  %338 = load i32, i32* %337, align 8
  %339 = sub i32 %338, %335
  store i32 %339, i32* %337, align 8
  br label %340

340:                                              ; preds = %314, %207
  %341 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %342 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %341, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %345 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %344, i32 0, i32 3
  %346 = load i64, i64* %345, align 8
  %347 = icmp ugt i64 %343, %346
  %348 = zext i1 %347 to i32
  %349 = call i32 @BUG_ON(i32 %348)
  %350 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %351 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %350, i32 0, i32 2
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %354 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %353, i32 0, i32 3
  %355 = load i64, i64* %354, align 8
  %356 = icmp eq i64 %352, %355
  br i1 %356, label %357, label %358

357:                                              ; preds = %340
  br label %359

358:                                              ; preds = %340
  br label %78

359:                                              ; preds = %357, %78
  %360 = load %struct.page*, %struct.page** %11, align 8
  %361 = call i32 @put_page(%struct.page* %360)
  br label %28

362:                                              ; preds = %28
  br label %363

363:                                              ; preds = %362, %311, %204, %94, %43
  %364 = load i32, i32* %10, align 4
  store i32 %364, i32* %4, align 4
  br label %365

365:                                              ; preds = %363, %183
  %366 = load i32, i32* %4, align 4
  ret i32 %366
}

declare dso_local %struct.page* @dio_get_page(%struct.dio*, %struct.dio_submit*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @get_more_blocks(%struct.dio*, %struct.dio_submit*, %struct.buffer_head*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i64 @buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @clean_bdev_aliases(i32, i32, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @zero_user(%struct.page*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dio_zero_block(%struct.dio*, %struct.dio_submit*, i32, %struct.buffer_head*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_boundary(%struct.buffer_head*) #1

declare dso_local i32 @submit_page_section(%struct.dio*, %struct.dio_submit*, %struct.page*, i64, i32, i64, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
