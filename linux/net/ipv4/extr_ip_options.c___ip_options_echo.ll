; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_options.c___ip_options_echo.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_options.c___ip_options_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_options = type { i64, i8*, i32, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPOPT_TS_PRESPEC = common dso_local global i8 0, align 1
@RTN_UNICAST = common dso_local global i64 0, align 8
@IPOPT_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ip_options_echo(%struct.net* %0, %struct.ip_options* %1, %struct.sk_buff* %2, %struct.ip_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.ip_options*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ip_options*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.ip_options* %1, %struct.ip_options** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.ip_options* %3, %struct.ip_options** %9, align 8
  %18 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %19 = call i32 @memset(%struct.ip_options* %18, i32 0, i32 56)
  %20 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %21 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %413

25:                                               ; preds = %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = call i8* @skb_network_header(%struct.sk_buff* %26)
  store i8* %27, i8** %10, align 8
  %28 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %29 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  %31 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %32 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %105

35:                                               ; preds = %25
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %38 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %36, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  store i32 %44, i32* %14, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %47 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %45, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %55 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %60 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %64 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @memcpy(i8* %61, i8* %67, i32 %68)
  %70 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %71 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %35
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 3
  %81 = load i32, i32* %14, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %413

86:                                               ; preds = %78
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 4
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  store i8 %89, i8* %91, align 1
  %92 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %93 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %92, i32 0, i32 3
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %86, %74, %35
  %95 = load i32, i32* %14, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %11, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %102 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, %100
  store i64 %104, i64* %102, align 8
  br label %105

105:                                              ; preds = %94, %25
  %106 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %107 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %236

110:                                              ; preds = %105
  %111 = load i8*, i8** %10, align 8
  %112 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %113 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %111, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  store i32 %119, i32* %14, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %122 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %120, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  store i32 %128, i32* %12, align 4
  %129 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %130 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 4
  %133 = trunc i64 %132 to i32
  %134 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %135 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %139 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %137, i64 %141
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @memcpy(i8* %136, i8* %142, i32 %143)
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %225

148:                                              ; preds = %110
  %149 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %150 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %148
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 3
  %156 = load i32, i32* %14, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %5, align 4
  br label %413

161:                                              ; preds = %153
  %162 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %163 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %162, i32 0, i32 5
  store i32 1, i32* %163, align 4
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 4
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %161, %148
  %167 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %168 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %220

171:                                              ; preds = %166
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 3
  %174 = load i32, i32* %14, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %5, align 4
  br label %413

179:                                              ; preds = %171
  %180 = load i8*, i8** %11, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 3
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = and i32 %183, 15
  %185 = load i8, i8* @IPOPT_TS_PRESPEC, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp ne i32 %184, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %179
  %189 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %190 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %189, i32 0, i32 6
  store i32 1, i32* %190, align 8
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 4
  store i32 %192, i32* %12, align 4
  br label %219

193:                                              ; preds = %179
  %194 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %195 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %194, i32 0, i32 6
  store i32 0, i32* %195, align 8
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 7
  %198 = load i32, i32* %14, align 4
  %199 = icmp sle i32 %197, %198
  br i1 %199, label %200, label %218

200:                                              ; preds = %193
  %201 = load i8*, i8** %11, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = getelementptr inbounds i8, i8* %204, i64 -1
  %206 = call i32 @memcpy(i8* %15, i8* %205, i32 4)
  %207 = load %struct.net*, %struct.net** %6, align 8
  %208 = load i8, i8* %15, align 1
  %209 = call i64 @inet_addr_type(%struct.net* %207, i8 zeroext %208)
  %210 = load i64, i64* @RTN_UNICAST, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %200
  %213 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %214 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %213, i32 0, i32 6
  store i32 1, i32* %214, align 8
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, 8
  store i32 %216, i32* %12, align 4
  br label %217

217:                                              ; preds = %212, %200
  br label %218

218:                                              ; preds = %217, %193
  br label %219

219:                                              ; preds = %218, %188
  br label %220

220:                                              ; preds = %219, %166
  %221 = load i32, i32* %12, align 4
  %222 = trunc i32 %221 to i8
  %223 = load i8*, i8** %11, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 2
  store i8 %222, i8* %224, align 1
  br label %225

225:                                              ; preds = %220, %110
  %226 = load i32, i32* %14, align 4
  %227 = load i8*, i8** %11, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8* %229, i8** %11, align 8
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %233 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %234, %231
  store i64 %235, i64* %233, align 8
  br label %236

236:                                              ; preds = %225, %105
  %237 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %238 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %355

241:                                              ; preds = %236
  %242 = load i8*, i8** %10, align 8
  %243 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %244 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %242, i64 %246
  store i8* %247, i8** %16, align 8
  %248 = load i8*, i8** %16, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 1
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  store i32 %251, i32* %14, align 4
  %252 = load i8*, i8** %16, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 2
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  store i32 %255, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %256 = load i32, i32* %12, align 4
  %257 = load i32, i32* %14, align 4
  %258 = icmp sgt i32 %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %241
  %260 = load i32, i32* %14, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %12, align 4
  br label %262

262:                                              ; preds = %259, %241
  %263 = load i32, i32* %12, align 4
  %264 = sub nsw i32 %263, 4
  store i32 %264, i32* %12, align 4
  %265 = load i32, i32* %12, align 4
  %266 = icmp sgt i32 %265, 3
  br i1 %266, label %267, label %311

267:                                              ; preds = %262
  %268 = load i8*, i8** %16, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %268, i64 %271
  %273 = call i32 @memcpy(i8* %17, i8* %272, i32 4)
  %274 = load i32, i32* %12, align 4
  %275 = sub nsw i32 %274, 4
  store i32 %275, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %276

276:                                              ; preds = %291, %267
  %277 = load i32, i32* %12, align 4
  %278 = icmp sgt i32 %277, 3
  br i1 %278, label %279, label %296

279:                                              ; preds = %276
  %280 = load i8*, i8** %11, align 8
  %281 = load i32, i32* %13, align 4
  %282 = sub nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %280, i64 %283
  %285 = load i8*, i8** %16, align 8
  %286 = load i32, i32* %12, align 4
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %285, i64 %288
  %290 = call i32 @memcpy(i8* %284, i8* %289, i32 4)
  br label %291

291:                                              ; preds = %279
  %292 = load i32, i32* %12, align 4
  %293 = sub nsw i32 %292, 4
  store i32 %293, i32* %12, align 4
  %294 = load i32, i32* %13, align 4
  %295 = add nsw i32 %294, 4
  store i32 %295, i32* %13, align 4
  br label %276

296:                                              ; preds = %276
  %297 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %298 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %297)
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 0
  %300 = load i8*, i8** %16, align 8
  %301 = load i32, i32* %12, align 4
  %302 = add nsw i32 %301, 3
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %300, i64 %303
  %305 = call i64 @memcmp(i32* %299, i8* %304, i32 4)
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %296
  %308 = load i32, i32* %13, align 4
  %309 = sub nsw i32 %308, 4
  store i32 %309, i32* %13, align 4
  br label %310

310:                                              ; preds = %307, %296
  br label %311

311:                                              ; preds = %310, %262
  %312 = load i32, i32* %13, align 4
  %313 = icmp sgt i32 %312, 3
  br i1 %313, label %314, label %354

314:                                              ; preds = %311
  %315 = load i8, i8* %17, align 1
  %316 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %317 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %316, i32 0, i32 8
  store i8 %315, i8* %317, align 8
  %318 = load i8*, i8** %16, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 0
  %320 = load i8, i8* %319, align 1
  %321 = load i8*, i8** %11, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 0
  store i8 %320, i8* %322, align 1
  %323 = load i32, i32* %13, align 4
  %324 = add nsw i32 %323, 3
  %325 = trunc i32 %324 to i8
  %326 = load i8*, i8** %11, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 1
  store i8 %325, i8* %327, align 1
  %328 = load i8*, i8** %11, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 2
  store i8 4, i8* %329, align 1
  %330 = load i32, i32* %13, align 4
  %331 = add nsw i32 %330, 3
  %332 = load i8*, i8** %11, align 8
  %333 = sext i32 %331 to i64
  %334 = getelementptr inbounds i8, i8* %332, i64 %333
  store i8* %334, i8** %11, align 8
  %335 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %336 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = add i64 %337, 4
  %339 = trunc i64 %338 to i32
  %340 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %341 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %340, i32 0, i32 7
  store i32 %339, i32* %341, align 4
  %342 = load i32, i32* %13, align 4
  %343 = add nsw i32 %342, 3
  %344 = sext i32 %343 to i64
  %345 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %346 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %347, %344
  store i64 %348, i64* %346, align 8
  %349 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %350 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %349, i32 0, i32 10
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %353 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %352, i32 0, i32 10
  store i32 %351, i32* %353, align 8
  br label %354

354:                                              ; preds = %314, %311
  br label %355

355:                                              ; preds = %354, %236
  %356 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %357 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %356, i32 0, i32 9
  %358 = load i32, i32* %357, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %396

360:                                              ; preds = %355
  %361 = load i8*, i8** %10, align 8
  %362 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %363 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %362, i32 0, i32 9
  %364 = load i32, i32* %363, align 4
  %365 = add nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8, i8* %361, i64 %366
  %368 = load i8, i8* %367, align 1
  %369 = zext i8 %368 to i32
  store i32 %369, i32* %14, align 4
  %370 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %371 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = add i64 %372, 4
  %374 = trunc i64 %373 to i32
  %375 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %376 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %375, i32 0, i32 9
  store i32 %374, i32* %376, align 4
  %377 = load i8*, i8** %11, align 8
  %378 = load i8*, i8** %10, align 8
  %379 = load %struct.ip_options*, %struct.ip_options** %9, align 8
  %380 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %379, i32 0, i32 9
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8, i8* %378, i64 %382
  %384 = load i32, i32* %14, align 4
  %385 = call i32 @memcpy(i8* %377, i8* %383, i32 %384)
  %386 = load i32, i32* %14, align 4
  %387 = load i8*, i8** %11, align 8
  %388 = sext i32 %386 to i64
  %389 = getelementptr inbounds i8, i8* %387, i64 %388
  store i8* %389, i8** %11, align 8
  %390 = load i32, i32* %14, align 4
  %391 = sext i32 %390 to i64
  %392 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %393 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = add nsw i64 %394, %391
  store i64 %395, i64* %393, align 8
  br label %396

396:                                              ; preds = %360, %355
  br label %397

397:                                              ; preds = %403, %396
  %398 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %399 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = and i64 %400, 3
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %412

403:                                              ; preds = %397
  %404 = load i32, i32* @IPOPT_END, align 4
  %405 = trunc i32 %404 to i8
  %406 = load i8*, i8** %11, align 8
  %407 = getelementptr inbounds i8, i8* %406, i32 1
  store i8* %407, i8** %11, align 8
  store i8 %405, i8* %406, align 1
  %408 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %409 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = add nsw i64 %410, 1
  store i64 %411, i64* %409, align 8
  br label %397

412:                                              ; preds = %397
  store i32 0, i32* %5, align 4
  br label %413

413:                                              ; preds = %412, %176, %158, %83, %24
  %414 = load i32, i32* %5, align 4
  ret i32 %414
}

declare dso_local i32 @memset(%struct.ip_options*, i32, i32) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @inet_addr_type(%struct.net*, i8 zeroext) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
