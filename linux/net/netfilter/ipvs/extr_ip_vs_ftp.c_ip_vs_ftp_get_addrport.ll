; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ftp.c_ip_vs_ftp_get_addrport.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ftp.c_ip_vs_ftp_get_addrport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.nf_inet_addr = type { i8* }

@IP_VS_FTP_EPSV = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64, i8, i32, i32, %union.nf_inet_addr*, i8**, i64, i8**, i8**)* @ip_vs_ftp_get_addrport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_ftp_get_addrport(i8* %0, i8* %1, i8* %2, i64 %3, i8 signext %4, i32 %5, i32 %6, %union.nf_inet_addr* %7, i8** %8, i64 %9, i8** %10, i8** %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %union.nf_inet_addr*, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8**, align 8
  %25 = alloca i8**, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8, align 1
  %28 = alloca [6 x i8], align 1
  %29 = alloca i8, align 1
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  store i8* %0, i8** %14, align 8
  store i8* %1, i8** %15, align 8
  store i8* %2, i8** %16, align 8
  store i64 %3, i64* %17, align 8
  store i8 %4, i8* %18, align 1
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store %union.nf_inet_addr* %7, %union.nf_inet_addr** %21, align 8
  store i8** %8, i8*** %22, align 8
  store i64 %9, i64* %23, align 8
  store i8** %10, i8*** %24, align 8
  store i8** %11, i8*** %25, align 8
  store i32 0, i32* %31, align 4
  %34 = load i8*, i8** %15, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = load i64, i64* %17, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %12
  %42 = load i8*, i8** %14, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = call i64 @strncasecmp(i8* %42, i8* %43, i64 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 -1, i32* %13, align 4
  br label %370

52:                                               ; preds = %41
  store i32 0, i32* %13, align 4
  br label %370

53:                                               ; preds = %12
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = load i64, i64* %17, align 8
  %57 = call i64 @strncasecmp(i8* %54, i8* %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %370

60:                                               ; preds = %53
  %61 = load i8*, i8** %14, align 8
  %62 = load i64, i64* %17, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %26, align 8
  %64 = load i8, i8* %18, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %60
  store i32 0, i32* %32, align 4
  br label %67

67:                                               ; preds = %103, %66
  %68 = load i8*, i8** %26, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = icmp eq i8* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 -1, i32* %13, align 4
  br label %370

72:                                               ; preds = %67
  %73 = load i32, i32* %32, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %19, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** %26, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @isdigit(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %106

84:                                               ; preds = %78, %75
  %85 = load i8*, i8** %26, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* %18, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i32 1, i32* %32, align 4
  br label %92

92:                                               ; preds = %91, %84
  br label %102

93:                                               ; preds = %72
  %94 = load i8*, i8** %26, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* %18, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %106

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %92
  br label %103

103:                                              ; preds = %102
  %104 = load i8*, i8** %26, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %26, align 8
  br label %67

106:                                              ; preds = %100, %83
  br label %107

107:                                              ; preds = %106, %60
  %108 = load i32, i32* %19, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %177, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds [6 x i8], [6 x i8]* %28, i64 0, i64 0
  store i8 0, i8* %111, align 1
  %112 = load i8*, i8** %26, align 8
  store i8* %112, i8** %14, align 8
  br label %113

113:                                              ; preds = %155, %110
  %114 = load i8*, i8** %14, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = icmp eq i8* %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 -1, i32* %13, align 4
  br label %370

118:                                              ; preds = %113
  %119 = load i8*, i8** %14, align 8
  %120 = load i8, i8* %119, align 1
  store i8 %120, i8* %27, align 1
  %121 = load i8, i8* %27, align 1
  %122 = call i64 @isdigit(i8 signext %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %118
  %125 = load i32, i32* %31, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [6 x i8], [6 x i8]* %28, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = mul nsw i32 %129, 10
  %131 = load i8, i8* %27, align 1
  %132 = sext i8 %131 to i32
  %133 = add nsw i32 %130, %132
  %134 = sub nsw i32 %133, 48
  %135 = trunc i32 %134 to i8
  %136 = load i32, i32* %31, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [6 x i8], [6 x i8]* %28, i64 0, i64 %137
  store i8 %135, i8* %138, align 1
  br label %154

139:                                              ; preds = %118
  %140 = load i8, i8* %27, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 44
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = load i32, i32* %31, align 4
  %145 = icmp slt i32 %144, 5
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32, i32* %31, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %31, align 4
  %149 = load i32, i32* %31, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [6 x i8], [6 x i8]* %28, i64 0, i64 %150
  store i8 0, i8* %151, align 1
  br label %153

152:                                              ; preds = %143, %139
  br label %158

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %124
  br label %155

155:                                              ; preds = %154
  %156 = load i8*, i8** %14, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %14, align 8
  br label %113

158:                                              ; preds = %152
  %159 = load i32, i32* %31, align 4
  %160 = icmp ne i32 %159, 5
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 -1, i32* %13, align 4
  br label %370

162:                                              ; preds = %158
  %163 = load i8*, i8** %26, align 8
  %164 = load i8**, i8*** %24, align 8
  store i8* %163, i8** %164, align 8
  %165 = load i8*, i8** %14, align 8
  %166 = load i8**, i8*** %25, align 8
  store i8* %165, i8** %166, align 8
  %167 = getelementptr inbounds [6 x i8], [6 x i8]* %28, i64 0, i64 0
  %168 = bitcast i8* %167 to i8**
  %169 = call i8* @get_unaligned(i8** %168)
  %170 = load %union.nf_inet_addr*, %union.nf_inet_addr** %21, align 8
  %171 = bitcast %union.nf_inet_addr* %170 to i8**
  store i8* %169, i8** %171, align 8
  %172 = getelementptr inbounds [6 x i8], [6 x i8]* %28, i64 0, i64 0
  %173 = getelementptr inbounds i8, i8* %172, i64 4
  %174 = bitcast i8* %173 to i8**
  %175 = call i8* @get_unaligned(i8** %174)
  %176 = load i8**, i8*** %22, align 8
  store i8* %175, i8** %176, align 8
  store i32 1, i32* %13, align 4
  br label %370

177:                                              ; preds = %107
  %178 = load i8*, i8** %26, align 8
  %179 = load i8*, i8** %15, align 8
  %180 = icmp eq i8* %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  store i32 -1, i32* %13, align 4
  br label %370

182:                                              ; preds = %177
  %183 = load i8*, i8** %26, align 8
  %184 = load i8**, i8*** %24, align 8
  store i8* %183, i8** %184, align 8
  %185 = load i8*, i8** %26, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %26, align 8
  %187 = load i8, i8* %185, align 1
  store i8 %187, i8* %29, align 1
  %188 = load i8, i8* %29, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp slt i32 %189, 33
  br i1 %190, label %195, label %191

191:                                              ; preds = %182
  %192 = load i8, i8* %29, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp sgt i32 %193, 126
  br i1 %194, label %195, label %196

195:                                              ; preds = %191, %182
  store i32 -1, i32* %13, align 4
  br label %370

196:                                              ; preds = %191
  %197 = load i8*, i8** %26, align 8
  %198 = load i8*, i8** %15, align 8
  %199 = icmp eq i8* %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  store i32 -1, i32* %13, align 4
  br label %370

201:                                              ; preds = %196
  %202 = load i8*, i8** %26, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = load i8, i8* %29, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %204, %206
  br i1 %207, label %208, label %231

208:                                              ; preds = %201
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* @IP_VS_FTP_EPSV, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  store i32 -1, i32* %13, align 4
  br label %370

213:                                              ; preds = %208
  %214 = load i8*, i8** %26, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %26, align 8
  %216 = load i8*, i8** %26, align 8
  %217 = load i8*, i8** %15, align 8
  %218 = icmp eq i8* %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  store i32 -1, i32* %13, align 4
  br label %370

220:                                              ; preds = %213
  %221 = load i8*, i8** %26, align 8
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = load i8, i8* %29, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp ne i32 %223, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  store i32 -1, i32* %13, align 4
  br label %370

228:                                              ; preds = %220
  %229 = load i8*, i8** %26, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %26, align 8
  br label %324

231:                                              ; preds = %201
  %232 = load i64, i64* %23, align 8
  %233 = load i64, i64* @AF_INET6, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %231
  %236 = load i8*, i8** %26, align 8
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp ne i32 %238, 50
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  store i32 -1, i32* %13, align 4
  br label %370

241:                                              ; preds = %235, %231
  %242 = load i64, i64* %23, align 8
  %243 = load i64, i64* @AF_INET, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %241
  %246 = load i8*, i8** %26, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp ne i32 %248, 49
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  store i32 -1, i32* %13, align 4
  br label %370

251:                                              ; preds = %245, %241
  %252 = load i8*, i8** %26, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %253, i8** %26, align 8
  %254 = load i8*, i8** %26, align 8
  %255 = load i8*, i8** %15, align 8
  %256 = icmp eq i8* %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  store i32 -1, i32* %13, align 4
  br label %370

258:                                              ; preds = %251
  %259 = load i8*, i8** %26, align 8
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = load i8, i8* %29, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp ne i32 %261, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %258
  store i32 -1, i32* %13, align 4
  br label %370

266:                                              ; preds = %258
  %267 = load i8*, i8** %26, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %26, align 8
  %269 = load i8*, i8** %26, align 8
  %270 = load i8*, i8** %15, align 8
  %271 = icmp eq i8* %269, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  store i32 -1, i32* %13, align 4
  br label %370

273:                                              ; preds = %266
  %274 = load i64, i64* %23, align 8
  %275 = load i64, i64* @AF_INET6, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %292

277:                                              ; preds = %273
  %278 = load i8*, i8** %26, align 8
  %279 = load i8*, i8** %15, align 8
  %280 = load i8*, i8** %26, align 8
  %281 = ptrtoint i8* %279 to i64
  %282 = ptrtoint i8* %280 to i64
  %283 = sub i64 %281, %282
  %284 = trunc i64 %283 to i32
  %285 = load %union.nf_inet_addr*, %union.nf_inet_addr** %21, align 8
  %286 = bitcast %union.nf_inet_addr* %285 to i32*
  %287 = load i8, i8* %29, align 1
  %288 = call i64 @in6_pton(i8* %278, i32 %284, i32* %286, i8 signext %287, i8** %33)
  %289 = icmp sle i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %277
  store i32 -1, i32* %13, align 4
  br label %370

291:                                              ; preds = %277
  br label %307

292:                                              ; preds = %273
  %293 = load i8*, i8** %26, align 8
  %294 = load i8*, i8** %15, align 8
  %295 = load i8*, i8** %26, align 8
  %296 = ptrtoint i8* %294 to i64
  %297 = ptrtoint i8* %295 to i64
  %298 = sub i64 %296, %297
  %299 = trunc i64 %298 to i32
  %300 = load %union.nf_inet_addr*, %union.nf_inet_addr** %21, align 8
  %301 = bitcast %union.nf_inet_addr* %300 to i32*
  %302 = load i8, i8* %29, align 1
  %303 = call i64 @in4_pton(i8* %293, i32 %299, i32* %301, i8 signext %302, i8** %33)
  %304 = icmp sle i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %292
  store i32 -1, i32* %13, align 4
  br label %370

306:                                              ; preds = %292
  br label %307

307:                                              ; preds = %306, %291
  %308 = load i8*, i8** %33, align 8
  store i8* %308, i8** %26, align 8
  %309 = load i8*, i8** %26, align 8
  %310 = load i8*, i8** %15, align 8
  %311 = icmp eq i8* %309, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %307
  store i32 -1, i32* %13, align 4
  br label %370

313:                                              ; preds = %307
  %314 = load i8*, i8** %26, align 8
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = load i8, i8* %29, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp ne i32 %316, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %313
  store i32 -1, i32* %13, align 4
  br label %370

321:                                              ; preds = %313
  %322 = load i8*, i8** %26, align 8
  %323 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %323, i8** %26, align 8
  br label %324

324:                                              ; preds = %321, %228
  store i64 0, i64* %30, align 8
  br label %325

325:                                              ; preds = %344, %324
  %326 = load i8*, i8** %26, align 8
  %327 = load i8*, i8** %15, align 8
  %328 = icmp eq i8* %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %325
  store i32 -1, i32* %13, align 4
  br label %370

330:                                              ; preds = %325
  %331 = load i8*, i8** %26, align 8
  %332 = load i8, i8* %331, align 1
  %333 = call i64 @isdigit(i8 signext %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %330
  br label %347

336:                                              ; preds = %330
  %337 = load i64, i64* %30, align 8
  %338 = mul nsw i64 %337, 10
  %339 = load i8*, i8** %26, align 8
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i64
  %342 = add nsw i64 %338, %341
  %343 = sub nsw i64 %342, 48
  store i64 %343, i64* %30, align 8
  br label %344

344:                                              ; preds = %336
  %345 = load i8*, i8** %26, align 8
  %346 = getelementptr inbounds i8, i8* %345, i32 1
  store i8* %346, i8** %26, align 8
  br label %325

347:                                              ; preds = %335
  %348 = load i8*, i8** %26, align 8
  %349 = load i8*, i8** %15, align 8
  %350 = icmp eq i8* %348, %349
  br i1 %350, label %361, label %351

351:                                              ; preds = %347
  %352 = load i64, i64* %30, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %351
  %355 = load i8*, i8** %26, align 8
  %356 = load i8, i8* %355, align 1
  %357 = sext i8 %356 to i32
  %358 = load i8, i8* %29, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp ne i32 %357, %359
  br i1 %360, label %361, label %362

361:                                              ; preds = %354, %351, %347
  store i32 -1, i32* %13, align 4
  br label %370

362:                                              ; preds = %354
  %363 = load i8*, i8** %26, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %26, align 8
  %365 = load i8*, i8** %26, align 8
  %366 = load i8**, i8*** %25, align 8
  store i8* %365, i8** %366, align 8
  %367 = load i64, i64* %30, align 8
  %368 = call i8* @htons(i64 %367)
  %369 = load i8**, i8*** %22, align 8
  store i8* %368, i8** %369, align 8
  store i32 1, i32* %13, align 4
  br label %370

370:                                              ; preds = %362, %361, %329, %320, %312, %305, %290, %272, %265, %257, %250, %240, %227, %219, %212, %200, %195, %181, %162, %161, %117, %71, %59, %52, %51
  %371 = load i32, i32* %13, align 4
  ret i32 %371
}

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i8* @get_unaligned(i8**) #1

declare dso_local i64 @in6_pton(i8*, i32, i32*, i8 signext, i8**) #1

declare dso_local i64 @in4_pton(i8*, i32, i32*, i8 signext, i8**) #1

declare dso_local i8* @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
