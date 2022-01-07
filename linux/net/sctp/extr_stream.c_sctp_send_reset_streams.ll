; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_send_reset_streams.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_send_reset_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, i32, %struct.sctp_chunk*, %struct.TYPE_3__, %struct.sctp_stream }
%struct.sctp_chunk = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_stream = type { i32, i32 }
%struct.sctp_reset_streams = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@SCTP_ENABLE_RESET_STREAM_REQ = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@SCTP_STREAM_RESET_OUTGOING = common dso_local global i32 0, align 4
@SCTP_STREAM_RESET_INCOMING = common dso_local global i32 0, align 4
@SCTP_MAX_CHUNK_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SCTP_STREAM_CLOSED = common dso_local global i8* null, align 8
@SCTP_STREAM_OPEN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_send_reset_streams(%struct.sctp_association* %0, %struct.sctp_reset_streams* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_reset_streams*, align 8
  %5 = alloca %struct.sctp_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sctp_chunk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_reset_streams* %1, %struct.sctp_reset_streams** %4, align 8
  %15 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %16 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %15, i32 0, i32 4
  store %struct.sctp_stream* %16, %struct.sctp_stream** %5, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %20 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %26 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SCTP_ENABLE_RESET_STREAM_REQ, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24, %2
  %32 = load i32, i32* @ENOPROTOOPT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  br label %306

34:                                               ; preds = %24
  %35 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %36 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINPROGRESS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %306

42:                                               ; preds = %34
  %43 = load %struct.sctp_reset_streams*, %struct.sctp_reset_streams** %4, align 8
  %44 = getelementptr inbounds %struct.sctp_reset_streams, %struct.sctp_reset_streams* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SCTP_STREAM_RESET_OUTGOING, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %12, align 4
  %48 = load %struct.sctp_reset_streams*, %struct.sctp_reset_streams** %4, align 8
  %49 = getelementptr inbounds %struct.sctp_reset_streams, %struct.sctp_reset_streams* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SCTP_STREAM_RESET_INCOMING, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %306

59:                                               ; preds = %55, %42
  %60 = load %struct.sctp_reset_streams*, %struct.sctp_reset_streams** %4, align 8
  %61 = getelementptr inbounds %struct.sctp_reset_streams, %struct.sctp_reset_streams* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  %63 = load %struct.sctp_reset_streams*, %struct.sctp_reset_streams** %4, align 8
  %64 = getelementptr inbounds %struct.sctp_reset_streams, %struct.sctp_reset_streams* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %138

68:                                               ; preds = %59
  store i32 0, i32* %14, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %88, %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %83 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %306

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %72

91:                                               ; preds = %72
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 4
  %95 = add i64 %94, 4
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %91, %68
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %117, %100
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %101
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %112 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp sge i32 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %306

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %101

120:                                              ; preds = %101
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = add i64 %123, 4
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %120, %97
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = load i32, i32* @SCTP_MAX_CHUNK_LEN, align 4
  %133 = sext i32 %132 to i64
  %134 = sub i64 %133, 4
  %135 = icmp ugt i64 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %306

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %59
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call i32* @kcalloc(i32 %139, i32 4, i32 %140)
  store i32* %141, i32** %11, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %10, align 4
  br label %306

147:                                              ; preds = %138
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %163, %147
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %148
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @htons(i32 %157)
  %159 = load i32*, i32** %11, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %158, i32* %162, align 4
  br label %163

163:                                              ; preds = %152
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %148

166:                                              ; preds = %148
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %166
  %170 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32*, i32** %11, align 8
  %173 = call i32 @sctp_stream_outq_is_empty(%struct.sctp_stream* %170, i32 %171, i32* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %169
  %176 = load i32*, i32** %11, align 8
  %177 = call i32 @kfree(i32* %176)
  %178 = load i32, i32* @EAGAIN, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %10, align 4
  br label %306

180:                                              ; preds = %169, %166
  %181 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %182 = load i32, i32* %7, align 4
  %183 = load i32*, i32** %11, align 8
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %13, align 4
  %186 = call %struct.sctp_chunk* @sctp_make_strreset_req(%struct.sctp_association* %181, i32 %182, i32* %183, i32 %184, i32 %185)
  store %struct.sctp_chunk* %186, %struct.sctp_chunk** %9, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = call i32 @kfree(i32* %187)
  %189 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %190 = icmp ne %struct.sctp_chunk* %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %180
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %10, align 4
  br label %306

194:                                              ; preds = %180
  %195 = load i32, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %237

197:                                              ; preds = %194
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %219

200:                                              ; preds = %197
  store i32 0, i32* %6, align 4
  br label %201

201:                                              ; preds = %215, %200
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %218

205:                                              ; preds = %201
  %206 = load i8*, i8** @SCTP_STREAM_CLOSED, align 8
  %207 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %208 = load i32*, i32** %8, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call %struct.TYPE_4__* @SCTP_SO(%struct.sctp_stream* %207, i32 %212)
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  store i8* %206, i8** %214, align 8
  br label %215

215:                                              ; preds = %205
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %6, align 4
  br label %201

218:                                              ; preds = %201
  br label %236

219:                                              ; preds = %197
  store i32 0, i32* %6, align 4
  br label %220

220:                                              ; preds = %232, %219
  %221 = load i32, i32* %6, align 4
  %222 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %223 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %235

226:                                              ; preds = %220
  %227 = load i8*, i8** @SCTP_STREAM_CLOSED, align 8
  %228 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %229 = load i32, i32* %6, align 4
  %230 = call %struct.TYPE_4__* @SCTP_SO(%struct.sctp_stream* %228, i32 %229)
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  store i8* %227, i8** %231, align 8
  br label %232

232:                                              ; preds = %226
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %6, align 4
  br label %220

235:                                              ; preds = %220
  br label %236

236:                                              ; preds = %235, %218
  br label %237

237:                                              ; preds = %236, %194
  %238 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %239 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %240 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %239, i32 0, i32 2
  store %struct.sctp_chunk* %238, %struct.sctp_chunk** %240, align 8
  %241 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %242 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %241, i32 0, i32 2
  %243 = load %struct.sctp_chunk*, %struct.sctp_chunk** %242, align 8
  %244 = call i32 @sctp_chunk_hold(%struct.sctp_chunk* %243)
  %245 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %246 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %247 = call i32 @sctp_send_reconf(%struct.sctp_association* %245, %struct.sctp_chunk* %246)
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %300

250:                                              ; preds = %237
  %251 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %252 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %251, i32 0, i32 2
  %253 = load %struct.sctp_chunk*, %struct.sctp_chunk** %252, align 8
  %254 = call i32 @sctp_chunk_put(%struct.sctp_chunk* %253)
  %255 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %256 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %255, i32 0, i32 2
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %256, align 8
  %257 = load i32, i32* %12, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %250
  br label %306

260:                                              ; preds = %250
  %261 = load i32, i32* %7, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %282

263:                                              ; preds = %260
  store i32 0, i32* %6, align 4
  br label %264

264:                                              ; preds = %278, %263
  %265 = load i32, i32* %6, align 4
  %266 = load i32, i32* %7, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %281

268:                                              ; preds = %264
  %269 = load i8*, i8** @SCTP_STREAM_OPEN, align 8
  %270 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %271 = load i32*, i32** %8, align 8
  %272 = load i32, i32* %6, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call %struct.TYPE_4__* @SCTP_SO(%struct.sctp_stream* %270, i32 %275)
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  store i8* %269, i8** %277, align 8
  br label %278

278:                                              ; preds = %268
  %279 = load i32, i32* %6, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %6, align 4
  br label %264

281:                                              ; preds = %264
  br label %299

282:                                              ; preds = %260
  store i32 0, i32* %6, align 4
  br label %283

283:                                              ; preds = %295, %282
  %284 = load i32, i32* %6, align 4
  %285 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %286 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = icmp slt i32 %284, %287
  br i1 %288, label %289, label %298

289:                                              ; preds = %283
  %290 = load i8*, i8** @SCTP_STREAM_OPEN, align 8
  %291 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %292 = load i32, i32* %6, align 4
  %293 = call %struct.TYPE_4__* @SCTP_SO(%struct.sctp_stream* %291, i32 %292)
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  store i8* %290, i8** %294, align 8
  br label %295

295:                                              ; preds = %289
  %296 = load i32, i32* %6, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %6, align 4
  br label %283

298:                                              ; preds = %283
  br label %299

299:                                              ; preds = %298, %281
  br label %306

300:                                              ; preds = %237
  %301 = load i32, i32* %12, align 4
  %302 = load i32, i32* %13, align 4
  %303 = add nsw i32 %301, %302
  %304 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %305 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %304, i32 0, i32 1
  store i32 %303, i32* %305, align 4
  br label %306

306:                                              ; preds = %300, %299, %259, %191, %175, %144, %136, %115, %86, %58, %39, %31
  %307 = load i32, i32* %10, align 4
  ret i32 %307
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @sctp_stream_outq_is_empty(%struct.sctp_stream*, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_strreset_req(%struct.sctp_association*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @SCTP_SO(%struct.sctp_stream*, i32) #1

declare dso_local i32 @sctp_chunk_hold(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_send_reconf(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_chunk_put(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
