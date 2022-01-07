; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_check_cip_header.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_check_cip_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CIP_EOH_MASK = common dso_local global i32 0, align 4
@CIP_EOH = common dso_local global i32 0, align 4
@CIP_HEADER_WITHOUT_EOH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Invalid CIP header for AMDTP: %08X:%08X\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@CIP_SPH_MASK = common dso_local global i32 0, align 4
@CIP_SPH_SHIFT = common dso_local global i32 0, align 4
@CIP_FMT_MASK = common dso_local global i32 0, align 4
@CIP_FMT_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Detect unexpected protocol: %08x %08x\0A\00", align 1
@CIP_FDF_MASK = common dso_local global i32 0, align 4
@CIP_FDF_SHIFT = common dso_local global i32 0, align 4
@CIP_FMT_AM = common dso_local global i32 0, align 4
@AMDTP_FDF_NO_DATA = common dso_local global i32 0, align 4
@CIP_DBS_MASK = common dso_local global i32 0, align 4
@CIP_DBS_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Detect invalid value in dbs field: %08X\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@CIP_WRONG_DBS = common dso_local global i32 0, align 4
@CIP_DBC_MASK = common dso_local global i32 0, align 4
@CIP_EMPTY_HAS_WRONG_DBC = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@CIP_SKIP_DBC_ZERO_CHECK = common dso_local global i32 0, align 4
@CIP_DBC_IS_END_EVENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Detect discontinuity of CIP: %02X %02X\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CIP_SYT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdtp_stream*, i32*, i32, i32*, i32*, i32*)* @check_cip_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cip_header(%struct.amdtp_stream* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdtp_stream*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CIP_EOH_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @CIP_EOH, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %6
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CIP_EOH_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @CIP_EOH, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %38, %6
  %46 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %47 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CIP_HEADER_WITHOUT_EOH, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %45
  %53 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %54 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %53, i32 0, i32 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_info_ratelimited(i32* %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %60)
  %62 = load i32, i32* @EAGAIN, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %264

64:                                               ; preds = %45, %38
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CIP_SPH_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @CIP_SPH_SHIFT, align 4
  %70 = lshr i32 %68, %69
  store i32 %70, i32* %15, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CIP_FMT_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @CIP_FMT_SHIFT, align 4
  %76 = lshr i32 %74, %75
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %79 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %64
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %85 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %82, %64
  %89 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %90 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %89, i32 0, i32 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_info_ratelimited(i32* %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %96)
  %98 = load i32, i32* @EAGAIN, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %264

100:                                              ; preds = %82
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CIP_FDF_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @CIP_FDF_SHIFT, align 4
  %106 = lshr i32 %104, %105
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %10, align 4
  %108 = zext i32 %107 to i64
  %109 = icmp ult i64 %108, 8
  br i1 %109, label %118, label %110

110:                                              ; preds = %100
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* @CIP_FMT_AM, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* @AMDTP_FDF_NO_DATA, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114, %100
  %119 = load i32*, i32** %11, align 8
  store i32 0, i32* %119, align 4
  br label %160

120:                                              ; preds = %114, %110
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CIP_DBS_MASK, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @CIP_DBS_SHIFT, align 4
  %126 = lshr i32 %124, %125
  store i32 %126, i32* %20, align 4
  %127 = load i32, i32* %20, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %120
  %130 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %131 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %130, i32 0, i32 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %133, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @EPROTO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %7, align 4
  br label %264

139:                                              ; preds = %120
  %140 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %141 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @CIP_WRONG_DBS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %148 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %20, align 4
  br label %150

150:                                              ; preds = %146, %139
  %151 = load i32, i32* %10, align 4
  %152 = zext i32 %151 to i64
  %153 = udiv i64 %152, 4
  %154 = sub i64 %153, 2
  %155 = load i32, i32* %20, align 4
  %156 = zext i32 %155 to i64
  %157 = udiv i64 %154, %156
  %158 = trunc i64 %157 to i32
  %159 = load i32*, i32** %11, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %150, %118
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @CIP_DBC_MASK, align 4
  %164 = and i32 %162, %163
  store i32 %164, i32* %18, align 4
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %160
  %169 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %170 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @CIP_EMPTY_HAS_WRONG_DBC, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %168
  %176 = load i32*, i32** %12, align 8
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @UINT_MAX, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32*, i32** %12, align 8
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %18, align 4
  br label %183

183:                                              ; preds = %180, %175, %168, %160
  %184 = load i32, i32* %18, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %188 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @CIP_SKIP_DBC_ZERO_CHECK, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %186, %183
  %194 = load i32*, i32** %12, align 8
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @UINT_MAX, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %193, %186
  store i32 0, i32* %19, align 4
  br label %242

199:                                              ; preds = %193
  %200 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %201 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @CIP_DBC_IS_END_EVENT, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %199
  %207 = load i32, i32* %18, align 4
  %208 = load i32*, i32** %12, align 8
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %207, %209
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %19, align 4
  br label %241

212:                                              ; preds = %199
  %213 = load i32*, i32** %11, align 8
  %214 = load i32, i32* %213, align 4
  %215 = icmp ugt i32 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %212
  %217 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %218 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ugt i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %225 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  store i32 %228, i32* %21, align 4
  br label %232

229:                                              ; preds = %216, %212
  %230 = load i32*, i32** %11, align 8
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %21, align 4
  br label %232

232:                                              ; preds = %229, %223
  %233 = load i32, i32* %18, align 4
  %234 = load i32*, i32** %12, align 8
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %21, align 4
  %237 = add i32 %235, %236
  %238 = and i32 %237, 255
  %239 = icmp ne i32 %233, %238
  %240 = zext i1 %239 to i32
  store i32 %240, i32* %19, align 4
  br label %241

241:                                              ; preds = %232, %206
  br label %242

242:                                              ; preds = %241, %198
  %243 = load i32, i32* %19, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %256

245:                                              ; preds = %242
  %246 = load %struct.amdtp_stream*, %struct.amdtp_stream** %8, align 8
  %247 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %246, i32 0, i32 4
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i32*, i32** %12, align 8
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %18, align 4
  %253 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %249, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %251, i32 %252)
  %254 = load i32, i32* @EIO, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %7, align 4
  br label %264

256:                                              ; preds = %242
  %257 = load i32, i32* %18, align 4
  %258 = load i32*, i32** %12, align 8
  store i32 %257, i32* %258, align 4
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @CIP_SYT_MASK, align 4
  %262 = and i32 %260, %261
  %263 = load i32*, i32** %13, align 8
  store i32 %262, i32* %263, align 4
  store i32 0, i32* %7, align 4
  br label %264

264:                                              ; preds = %256, %245, %129, %88, %52
  %265 = load i32, i32* %7, align 4
  ret i32 %265
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_info_ratelimited(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
