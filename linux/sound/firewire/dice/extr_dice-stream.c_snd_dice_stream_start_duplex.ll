; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_snd_dice_stream_start_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_snd_dice_stream_start_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i64, i64**, i64**, i32, i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.reg_params = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@MAX_STREAMS = common dso_local global i32 0, align 4
@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"fail to enable interface\0A\00", align 1
@CALLBACK_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dice_stream_start_duplex(%struct.snd_dice* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_dice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.reg_params, align 4
  %6 = alloca %struct.reg_params, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %3, align 8
  %11 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %12 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %11, i32 0, i32 7
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %18 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %270

24:                                               ; preds = %1
  %25 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %26 = call i32 @get_register_params(%struct.snd_dice* %25, %struct.reg_params* %5, %struct.reg_params* %6)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %2, align 4
  br label %270

31:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %61, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MAX_STREAMS, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %38 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i64 @amdtp_streaming_error(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %36
  %46 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %47 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i64 @amdtp_streaming_error(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45, %36
  %55 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %56 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %55, i32 0, i32 3
  %57 = call i32 @amdtp_domain_stop(i32* %56)
  %58 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %59 = call i32 @finish_session(%struct.snd_dice* %58, %struct.reg_params* %5, %struct.reg_params* %6)
  br label %64

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %32

64:                                               ; preds = %54, %32
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %67 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %66, i32 0, i32 6
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = call %struct.TYPE_6__* @fw_parent_device(%struct.TYPE_7__* %68)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %65, %73
  br i1 %74, label %75, label %111

75:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %107, %75
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @MAX_STREAMS, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %110

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = getelementptr inbounds %struct.reg_params, %struct.reg_params* %5, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ult i32 %81, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %87 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %86, i32 0, i32 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %90
  %92 = call i32 @fw_iso_resources_update(%struct.TYPE_8__* %91)
  br label %93

93:                                               ; preds = %85, %80
  %94 = load i32, i32* %7, align 4
  %95 = getelementptr inbounds %struct.reg_params, %struct.reg_params* %6, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ult i32 %94, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %100 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %99, i32 0, i32 7
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %103
  %105 = call i32 @fw_iso_resources_update(%struct.TYPE_8__* %104)
  br label %106

106:                                              ; preds = %98, %93
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %76

110:                                              ; preds = %76
  br label %111

111:                                              ; preds = %110, %64
  %112 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %113 = call i32 @snd_dice_transaction_get_rate(%struct.snd_dice* %112, i32* %8)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %2, align 4
  br label %270

118:                                              ; preds = %111
  %119 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @snd_dice_stream_get_rate_mode(%struct.snd_dice* %119, i32 %120, i32* %9)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %2, align 4
  br label %270

126:                                              ; preds = %118
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %178, %126
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @MAX_STREAMS, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %131, label %181

131:                                              ; preds = %127
  %132 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %133 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %132, i32 0, i32 1
  %134 = load i64**, i64*** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i64*, i64** %134, i64 %136
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %131
  %145 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %146 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %145, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = call i32 @amdtp_stream_running(i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %144
  br label %181

154:                                              ; preds = %144, %131
  %155 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %156 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %155, i32 0, i32 2
  %157 = load i64**, i64*** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i64*, i64** %157, i64 %159
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = icmp sgt i64 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %154
  %168 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %169 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = call i32 @amdtp_stream_running(i32* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %167
  br label %181

177:                                              ; preds = %167, %154
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %7, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %127

181:                                              ; preds = %176, %153, %127
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @MAX_STREAMS, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %185, label %262

185:                                              ; preds = %181
  %186 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %187 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @start_streams(%struct.snd_dice* %186, i32 %187, i32 %188, %struct.reg_params* %5)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  br label %263

193:                                              ; preds = %185
  %194 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %195 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @start_streams(%struct.snd_dice* %194, i32 %195, i32 %196, %struct.reg_params* %6)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %263

201:                                              ; preds = %193
  %202 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %203 = call i32 @snd_dice_transaction_set_enable(%struct.snd_dice* %202)
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %208 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %207, i32 0, i32 6
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = call i32 @dev_err(i32* %210, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %263

212:                                              ; preds = %201
  %213 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %214 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %213, i32 0, i32 3
  %215 = call i32 @amdtp_domain_start(i32* %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  br label %263

219:                                              ; preds = %212
  store i32 0, i32* %7, align 4
  br label %220

220:                                              ; preds = %258, %219
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @MAX_STREAMS, align 4
  %223 = icmp ult i32 %221, %222
  br i1 %223, label %224, label %261

224:                                              ; preds = %220
  %225 = load i32, i32* %7, align 4
  %226 = getelementptr inbounds %struct.reg_params, %struct.reg_params* %5, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp ult i32 %225, %227
  br i1 %228, label %229, label %239

229:                                              ; preds = %224
  %230 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %231 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %230, i32 0, i32 5
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %7, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* @CALLBACK_TIMEOUT, align 4
  %237 = call i32 @amdtp_stream_wait_callback(i32* %235, i32 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %254

239:                                              ; preds = %229, %224
  %240 = load i32, i32* %7, align 4
  %241 = getelementptr inbounds %struct.reg_params, %struct.reg_params* %6, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp ult i32 %240, %242
  br i1 %243, label %244, label %257

244:                                              ; preds = %239
  %245 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %246 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %245, i32 0, i32 4
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* @CALLBACK_TIMEOUT, align 4
  %252 = call i32 @amdtp_stream_wait_callback(i32* %250, i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %244, %229
  %255 = load i32, i32* @ETIMEDOUT, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %10, align 4
  br label %263

257:                                              ; preds = %244, %239
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %7, align 4
  %260 = add i32 %259, 1
  store i32 %260, i32* %7, align 4
  br label %220

261:                                              ; preds = %220
  br label %262

262:                                              ; preds = %261, %181
  store i32 0, i32* %2, align 4
  br label %270

263:                                              ; preds = %254, %218, %206, %200, %192
  %264 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %265 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %264, i32 0, i32 3
  %266 = call i32 @amdtp_domain_stop(i32* %265)
  %267 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %268 = call i32 @finish_session(%struct.snd_dice* %267, %struct.reg_params* %5, %struct.reg_params* %6)
  %269 = load i32, i32* %10, align 4
  store i32 %269, i32* %2, align 4
  br label %270

270:                                              ; preds = %263, %262, %124, %116, %29, %21
  %271 = load i32, i32* %2, align 4
  ret i32 %271
}

declare dso_local i32 @get_register_params(%struct.snd_dice*, %struct.reg_params*, %struct.reg_params*) #1

declare dso_local i64 @amdtp_streaming_error(i32*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @finish_session(%struct.snd_dice*, %struct.reg_params*, %struct.reg_params*) #1

declare dso_local %struct.TYPE_6__* @fw_parent_device(%struct.TYPE_7__*) #1

declare dso_local i32 @fw_iso_resources_update(%struct.TYPE_8__*) #1

declare dso_local i32 @snd_dice_transaction_get_rate(%struct.snd_dice*, i32*) #1

declare dso_local i32 @snd_dice_stream_get_rate_mode(%struct.snd_dice*, i32, i32*) #1

declare dso_local i32 @amdtp_stream_running(i32*) #1

declare dso_local i32 @start_streams(%struct.snd_dice*, i32, i32, %struct.reg_params*) #1

declare dso_local i32 @snd_dice_transaction_set_enable(%struct.snd_dice*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @amdtp_domain_start(i32*) #1

declare dso_local i32 @amdtp_stream_wait_callback(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
