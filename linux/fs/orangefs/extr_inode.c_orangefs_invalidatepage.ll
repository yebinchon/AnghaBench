; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.orangefs_write_range = type { i64, i64, i8*, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalidate range offset %llu length %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"write range offset %llu length %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32, i32)* @orangefs_invalidatepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orangefs_invalidatepage(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.orangefs_write_range*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i64 @page_private(%struct.page* %10)
  %12 = inttoptr i64 %11 to %struct.orangefs_write_range*
  store %struct.orangefs_write_range* %12, %struct.orangefs_write_range** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i64 @page_private(%struct.page* %20)
  %22 = inttoptr i64 %21 to %struct.orangefs_write_range*
  %23 = call i32 @kfree(%struct.orangefs_write_range* %22)
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @set_page_private(%struct.page* %24, i32 0)
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call i32 @ClearPagePrivate(%struct.page* %26)
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call i32 @put_page(%struct.page* %28)
  br label %302

30:                                               ; preds = %15, %3
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i64 @page_offset(%struct.page* %31)
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %37 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %35, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %30
  %41 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %42 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %45 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = load %struct.page*, %struct.page** %4, align 8
  %49 = call i64 @page_offset(%struct.page* %48)
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = icmp ule i64 %47, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %40
  %58 = load %struct.page*, %struct.page** %4, align 8
  %59 = call i64 @page_private(%struct.page* %58)
  %60 = inttoptr i64 %59 to %struct.orangefs_write_range*
  %61 = call i32 @kfree(%struct.orangefs_write_range* %60)
  %62 = load %struct.page*, %struct.page** %4, align 8
  %63 = call i32 @set_page_private(%struct.page* %62, i32 0)
  %64 = load %struct.page*, %struct.page** %4, align 8
  %65 = call i32 @ClearPagePrivate(%struct.page* %64)
  %66 = load %struct.page*, %struct.page** %4, align 8
  %67 = call i32 @put_page(%struct.page* %66)
  %68 = load %struct.page*, %struct.page** %4, align 8
  %69 = call i32 @cancel_dirty_page(%struct.page* %68)
  br label %302

70:                                               ; preds = %40, %30
  %71 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %72 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.page*, %struct.page** %4, align 8
  %75 = call i64 @page_offset(%struct.page* %74)
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = icmp slt i64 %73, %78
  br i1 %79, label %80, label %143

80:                                               ; preds = %70
  %81 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %82 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %85 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %83, %86
  %88 = load %struct.page*, %struct.page** %4, align 8
  %89 = call i64 @page_offset(%struct.page* %88)
  %90 = load i32, i32* %5, align 4
  %91 = zext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = load i32, i32* %6, align 4
  %94 = zext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = icmp ule i64 %87, %95
  br i1 %96, label %97, label %143

97:                                               ; preds = %80
  %98 = load %struct.page*, %struct.page** %4, align 8
  %99 = call i64 @page_offset(%struct.page* %98)
  %100 = load i32, i32* %5, align 4
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %104 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %107 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %105, %108
  %110 = icmp ult i64 %102, %109
  br i1 %110, label %111, label %143

111:                                              ; preds = %97
  %112 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %113 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %116 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %114, %117
  %119 = load %struct.page*, %struct.page** %4, align 8
  %120 = call i64 @page_offset(%struct.page* %119)
  %121 = load i32, i32* %5, align 4
  %122 = zext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = sub i64 %118, %123
  store i64 %124, i64* %8, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %127 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ugt i64 %125, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @WARN_ON(i32 %130)
  %132 = load i64, i64* %8, align 8
  %133 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %134 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = sub i64 %135, %132
  store i64 %136, i64* %134, align 8
  %137 = call i8* (...) @current_fsuid()
  %138 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %139 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  %140 = call i8* (...) @current_fsgid()
  %141 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %142 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  br label %297

143:                                              ; preds = %97, %80, %70
  %144 = load %struct.page*, %struct.page** %4, align 8
  %145 = call i64 @page_offset(%struct.page* %144)
  %146 = load i32, i32* %5, align 4
  %147 = zext i32 %146 to i64
  %148 = add nsw i64 %145, %147
  %149 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %150 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sle i64 %148, %151
  br i1 %152, label %153, label %219

153:                                              ; preds = %143
  %154 = load %struct.page*, %struct.page** %4, align 8
  %155 = call i64 @page_offset(%struct.page* %154)
  %156 = load i32, i32* %5, align 4
  %157 = zext i32 %156 to i64
  %158 = add nsw i64 %155, %157
  %159 = load i32, i32* %6, align 4
  %160 = zext i32 %159 to i64
  %161 = add nsw i64 %158, %160
  %162 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %163 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %166 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = add i64 %164, %167
  %169 = icmp ult i64 %161, %168
  br i1 %169, label %170, label %219

170:                                              ; preds = %153
  %171 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %172 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.page*, %struct.page** %4, align 8
  %175 = call i64 @page_offset(%struct.page* %174)
  %176 = load i32, i32* %5, align 4
  %177 = zext i32 %176 to i64
  %178 = add nsw i64 %175, %177
  %179 = load i32, i32* %6, align 4
  %180 = zext i32 %179 to i64
  %181 = add nsw i64 %178, %180
  %182 = icmp slt i64 %173, %181
  br i1 %182, label %183, label %219

183:                                              ; preds = %170
  %184 = load %struct.page*, %struct.page** %4, align 8
  %185 = call i64 @page_offset(%struct.page* %184)
  %186 = load i32, i32* %5, align 4
  %187 = zext i32 %186 to i64
  %188 = add nsw i64 %185, %187
  %189 = load i32, i32* %6, align 4
  %190 = zext i32 %189 to i64
  %191 = add nsw i64 %188, %190
  %192 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %193 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = sub nsw i64 %191, %194
  store i64 %195, i64* %9, align 8
  %196 = load i64, i64* %9, align 8
  %197 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %198 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ugt i64 %196, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @WARN_ON(i32 %201)
  %203 = load i64, i64* %9, align 8
  %204 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %205 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %206, %203
  store i64 %207, i64* %205, align 8
  %208 = load i64, i64* %9, align 8
  %209 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %210 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = sub i64 %211, %208
  store i64 %212, i64* %210, align 8
  %213 = call i8* (...) @current_fsuid()
  %214 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %215 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %214, i32 0, i32 3
  store i8* %213, i8** %215, align 8
  %216 = call i8* (...) @current_fsgid()
  %217 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %218 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %217, i32 0, i32 2
  store i8* %216, i8** %218, align 8
  br label %296

219:                                              ; preds = %170, %153, %143
  %220 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %221 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.page*, %struct.page** %4, align 8
  %224 = call i64 @page_offset(%struct.page* %223)
  %225 = load i32, i32* %5, align 4
  %226 = zext i32 %225 to i64
  %227 = add nsw i64 %224, %226
  %228 = icmp slt i64 %222, %227
  br i1 %228, label %229, label %248

229:                                              ; preds = %219
  %230 = load %struct.page*, %struct.page** %4, align 8
  %231 = call i64 @page_offset(%struct.page* %230)
  %232 = load i32, i32* %5, align 4
  %233 = zext i32 %232 to i64
  %234 = add nsw i64 %231, %233
  %235 = load i32, i32* %6, align 4
  %236 = zext i32 %235 to i64
  %237 = add nsw i64 %234, %236
  %238 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %239 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %242 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = add i64 %240, %243
  %245 = icmp ult i64 %237, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %229
  %247 = call i32 @WARN_ON(i32 1)
  br label %302

248:                                              ; preds = %229, %219
  %249 = load %struct.page*, %struct.page** %4, align 8
  %250 = call i64 @page_offset(%struct.page* %249)
  %251 = load i32, i32* %5, align 4
  %252 = zext i32 %251 to i64
  %253 = add nsw i64 %250, %252
  %254 = load i32, i32* %6, align 4
  %255 = zext i32 %254 to i64
  %256 = add nsw i64 %253, %255
  %257 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %258 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp sle i64 %256, %259
  %261 = zext i1 %260 to i32
  %262 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %263 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %266 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = add i64 %264, %267
  %269 = load %struct.page*, %struct.page** %4, align 8
  %270 = call i64 @page_offset(%struct.page* %269)
  %271 = load i32, i32* %5, align 4
  %272 = zext i32 %271 to i64
  %273 = add nsw i64 %270, %272
  %274 = icmp ule i64 %268, %273
  %275 = zext i1 %274 to i32
  %276 = xor i32 %261, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %295, label %278

278:                                              ; preds = %248
  %279 = call i32 @WARN_ON(i32 1)
  %280 = load %struct.page*, %struct.page** %4, align 8
  %281 = call i64 @page_offset(%struct.page* %280)
  %282 = load i32, i32* %5, align 4
  %283 = zext i32 %282 to i64
  %284 = add nsw i64 %281, %283
  %285 = load i32, i32* %6, align 4
  %286 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %284, i32 %285)
  %287 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %288 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %7, align 8
  %291 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = trunc i64 %292 to i32
  %294 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %289, i32 %293)
  br label %295

295:                                              ; preds = %278, %248
  br label %302

296:                                              ; preds = %183
  br label %297

297:                                              ; preds = %296, %111
  br label %298

298:                                              ; preds = %297
  br label %299

299:                                              ; preds = %298
  %300 = load %struct.page*, %struct.page** %4, align 8
  %301 = call i32 @orangefs_launder_page(%struct.page* %300)
  br label %302

302:                                              ; preds = %299, %295, %246, %57, %19
  ret void
}

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i32 @kfree(%struct.orangefs_write_range*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @cancel_dirty_page(%struct.page*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @current_fsuid(...) #1

declare dso_local i8* @current_fsgid(...) #1

declare dso_local i32 @printk(i8*, i64, i32) #1

declare dso_local i32 @orangefs_launder_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
