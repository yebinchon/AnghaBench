; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_options.c___ip_options_compile.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_options.c___ip_options_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ip_options = type { i8*, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.rtable = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@CAP_NET_RAW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ip_options_compile(%struct.net* %0, %struct.ip_options* %1, %struct.sk_buff* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.ip_options*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rtable*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.ip_options* %1, %struct.ip_options** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i32, i32* @INADDR_ANY, align 4
  %22 = call zeroext i8 @htonl(i32 %21)
  store i8 %22, i8* %10, align 1
  store i8* null, i8** %11, align 8
  store %struct.rtable* null, %struct.rtable** %12, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %26)
  store %struct.rtable* %27, %struct.rtable** %12, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = call i32* @ip_hdr(%struct.sk_buff* %28)
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = bitcast i32* %30 to i8*
  store i8* %31, i8** %13, align 8
  br label %36

32:                                               ; preds = %4
  %33 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %34 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %13, align 8
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 -4
  store i8* %38, i8** %14, align 8
  %39 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %40 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %559, %73, %36
  %43 = load i32, i32* %16, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %567

45:                                               ; preds = %42
  %46 = load i8*, i8** %13, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  switch i32 %48, label %78 [
    i32 139, label %49
    i32 137, label %73
  ]

49:                                               ; preds = %45
  %50 = load i8*, i8** %13, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %13, align 8
  %52 = load i32, i32* %16, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %16, align 4
  br label %54

54:                                               ; preds = %67, %49
  %55 = load i32, i32* %16, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load i8*, i8** %13, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %60, 139
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i8*, i8** %13, align 8
  store i8 -117, i8* %63, align 1
  %64 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %65 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %64, i32 0, i32 2
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %57
  br label %67

67:                                               ; preds = %66
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %13, align 8
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %16, align 4
  br label %54

72:                                               ; preds = %54
  br label %568

73:                                               ; preds = %45
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %16, align 4
  %76 = load i8*, i8** %13, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %13, align 8
  br label %42

78:                                               ; preds = %45
  %79 = load i32, i32* %16, align 4
  %80 = icmp slt i32 %79, 2
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i8*, i8** %13, align 8
  store i8* %85, i8** %11, align 8
  br label %573

86:                                               ; preds = %78
  %87 = load i8*, i8** %13, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 2
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93, %86
  %98 = load i8*, i8** %13, align 8
  store i8* %98, i8** %11, align 8
  br label %573

99:                                               ; preds = %93
  %100 = load i8*, i8** %13, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  switch i32 %102, label %546 [
    i32 132, label %103
    i32 138, label %103
    i32 135, label %179
    i32 131, label %254
    i32 136, label %485
    i32 140, label %513
    i32 134, label %545
    i32 133, label %545
  ]

103:                                              ; preds = %99, %99
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %104, 3
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i8*, i8** %13, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  store i8* %108, i8** %11, align 8
  br label %573

109:                                              ; preds = %103
  %110 = load i8*, i8** %13, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i8*, i8** %13, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  store i8* %117, i8** %11, align 8
  br label %573

118:                                              ; preds = %109
  %119 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %120 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i8*, i8** %13, align 8
  store i8* %124, i8** %11, align 8
  br label %573

125:                                              ; preds = %118
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  br i1 %127, label %162, label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** %13, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp ne i32 %132, 4
  br i1 %133, label %142, label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %15, align 4
  %136 = icmp slt i32 %135, 7
  br i1 %136, label %142, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %15, align 4
  %139 = sub nsw i32 %138, 3
  %140 = and i32 %139, 3
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137, %134, %128
  %143 = load i8*, i8** %13, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  store i8* %144, i8** %11, align 8
  br label %573

145:                                              ; preds = %137
  %146 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %147 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %146, i32 0, i32 4
  %148 = load i8*, i8** %13, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 3
  %150 = call i32 @memcpy(i8* %147, i8* %149, i32 4)
  %151 = load i32, i32* %15, align 4
  %152 = icmp sgt i32 %151, 7
  br i1 %152, label %153, label %161

153:                                              ; preds = %145
  %154 = load i8*, i8** %13, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 3
  %156 = load i8*, i8** %13, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 7
  %158 = load i32, i32* %15, align 4
  %159 = sub nsw i32 %158, 7
  %160 = call i32 @memmove(i8* %155, i8* %157, i32 %159)
  br label %161

161:                                              ; preds = %153, %145
  br label %162

162:                                              ; preds = %161, %125
  %163 = load i8*, i8** %13, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %166, 132
  %168 = zext i1 %167 to i32
  %169 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %170 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 8
  %171 = load i8*, i8** %13, align 8
  %172 = load i8*, i8** %14, align 8
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = trunc i64 %175 to i32
  %177 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %178 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  br label %559

179:                                              ; preds = %99
  %180 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %181 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i8*, i8** %13, align 8
  store i8* %185, i8** %11, align 8
  br label %573

186:                                              ; preds = %179
  %187 = load i32, i32* %15, align 4
  %188 = icmp slt i32 %187, 3
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i8*, i8** %13, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  store i8* %191, i8** %11, align 8
  br label %573

192:                                              ; preds = %186
  %193 = load i8*, i8** %13, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 2
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp slt i32 %196, 4
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load i8*, i8** %13, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 2
  store i8* %200, i8** %11, align 8
  br label %573

201:                                              ; preds = %192
  %202 = load i8*, i8** %13, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 2
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = load i32, i32* %15, align 4
  %207 = icmp sle i32 %205, %206
  br i1 %207, label %208, label %245

208:                                              ; preds = %201
  %209 = load i8*, i8** %13, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 2
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = add nsw i32 %212, 3
  %214 = load i32, i32* %15, align 4
  %215 = icmp sgt i32 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %208
  %217 = load i8*, i8** %13, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 2
  store i8* %218, i8** %11, align 8
  br label %573

219:                                              ; preds = %208
  %220 = load %struct.rtable*, %struct.rtable** %12, align 8
  %221 = icmp ne %struct.rtable* %220, null
  br i1 %221, label %222, label %236

222:                                              ; preds = %219
  %223 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %224 = call i32 @spec_dst_fill(i8* %10, %struct.sk_buff* %223)
  %225 = load i8*, i8** %13, align 8
  %226 = load i8*, i8** %13, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 2
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %225, i64 %231
  %233 = call i32 @memcpy(i8* %232, i8* %10, i32 4)
  %234 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %235 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %234, i32 0, i32 2
  store i32 1, i32* %235, align 4
  br label %236

236:                                              ; preds = %222, %219
  %237 = load i8*, i8** %13, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 2
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = add nsw i32 %240, 4
  %242 = trunc i32 %241 to i8
  store i8 %242, i8* %238, align 1
  %243 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %244 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %243, i32 0, i32 7
  store i32 1, i32* %244, align 8
  br label %245

245:                                              ; preds = %236, %201
  %246 = load i8*, i8** %13, align 8
  %247 = load i8*, i8** %14, align 8
  %248 = ptrtoint i8* %246 to i64
  %249 = ptrtoint i8* %247 to i64
  %250 = sub i64 %248, %249
  %251 = trunc i64 %250 to i32
  %252 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %253 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %252, i32 0, i32 6
  store i32 %251, i32* %253, align 4
  br label %559

254:                                              ; preds = %99
  %255 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %256 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %254
  %260 = load i8*, i8** %13, align 8
  store i8* %260, i8** %11, align 8
  br label %573

261:                                              ; preds = %254
  %262 = load i32, i32* %15, align 4
  %263 = icmp slt i32 %262, 4
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i8*, i8** %13, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 1
  store i8* %266, i8** %11, align 8
  br label %573

267:                                              ; preds = %261
  %268 = load i8*, i8** %13, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 2
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = icmp slt i32 %271, 5
  br i1 %272, label %273, label %276

273:                                              ; preds = %267
  %274 = load i8*, i8** %13, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 2
  store i8* %275, i8** %11, align 8
  br label %573

276:                                              ; preds = %267
  %277 = load i8*, i8** %13, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 2
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = load i32, i32* %15, align 4
  %282 = icmp sle i32 %280, %281
  br i1 %282, label %283, label %438

283:                                              ; preds = %276
  store i8* null, i8** %17, align 8
  %284 = load i8*, i8** %13, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 2
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = add nsw i32 %287, 3
  %289 = load i32, i32* %15, align 4
  %290 = icmp sgt i32 %288, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %283
  %292 = load i8*, i8** %13, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 2
  store i8* %293, i8** %11, align 8
  br label %573

294:                                              ; preds = %283
  %295 = load i8*, i8** %13, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 3
  %297 = load i8, i8* %296, align 1
  %298 = zext i8 %297 to i32
  %299 = and i32 %298, 15
  switch i32 %299, label %414 [
    i32 128, label %300
    i32 129, label %321
    i32 130, label %366
  ]

300:                                              ; preds = %294
  %301 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %302 = icmp ne %struct.sk_buff* %301, null
  br i1 %302, label %303, label %312

303:                                              ; preds = %300
  %304 = load i8*, i8** %13, align 8
  %305 = load i8*, i8** %13, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 2
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = sub nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %304, i64 %310
  store i8* %311, i8** %17, align 8
  br label %312

312:                                              ; preds = %303, %300
  %313 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %314 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %313, i32 0, i32 9
  store i32 1, i32* %314, align 8
  %315 = load i8*, i8** %13, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 2
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = add nsw i32 %318, 4
  %320 = trunc i32 %319 to i8
  store i8 %320, i8* %316, align 1
  br label %428

321:                                              ; preds = %294
  %322 = load i8*, i8** %13, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 2
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = add nsw i32 %325, 7
  %327 = load i32, i32* %15, align 4
  %328 = icmp sgt i32 %326, %327
  br i1 %328, label %329, label %332

329:                                              ; preds = %321
  %330 = load i8*, i8** %13, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 2
  store i8* %331, i8** %11, align 8
  br label %573

332:                                              ; preds = %321
  %333 = load %struct.rtable*, %struct.rtable** %12, align 8
  %334 = icmp ne %struct.rtable* %333, null
  br i1 %334, label %335, label %355

335:                                              ; preds = %332
  %336 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %337 = call i32 @spec_dst_fill(i8* %10, %struct.sk_buff* %336)
  %338 = load i8*, i8** %13, align 8
  %339 = load i8*, i8** %13, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 2
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  %343 = sub nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %338, i64 %344
  %346 = call i32 @memcpy(i8* %345, i8* %10, i32 4)
  %347 = load i8*, i8** %13, align 8
  %348 = load i8*, i8** %13, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 2
  %350 = load i8, i8* %349, align 1
  %351 = zext i8 %350 to i32
  %352 = add nsw i32 %351, 3
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, i8* %347, i64 %353
  store i8* %354, i8** %17, align 8
  br label %355

355:                                              ; preds = %335, %332
  %356 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %357 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %356, i32 0, i32 10
  store i32 1, i32* %357, align 4
  %358 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %359 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %358, i32 0, i32 9
  store i32 1, i32* %359, align 8
  %360 = load i8*, i8** %13, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 2
  %362 = load i8, i8* %361, align 1
  %363 = zext i8 %362 to i32
  %364 = add nsw i32 %363, 8
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %361, align 1
  br label %428

366:                                              ; preds = %294
  %367 = load i8*, i8** %13, align 8
  %368 = getelementptr inbounds i8, i8* %367, i64 2
  %369 = load i8, i8* %368, align 1
  %370 = zext i8 %369 to i32
  %371 = add nsw i32 %370, 7
  %372 = load i32, i32* %15, align 4
  %373 = icmp sgt i32 %371, %372
  br i1 %373, label %374, label %377

374:                                              ; preds = %366
  %375 = load i8*, i8** %13, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 2
  store i8* %376, i8** %11, align 8
  br label %573

377:                                              ; preds = %366
  %378 = load i8*, i8** %13, align 8
  %379 = load i8*, i8** %13, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 2
  %381 = load i8, i8* %380, align 1
  %382 = zext i8 %381 to i32
  %383 = sub nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8, i8* %378, i64 %384
  %386 = call i32 @memcpy(i8* %18, i8* %385, i32 4)
  %387 = load %struct.net*, %struct.net** %6, align 8
  %388 = load i8, i8* %18, align 1
  %389 = call i32 @inet_addr_type(%struct.net* %387, i8 zeroext %388)
  %390 = load i32, i32* @RTN_UNICAST, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %377
  br label %428

393:                                              ; preds = %377
  %394 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %395 = icmp ne %struct.sk_buff* %394, null
  br i1 %395, label %396, label %405

396:                                              ; preds = %393
  %397 = load i8*, i8** %13, align 8
  %398 = load i8*, i8** %13, align 8
  %399 = getelementptr inbounds i8, i8* %398, i64 2
  %400 = load i8, i8* %399, align 1
  %401 = zext i8 %400 to i32
  %402 = add nsw i32 %401, 3
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i8, i8* %397, i64 %403
  store i8* %404, i8** %17, align 8
  br label %405

405:                                              ; preds = %396, %393
  %406 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %407 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %406, i32 0, i32 9
  store i32 1, i32* %407, align 8
  %408 = load i8*, i8** %13, align 8
  %409 = getelementptr inbounds i8, i8* %408, i64 2
  %410 = load i8, i8* %409, align 1
  %411 = zext i8 %410 to i32
  %412 = add nsw i32 %411, 8
  %413 = trunc i32 %412 to i8
  store i8 %413, i8* %409, align 1
  br label %428

414:                                              ; preds = %294
  %415 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %416 = icmp ne %struct.sk_buff* %415, null
  br i1 %416, label %427, label %417

417:                                              ; preds = %414
  %418 = load %struct.net*, %struct.net** %6, align 8
  %419 = getelementptr inbounds %struct.net, %struct.net* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @CAP_NET_RAW, align 4
  %422 = call i32 @ns_capable(i32 %420, i32 %421)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %427, label %424

424:                                              ; preds = %417
  %425 = load i8*, i8** %13, align 8
  %426 = getelementptr inbounds i8, i8* %425, i64 3
  store i8* %426, i8** %11, align 8
  br label %573

427:                                              ; preds = %417, %414
  br label %428

428:                                              ; preds = %427, %405, %392, %355, %312
  %429 = load i8*, i8** %17, align 8
  %430 = icmp ne i8* %429, null
  br i1 %430, label %431, label %437

431:                                              ; preds = %428
  %432 = call zeroext i8 (...) @inet_current_timestamp()
  store i8 %432, i8* %19, align 1
  %433 = load i8*, i8** %17, align 8
  %434 = call i32 @memcpy(i8* %433, i8* %19, i32 4)
  %435 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %436 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %435, i32 0, i32 2
  store i32 1, i32* %436, align 4
  br label %437

437:                                              ; preds = %431, %428
  br label %476

438:                                              ; preds = %276
  %439 = load i8*, i8** %13, align 8
  %440 = getelementptr inbounds i8, i8* %439, i64 3
  %441 = load i8, i8* %440, align 1
  %442 = zext i8 %441 to i32
  %443 = and i32 %442, 15
  %444 = icmp ne i32 %443, 130
  br i1 %444, label %445, label %475

445:                                              ; preds = %438
  %446 = load i8*, i8** %13, align 8
  %447 = getelementptr inbounds i8, i8* %446, i64 3
  %448 = load i8, i8* %447, align 1
  %449 = zext i8 %448 to i32
  %450 = ashr i32 %449, 4
  store i32 %450, i32* %20, align 4
  %451 = load i32, i32* %20, align 4
  %452 = icmp eq i32 %451, 15
  br i1 %452, label %453, label %456

453:                                              ; preds = %445
  %454 = load i8*, i8** %13, align 8
  %455 = getelementptr inbounds i8, i8* %454, i64 3
  store i8* %455, i8** %11, align 8
  br label %573

456:                                              ; preds = %445
  %457 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %458 = icmp ne %struct.sk_buff* %457, null
  br i1 %458, label %459, label %474

459:                                              ; preds = %456
  %460 = load i8*, i8** %13, align 8
  %461 = getelementptr inbounds i8, i8* %460, i64 3
  %462 = load i8, i8* %461, align 1
  %463 = zext i8 %462 to i32
  %464 = and i32 %463, 15
  %465 = load i32, i32* %20, align 4
  %466 = add i32 %465, 1
  %467 = shl i32 %466, 4
  %468 = or i32 %464, %467
  %469 = trunc i32 %468 to i8
  %470 = load i8*, i8** %13, align 8
  %471 = getelementptr inbounds i8, i8* %470, i64 3
  store i8 %469, i8* %471, align 1
  %472 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %473 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %472, i32 0, i32 2
  store i32 1, i32* %473, align 4
  br label %474

474:                                              ; preds = %459, %456
  br label %475

475:                                              ; preds = %474, %438
  br label %476

476:                                              ; preds = %475, %437
  %477 = load i8*, i8** %13, align 8
  %478 = load i8*, i8** %14, align 8
  %479 = ptrtoint i8* %477 to i64
  %480 = ptrtoint i8* %478 to i64
  %481 = sub i64 %479, %480
  %482 = trunc i64 %481 to i32
  %483 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %484 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %483, i32 0, i32 8
  store i32 %482, i32* %484, align 4
  br label %559

485:                                              ; preds = %99
  %486 = load i32, i32* %15, align 4
  %487 = icmp slt i32 %486, 4
  br i1 %487, label %488, label %491

488:                                              ; preds = %485
  %489 = load i8*, i8** %13, align 8
  %490 = getelementptr inbounds i8, i8* %489, i64 1
  store i8* %490, i8** %11, align 8
  br label %573

491:                                              ; preds = %485
  %492 = load i8*, i8** %13, align 8
  %493 = getelementptr inbounds i8, i8* %492, i64 2
  %494 = load i8, i8* %493, align 1
  %495 = zext i8 %494 to i32
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %512

497:                                              ; preds = %491
  %498 = load i8*, i8** %13, align 8
  %499 = getelementptr inbounds i8, i8* %498, i64 3
  %500 = load i8, i8* %499, align 1
  %501 = zext i8 %500 to i32
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %512

503:                                              ; preds = %497
  %504 = load i8*, i8** %13, align 8
  %505 = load i8*, i8** %14, align 8
  %506 = ptrtoint i8* %504 to i64
  %507 = ptrtoint i8* %505 to i64
  %508 = sub i64 %506, %507
  %509 = trunc i64 %508 to i32
  %510 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %511 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %510, i32 0, i32 11
  store i32 %509, i32* %511, align 8
  br label %512

512:                                              ; preds = %503, %497, %491
  br label %559

513:                                              ; preds = %99
  %514 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %515 = icmp ne %struct.sk_buff* %514, null
  br i1 %515, label %523, label %516

516:                                              ; preds = %513
  %517 = load %struct.net*, %struct.net** %6, align 8
  %518 = getelementptr inbounds %struct.net, %struct.net* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 4
  %520 = load i32, i32* @CAP_NET_RAW, align 4
  %521 = call i32 @ns_capable(i32 %519, i32 %520)
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %528

523:                                              ; preds = %516, %513
  %524 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %525 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %524, i32 0, i32 12
  %526 = load i32, i32* %525, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %530

528:                                              ; preds = %523, %516
  %529 = load i8*, i8** %13, align 8
  store i8* %529, i8** %11, align 8
  br label %573

530:                                              ; preds = %523
  %531 = load i8*, i8** %13, align 8
  %532 = load i8*, i8** %14, align 8
  %533 = ptrtoint i8* %531 to i64
  %534 = ptrtoint i8* %532 to i64
  %535 = sub i64 %533, %534
  %536 = trunc i64 %535 to i32
  %537 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %538 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %537, i32 0, i32 12
  store i32 %536, i32* %538, align 4
  %539 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %540 = call i32 @cipso_v4_validate(%struct.sk_buff* %539, i8** %13)
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %544

542:                                              ; preds = %530
  %543 = load i8*, i8** %13, align 8
  store i8* %543, i8** %11, align 8
  br label %573

544:                                              ; preds = %530
  br label %559

545:                                              ; preds = %99, %99
  br label %546

546:                                              ; preds = %99, %545
  %547 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %548 = icmp ne %struct.sk_buff* %547, null
  br i1 %548, label %558, label %549

549:                                              ; preds = %546
  %550 = load %struct.net*, %struct.net** %6, align 8
  %551 = getelementptr inbounds %struct.net, %struct.net* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 4
  %553 = load i32, i32* @CAP_NET_RAW, align 4
  %554 = call i32 @ns_capable(i32 %552, i32 %553)
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %558, label %556

556:                                              ; preds = %549
  %557 = load i8*, i8** %13, align 8
  store i8* %557, i8** %11, align 8
  br label %573

558:                                              ; preds = %549, %546
  br label %559

559:                                              ; preds = %558, %544, %512, %476, %245, %162
  %560 = load i32, i32* %15, align 4
  %561 = load i32, i32* %16, align 4
  %562 = sub nsw i32 %561, %560
  store i32 %562, i32* %16, align 4
  %563 = load i32, i32* %15, align 4
  %564 = load i8*, i8** %13, align 8
  %565 = sext i32 %563 to i64
  %566 = getelementptr inbounds i8, i8* %564, i64 %565
  store i8* %566, i8** %13, align 8
  br label %42

567:                                              ; preds = %42
  br label %568

568:                                              ; preds = %567, %72
  %569 = load i8*, i8** %11, align 8
  %570 = icmp ne i8* %569, null
  br i1 %570, label %572, label %571

571:                                              ; preds = %568
  store i32 0, i32* %5, align 4
  br label %589

572:                                              ; preds = %568
  br label %573

573:                                              ; preds = %572, %556, %542, %528, %488, %453, %424, %374, %329, %291, %273, %264, %259, %216, %198, %189, %184, %142, %123, %115, %106, %97, %84
  %574 = load i8*, i8** %9, align 8
  %575 = icmp ne i8* %574, null
  br i1 %575, label %576, label %586

576:                                              ; preds = %573
  %577 = load i8*, i8** %11, align 8
  %578 = load i8*, i8** %14, align 8
  %579 = ptrtoint i8* %577 to i64
  %580 = ptrtoint i8* %578 to i64
  %581 = sub i64 %579, %580
  %582 = shl i64 %581, 24
  %583 = trunc i64 %582 to i32
  %584 = call zeroext i8 @htonl(i32 %583)
  %585 = load i8*, i8** %9, align 8
  store i8 %584, i8* %585, align 1
  br label %586

586:                                              ; preds = %576, %573
  %587 = load i32, i32* @EINVAL, align 4
  %588 = sub nsw i32 0, %587
  store i32 %588, i32* %5, align 4
  br label %589

589:                                              ; preds = %586, %571
  %590 = load i32, i32* %5, align 4
  ret i32 %590
}

declare dso_local zeroext i8 @htonl(i32) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @spec_dst_fill(i8*, %struct.sk_buff*) #1

declare dso_local i32 @inet_addr_type(%struct.net*, i8 zeroext) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local zeroext i8 @inet_current_timestamp(...) #1

declare dso_local i32 @cipso_v4_validate(%struct.sk_buff*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
