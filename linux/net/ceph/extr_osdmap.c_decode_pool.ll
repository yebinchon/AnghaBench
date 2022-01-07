; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_decode_pool.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_decode_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_pg_pool_info = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@bad = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"got v %d < 5 cv %d of ceph_pg_pool\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"got v %d cv %d > 9 of ceph_pg_pool\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.ceph_pg_pool_info*)* @decode_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_pool(i8** %0, i8* %1, %struct.ceph_pg_pool_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ceph_pg_pool_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ceph_pg_pool_info* %2, %struct.ceph_pg_pool_info** %7, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @bad, align 4
  %16 = call i32 @ceph_decode_need(i8** %13, i8* %14, i32 6, i32 %15)
  %17 = load i8**, i8*** %5, align 8
  %18 = call i8* @ceph_decode_8(i8** %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i8* @ceph_decode_8(i8** %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 5
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %375

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 9
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %375

40:                                               ; preds = %31
  %41 = load i8**, i8*** %5, align 8
  %42 = call i8* @ceph_decode_32(i8** %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @bad, align 4
  %48 = call i32 @ceph_decode_need(i8** %44, i8* %45, i32 %46, i32 %47)
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr i8, i8* %50, i64 %52
  store i8* %53, i8** %12, align 8
  %54 = load i8**, i8*** %5, align 8
  %55 = call i8* @ceph_decode_8(i8** %54)
  %56 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %57 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %56, i32 0, i32 10
  store i8* %55, i8** %57, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = call i8* @ceph_decode_8(i8** %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %62 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i8**, i8*** %5, align 8
  %64 = call i8* @ceph_decode_8(i8** %63)
  %65 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %66 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %65, i32 0, i32 9
  store i8* %64, i8** %66, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = call i8* @ceph_decode_8(i8** %67)
  %69 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %70 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %69, i32 0, i32 8
  store i8* %68, i8** %70, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = call i8* @ceph_decode_32(i8** %71)
  %73 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %74 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %73, i32 0, i32 7
  store i8* %72, i8** %74, align 8
  %75 = load i8**, i8*** %5, align 8
  %76 = call i8* @ceph_decode_32(i8** %75)
  %77 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %78 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %77, i32 0, i32 6
  store i8* %76, i8** %78, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr i8, i8* %80, i64 8
  store i8* %81, i8** %79, align 8
  %82 = load i8**, i8*** %5, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr i8, i8* %83, i64 4
  store i8* %84, i8** %82, align 8
  %85 = load i8**, i8*** %5, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr i8, i8* %86, i64 12
  store i8* %87, i8** %85, align 8
  %88 = load i8**, i8*** %5, align 8
  %89 = call i8* @ceph_decode_32(i8** %88)
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %95, %40
  %92 = load i32, i32* %11, align 4
  %93 = add i32 %92, -1
  store i32 %93, i32* %11, align 4
  %94 = icmp ne i32 %92, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load i8**, i8*** %5, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr i8, i8* %97, i64 8
  store i8* %98, i8** %96, align 8
  %99 = load i8**, i8*** %5, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr i8, i8* %100, i64 2
  store i8* %101, i8** %99, align 8
  %102 = load i8**, i8*** %5, align 8
  %103 = call i8* @ceph_decode_32(i8** %102)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i8**, i8*** %5, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = zext i32 %105 to i64
  %109 = getelementptr i8, i8* %107, i64 %108
  store i8* %109, i8** %106, align 8
  br label %91

110:                                              ; preds = %91
  %111 = load i8**, i8*** %5, align 8
  %112 = call i8* @ceph_decode_32(i8** %111)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = mul i32 %114, 16
  %116 = load i8**, i8*** %5, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = zext i32 %115 to i64
  %119 = getelementptr i8, i8* %117, i64 %118
  store i8* %119, i8** %116, align 8
  %120 = load i8**, i8*** %5, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr i8, i8* %121, i64 8
  store i8* %122, i8** %120, align 8
  %123 = load i8**, i8*** %5, align 8
  %124 = call i8* @ceph_decode_64(i8** %123)
  %125 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %126 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %125, i32 0, i32 5
  store i8* %124, i8** %126, align 8
  %127 = load i8**, i8*** %5, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr i8, i8* %128, i64 4
  store i8* %129, i8** %127, align 8
  %130 = load i32, i32* %8, align 4
  %131 = icmp sge i32 %130, 7
  br i1 %131, label %132, label %138

132:                                              ; preds = %110
  %133 = load i8**, i8*** %5, align 8
  %134 = call i8* @ceph_decode_8(i8** %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %137 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %149

138:                                              ; preds = %110
  %139 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %140 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %143 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sdiv i32 %144, 2
  %146 = sub nsw i32 %141, %145
  %147 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %148 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %138, %132
  %150 = load i32, i32* %8, align 4
  %151 = icmp sge i32 %150, 8
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i8**, i8*** %5, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr i8, i8* %154, i64 16
  store i8* %155, i8** %153, align 8
  br label %156

156:                                              ; preds = %152, %149
  %157 = load i32, i32* %8, align 4
  %158 = icmp sge i32 %157, 9
  br i1 %158, label %159, label %185

159:                                              ; preds = %156
  %160 = load i8**, i8*** %5, align 8
  %161 = call i8* @ceph_decode_32(i8** %160)
  %162 = ptrtoint i8* %161 to i32
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = mul i32 %163, 8
  %165 = load i8**, i8*** %5, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = zext i32 %164 to i64
  %168 = getelementptr i8, i8* %166, i64 %167
  store i8* %168, i8** %165, align 8
  %169 = load i8**, i8*** %5, align 8
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr i8, i8* %170, i64 8
  store i8* %171, i8** %169, align 8
  %172 = load i8**, i8*** %5, align 8
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr i8, i8* %173, i64 1
  store i8* %174, i8** %172, align 8
  %175 = load i8**, i8*** %5, align 8
  %176 = call i8* @ceph_decode_64(i8** %175)
  %177 = ptrtoint i8* %176 to i32
  %178 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %179 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load i8**, i8*** %5, align 8
  %181 = call i8* @ceph_decode_64(i8** %180)
  %182 = ptrtoint i8* %181 to i32
  %183 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %184 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  br label %190

185:                                              ; preds = %156
  %186 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %187 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %186, i32 0, i32 2
  store i32 -1, i32* %187, align 8
  %188 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %189 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %188, i32 0, i32 3
  store i32 -1, i32* %189, align 4
  br label %190

190:                                              ; preds = %185, %159
  %191 = load i32, i32* %8, align 4
  %192 = icmp sge i32 %191, 10
  br i1 %192, label %193, label %219

193:                                              ; preds = %190
  %194 = load i8**, i8*** %5, align 8
  %195 = call i8* @ceph_decode_32(i8** %194)
  %196 = ptrtoint i8* %195 to i32
  store i32 %196, i32* %11, align 4
  br label %197

197:                                              ; preds = %201, %193
  %198 = load i32, i32* %11, align 4
  %199 = add i32 %198, -1
  store i32 %199, i32* %11, align 4
  %200 = icmp ne i32 %198, 0
  br i1 %200, label %201, label %218

201:                                              ; preds = %197
  %202 = load i8**, i8*** %5, align 8
  %203 = call i8* @ceph_decode_32(i8** %202)
  %204 = ptrtoint i8* %203 to i32
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %10, align 4
  %206 = load i8**, i8*** %5, align 8
  %207 = load i8*, i8** %206, align 8
  %208 = zext i32 %205 to i64
  %209 = getelementptr i8, i8* %207, i64 %208
  store i8* %209, i8** %206, align 8
  %210 = load i8**, i8*** %5, align 8
  %211 = call i8* @ceph_decode_32(i8** %210)
  %212 = ptrtoint i8* %211 to i32
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load i8**, i8*** %5, align 8
  %215 = load i8*, i8** %214, align 8
  %216 = zext i32 %213 to i64
  %217 = getelementptr i8, i8* %215, i64 %216
  store i8* %217, i8** %214, align 8
  br label %197

218:                                              ; preds = %197
  br label %219

219:                                              ; preds = %218, %190
  %220 = load i32, i32* %8, align 4
  %221 = icmp sge i32 %220, 11
  br i1 %221, label %222, label %240

222:                                              ; preds = %219
  %223 = load i8**, i8*** %5, align 8
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr i8, i8* %224, i64 2
  store i8* %225, i8** %223, align 8
  %226 = load i8**, i8*** %5, align 8
  %227 = call i8* @ceph_decode_32(i8** %226)
  %228 = ptrtoint i8* %227 to i32
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = load i8**, i8*** %5, align 8
  %231 = load i8*, i8** %230, align 8
  %232 = zext i32 %229 to i64
  %233 = getelementptr i8, i8* %231, i64 %232
  store i8* %233, i8** %230, align 8
  %234 = load i8**, i8*** %5, align 8
  %235 = load i8*, i8** %234, align 8
  %236 = getelementptr i8, i8* %235, i64 4
  store i8* %236, i8** %234, align 8
  %237 = load i8**, i8*** %5, align 8
  %238 = load i8*, i8** %237, align 8
  %239 = getelementptr i8, i8* %238, i64 4
  store i8* %239, i8** %237, align 8
  br label %240

240:                                              ; preds = %222, %219
  %241 = load i32, i32* %8, align 4
  %242 = icmp sge i32 %241, 12
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load i8**, i8*** %5, align 8
  %245 = load i8*, i8** %244, align 8
  %246 = getelementptr i8, i8* %245, i64 4
  store i8* %246, i8** %244, align 8
  br label %247

247:                                              ; preds = %243, %240
  %248 = load i32, i32* %8, align 4
  %249 = icmp sge i32 %248, 13
  br i1 %249, label %250, label %269

250:                                              ; preds = %247
  %251 = load i8**, i8*** %5, align 8
  %252 = load i8*, i8** %251, align 8
  %253 = getelementptr i8, i8* %252, i64 8
  store i8* %253, i8** %251, align 8
  %254 = load i8**, i8*** %5, align 8
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr i8, i8* %255, i64 8
  store i8* %256, i8** %254, align 8
  %257 = load i8**, i8*** %5, align 8
  %258 = load i8*, i8** %257, align 8
  %259 = getelementptr i8, i8* %258, i64 4
  store i8* %259, i8** %257, align 8
  %260 = load i8**, i8*** %5, align 8
  %261 = load i8*, i8** %260, align 8
  %262 = getelementptr i8, i8* %261, i64 4
  store i8* %262, i8** %260, align 8
  %263 = load i8**, i8*** %5, align 8
  %264 = load i8*, i8** %263, align 8
  %265 = getelementptr i8, i8* %264, i64 4
  store i8* %265, i8** %263, align 8
  %266 = load i8**, i8*** %5, align 8
  %267 = load i8*, i8** %266, align 8
  %268 = getelementptr i8, i8* %267, i64 4
  store i8* %268, i8** %266, align 8
  br label %269

269:                                              ; preds = %250, %247
  %270 = load i32, i32* %8, align 4
  %271 = icmp sge i32 %270, 14
  br i1 %271, label %272, label %281

272:                                              ; preds = %269
  %273 = load i8**, i8*** %5, align 8
  %274 = call i8* @ceph_decode_32(i8** %273)
  %275 = ptrtoint i8* %274 to i32
  store i32 %275, i32* %10, align 4
  %276 = load i32, i32* %10, align 4
  %277 = load i8**, i8*** %5, align 8
  %278 = load i8*, i8** %277, align 8
  %279 = zext i32 %276 to i64
  %280 = getelementptr i8, i8* %278, i64 %279
  store i8* %280, i8** %277, align 8
  br label %281

281:                                              ; preds = %272, %269
  %282 = load i32, i32* %8, align 4
  %283 = icmp sge i32 %282, 15
  br i1 %283, label %284, label %289

284:                                              ; preds = %281
  %285 = load i8**, i8*** %5, align 8
  %286 = call i8* @ceph_decode_32(i8** %285)
  %287 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %288 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %287, i32 0, i32 4
  store i8* %286, i8** %288, align 8
  br label %292

289:                                              ; preds = %281
  %290 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %291 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %290, i32 0, i32 4
  store i8* null, i8** %291, align 8
  br label %292

292:                                              ; preds = %289, %284
  %293 = load i32, i32* %8, align 4
  %294 = icmp sge i32 %293, 16
  br i1 %294, label %295, label %299

295:                                              ; preds = %292
  %296 = load i8**, i8*** %5, align 8
  %297 = load i8*, i8** %296, align 8
  %298 = getelementptr i8, i8* %297, i64 4
  store i8* %298, i8** %296, align 8
  br label %299

299:                                              ; preds = %295, %292
  %300 = load i32, i32* %8, align 4
  %301 = icmp sge i32 %300, 17
  br i1 %301, label %302, label %306

302:                                              ; preds = %299
  %303 = load i8**, i8*** %5, align 8
  %304 = load i8*, i8** %303, align 8
  %305 = getelementptr i8, i8* %304, i64 8
  store i8* %305, i8** %303, align 8
  br label %306

306:                                              ; preds = %302, %299
  %307 = load i32, i32* %8, align 4
  %308 = icmp sge i32 %307, 19
  br i1 %308, label %309, label %313

309:                                              ; preds = %306
  %310 = load i8**, i8*** %5, align 8
  %311 = load i8*, i8** %310, align 8
  %312 = getelementptr i8, i8* %311, i64 4
  store i8* %312, i8** %310, align 8
  br label %313

313:                                              ; preds = %309, %306
  %314 = load i32, i32* %8, align 4
  %315 = icmp sge i32 %314, 20
  br i1 %315, label %316, label %320

316:                                              ; preds = %313
  %317 = load i8**, i8*** %5, align 8
  %318 = load i8*, i8** %317, align 8
  %319 = getelementptr i8, i8* %318, i64 4
  store i8* %319, i8** %317, align 8
  br label %320

320:                                              ; preds = %316, %313
  %321 = load i32, i32* %8, align 4
  %322 = icmp sge i32 %321, 21
  br i1 %322, label %323, label %327

323:                                              ; preds = %320
  %324 = load i8**, i8*** %5, align 8
  %325 = load i8*, i8** %324, align 8
  %326 = getelementptr i8, i8* %325, i64 1
  store i8* %326, i8** %324, align 8
  br label %327

327:                                              ; preds = %323, %320
  %328 = load i32, i32* %8, align 4
  %329 = icmp sge i32 %328, 22
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = load i8**, i8*** %5, align 8
  %332 = load i8*, i8** %331, align 8
  %333 = getelementptr i8, i8* %332, i64 1
  store i8* %333, i8** %331, align 8
  br label %334

334:                                              ; preds = %330, %327
  %335 = load i32, i32* %8, align 4
  %336 = icmp sge i32 %335, 23
  br i1 %336, label %337, label %344

337:                                              ; preds = %334
  %338 = load i8**, i8*** %5, align 8
  %339 = load i8*, i8** %338, align 8
  %340 = getelementptr i8, i8* %339, i64 4
  store i8* %340, i8** %338, align 8
  %341 = load i8**, i8*** %5, align 8
  %342 = load i8*, i8** %341, align 8
  %343 = getelementptr i8, i8* %342, i64 4
  store i8* %343, i8** %341, align 8
  br label %344

344:                                              ; preds = %337, %334
  %345 = load i32, i32* %8, align 4
  %346 = icmp sge i32 %345, 24
  br i1 %346, label %347, label %359

347:                                              ; preds = %344
  %348 = load i8**, i8*** %5, align 8
  %349 = load i8*, i8** %348, align 8
  %350 = getelementptr i8, i8* %349, i64 2
  store i8* %350, i8** %348, align 8
  %351 = load i8**, i8*** %5, align 8
  %352 = call i8* @ceph_decode_32(i8** %351)
  %353 = ptrtoint i8* %352 to i32
  store i32 %353, i32* %10, align 4
  %354 = load i32, i32* %10, align 4
  %355 = load i8**, i8*** %5, align 8
  %356 = load i8*, i8** %355, align 8
  %357 = zext i32 %354 to i64
  %358 = getelementptr i8, i8* %356, i64 %357
  store i8* %358, i8** %355, align 8
  br label %359

359:                                              ; preds = %347, %344
  %360 = load i32, i32* %8, align 4
  %361 = icmp sge i32 %360, 25
  br i1 %361, label %362, label %367

362:                                              ; preds = %359
  %363 = load i8**, i8*** %5, align 8
  %364 = call i8* @ceph_decode_32(i8** %363)
  %365 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %366 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %365, i32 0, i32 4
  store i8* %364, i8** %366, align 8
  br label %367

367:                                              ; preds = %362, %359
  %368 = load i8*, i8** %12, align 8
  %369 = load i8**, i8*** %5, align 8
  store i8* %368, i8** %369, align 8
  %370 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %7, align 8
  %371 = call i32 @calc_pg_masks(%struct.ceph_pg_pool_info* %370)
  store i32 0, i32* %4, align 4
  br label %375

372:                                              ; No predecessors!
  %373 = load i32, i32* @EINVAL, align 4
  %374 = sub nsw i32 0, %373
  store i32 %374, i32* %4, align 4
  br label %375

375:                                              ; preds = %372, %367, %34, %25
  %376 = load i32, i32* %4, align 4
  ret i32 %376
}

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i8* @ceph_decode_8(i8**) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i8* @ceph_decode_32(i8**) #1

declare dso_local i8* @ceph_decode_64(i8**) #1

declare dso_local i32 @calc_pg_masks(%struct.ceph_pg_pool_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
