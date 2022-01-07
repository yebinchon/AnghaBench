; ModuleID = '/home/carl/AnghaBench/linux/tools/firmware/extr_ihex2fw.c_process_ihex.c'
source_filename = "/home/carl/AnghaBench/linux/tools/firmware/extr_ihex2fw.c_process_ihex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ihex_binrec = type { i32, i32, i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Can't find valid record at line %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@wide_records = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"out of memory for records\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Not enough data to read complete record at line %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"CRC failure at line %d: got 0x%X, expected 0x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Bad EOF record (type 01) format at line %d\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Bad HEX86/HEX386 record (type %02X) at line %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Bad Start Address record (type %02X) at line %d\0A\00", align 1
@include_jump = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Unknown record (type %02X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @process_ihex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ihex(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ihex_binrec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i8 0, i8* %11, align 1
  store i8 0, i8* %12, align 1
  store i32 1, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %302, %246, %203, %2
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %15, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %15, align 4
  br label %33

33:                                               ; preds = %30, %22
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %13, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 58
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %44

43:                                               ; preds = %33
  br label %18

44:                                               ; preds = %42, %18
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 10
  %47 = load i32, i32* %5, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @stderr, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %311

55:                                               ; preds = %44
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = call i32 @hex(i8* %59, i8* %11)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %13, align 4
  %63 = load i64, i64* @wide_records, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %55
  %66 = load i32, i32* %16, align 4
  %67 = shl i32 %66, 8
  store i32 %67, i32* %16, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = call i32 @hex(i8* %71, i8* %11)
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %65, %55
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 16, %79
  %81 = trunc i64 %80 to i32
  %82 = call i64 @ALIGN(i32 %81, i32 4)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call %struct.ihex_binrec* @malloc(i64 %83)
  store %struct.ihex_binrec* %84, %struct.ihex_binrec** %6, align 8
  %85 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %86 = icmp ne %struct.ihex_binrec* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %311

92:                                               ; preds = %77
  %93 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @memset(%struct.ihex_binrec* %93, i32 0, i64 %94)
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %98 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 8
  %101 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %102 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = mul nsw i32 %103, 2
  %105 = add nsw i32 %100, %104
  %106 = load i32, i32* %5, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %92
  %109 = load i32, i32* @stderr, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %311

114:                                              ; preds = %92
  %115 = load i8*, i8** %4, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = call i32 @hex(i8* %118, i8* %11)
  %120 = shl i32 %119, 8
  %121 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %122 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 2
  store i32 %124, i32* %13, align 4
  %125 = load i8*, i8** %4, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = call i32 @hex(i8* %128, i8* %11)
  %130 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %131 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 2
  store i32 %135, i32* %13, align 4
  %136 = load i8*, i8** %4, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = call i32 @hex(i8* %139, i8* %11)
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %10, align 1
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 2
  store i32 %143, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %144

144:                                              ; preds = %162, %114
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %147 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %167

150:                                              ; preds = %144
  %151 = load i8*, i8** %4, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = call i32 @hex(i8* %154, i8* %11)
  %156 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %157 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  br label %162

162:                                              ; preds = %150
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 2
  store i32 %166, i32* %13, align 4
  br label %144

167:                                              ; preds = %144
  %168 = load i8*, i8** %4, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = call i32 @hex(i8* %171, i8* %11)
  %173 = trunc i32 %172 to i8
  store i8 %173, i8* %12, align 1
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 2
  store i32 %175, i32* %13, align 4
  %176 = load i8, i8* %11, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %194

179:                                              ; preds = %167
  %180 = load i32, i32* @stderr, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load i8, i8* %12, align 1
  %183 = sext i8 %182 to i32
  %184 = load i8, i8* %12, align 1
  %185 = sext i8 %184 to i32
  %186 = load i8, i8* %11, align 1
  %187 = sext i8 %186 to i32
  %188 = sub nsw i32 %185, %187
  %189 = trunc i32 %188 to i8
  %190 = zext i8 %189 to i32
  %191 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %181, i32 %183, i32 %190)
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %3, align 4
  br label %311

194:                                              ; preds = %167
  %195 = load i8, i8* %10, align 1
  %196 = sext i8 %195 to i32
  switch i32 %196, label %303 [
    i32 0, label %197
    i32 1, label %211
    i32 2, label %228
    i32 4, label %228
    i32 3, label %266
    i32 5, label %266
  ]

197:                                              ; preds = %194
  %198 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %199 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %197
  br label %310

203:                                              ; preds = %197
  %204 = load i32, i32* %8, align 4
  %205 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %206 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, %204
  store i32 %208, i32* %206, align 4
  %209 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %210 = call i32 @file_record(%struct.ihex_binrec* %209)
  br label %17

211:                                              ; preds = %194
  %212 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %213 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %211
  %217 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %218 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %216, %211
  %222 = load i32, i32* @stderr, align 4
  %223 = load i32, i32* %15, align 4
  %224 = call i32 (i32, i8*, ...) @fprintf(i32 %222, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %3, align 4
  br label %311

227:                                              ; preds = %216
  br label %310

228:                                              ; preds = %194, %194
  %229 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %230 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %228
  %234 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %235 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 2
  br i1 %237, label %238, label %246

238:                                              ; preds = %233, %228
  %239 = load i32, i32* @stderr, align 4
  %240 = load i8, i8* %10, align 1
  %241 = sext i8 %240 to i32
  %242 = load i32, i32* %15, align 4
  %243 = call i32 (i32, i8*, ...) @fprintf(i32 %239, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %241, i32 %242)
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %3, align 4
  br label %311

246:                                              ; preds = %233
  %247 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %248 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = shl i32 %251, 8
  %253 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %254 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 1
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %252, %257
  store i32 %258, i32* %8, align 4
  %259 = load i8, i8* %10, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 4, i32 16
  %264 = load i32, i32* %8, align 4
  %265 = shl i32 %264, %263
  store i32 %265, i32* %8, align 4
  br label %17

266:                                              ; preds = %194, %194
  %267 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %268 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %266
  %272 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %273 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 4
  br i1 %275, label %276, label %284

276:                                              ; preds = %271, %266
  %277 = load i32, i32* @stderr, align 4
  %278 = load i8, i8* %10, align 1
  %279 = sext i8 %278 to i32
  %280 = load i32, i32* %15, align 4
  %281 = call i32 (i32, i8*, ...) @fprintf(i32 %277, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %279, i32 %280)
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %3, align 4
  br label %311

284:                                              ; preds = %271
  %285 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %286 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  %289 = call i32 @memcpy(i32* %9, i32* %288, i32 4)
  %290 = load i32, i32* %9, align 4
  %291 = call i32 @htonl(i32 %290)
  store i32 %291, i32* %9, align 4
  %292 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %293 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %292, i32 0, i32 2
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = call i32 @memcpy(i32* %295, i32* %9, i32 4)
  %297 = load i32, i32* @include_jump, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %284
  %300 = load %struct.ihex_binrec*, %struct.ihex_binrec** %6, align 8
  %301 = call i32 @file_record(%struct.ihex_binrec* %300)
  br label %302

302:                                              ; preds = %299, %284
  br label %17

303:                                              ; preds = %194
  %304 = load i32, i32* @stderr, align 4
  %305 = load i8, i8* %10, align 1
  %306 = sext i8 %305 to i32
  %307 = call i32 (i32, i8*, ...) @fprintf(i32 %304, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %306)
  %308 = load i32, i32* @EINVAL, align 4
  %309 = sub nsw i32 0, %308
  store i32 %309, i32* %3, align 4
  br label %311

310:                                              ; preds = %227, %202
  store i32 0, i32* %3, align 4
  br label %311

311:                                              ; preds = %310, %303, %276, %238, %221, %179, %108, %87, %49
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @hex(i8*, i8*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local %struct.ihex_binrec* @malloc(i64) #1

declare dso_local i32 @memset(%struct.ihex_binrec*, i32, i64) #1

declare dso_local i32 @file_record(%struct.ihex_binrec*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
