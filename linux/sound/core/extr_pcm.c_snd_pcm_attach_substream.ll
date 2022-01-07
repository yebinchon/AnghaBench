; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm.c_snd_pcm_attach_substream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm.c_snd_pcm_attach_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { i32, i32, %struct.snd_pcm_str*, %struct.snd_card* }
%struct.snd_pcm_str = type { i32, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32, i32, i32, i32, i32, %struct.snd_pcm_runtime*, %struct.snd_pcm_substream* }
%struct.snd_pcm_runtime = type { %struct.TYPE_3__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_card = type { i32 }
%struct.file = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SND_CTL_SUBDEV_PCM = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_OPEN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_attach_substream(%struct.snd_pcm* %0, i32 %1, %struct.file* %2, %struct.snd_pcm_substream** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.snd_pcm_substream**, align 8
  %10 = alloca %struct.snd_pcm_str*, align 8
  %11 = alloca %struct.snd_pcm_substream*, align 8
  %12 = alloca %struct.snd_pcm_runtime*, align 8
  %13 = alloca %struct.snd_card*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.snd_pcm* %0, %struct.snd_pcm** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.file* %2, %struct.file** %8, align 8
  store %struct.snd_pcm_substream** %3, %struct.snd_pcm_substream*** %9, align 8
  %17 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %18 = icmp ne %struct.snd_pcm* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %9, align 8
  %21 = icmp ne %struct.snd_pcm_substream** %20, null
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %4
  %24 = phi i1 [ true, %4 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @snd_BUG_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %298

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %38 = icmp ne i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @snd_BUG_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %298

47:                                               ; preds = %39
  %48 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %9, align 8
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %48, align 8
  %49 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %50 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %49, i32 0, i32 2
  %51 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %51, i64 %53
  store %struct.snd_pcm_str* %54, %struct.snd_pcm_str** %10, align 8
  %55 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %10, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %55, i32 0, i32 2
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %56, align 8
  %58 = icmp eq %struct.snd_pcm_substream* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %47
  %60 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %10, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %47
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %298

67:                                               ; preds = %59
  %68 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %69 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %68, i32 0, i32 3
  %70 = load %struct.snd_card*, %struct.snd_card** %69, align 8
  store %struct.snd_card* %70, %struct.snd_card** %13, align 8
  %71 = load %struct.snd_card*, %struct.snd_card** %13, align 8
  %72 = load i32, i32* @SND_CTL_SUBDEV_PCM, align 4
  %73 = call i32 @snd_ctl_get_preferred_subdevice(%struct.snd_card* %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %75 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SNDRV_PCM_INFO_HALF_DUPLEX, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %67
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %16, align 4
  %85 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %86 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %85, i32 0, i32 2
  %87 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %86, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %87, i64 %89
  %91 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %90, i32 0, i32 2
  %92 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %91, align 8
  store %struct.snd_pcm_substream* %92, %struct.snd_pcm_substream** %11, align 8
  br label %93

93:                                               ; preds = %104, %80
  %94 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %95 = icmp ne %struct.snd_pcm_substream* %94, null
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %98 = call i64 @SUBSTREAM_BUSY(%struct.snd_pcm_substream* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* @EAGAIN, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %298

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %105, i32 0, i32 6
  %107 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %106, align 8
  store %struct.snd_pcm_substream* %107, %struct.snd_pcm_substream** %11, align 8
  br label %93

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %67
  %110 = load %struct.file*, %struct.file** %8, align 8
  %111 = getelementptr inbounds %struct.file, %struct.file* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @O_APPEND, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %171

116:                                              ; preds = %109
  %117 = load i32, i32* %14, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %10, align 8
  %121 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %122, 1
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %298

127:                                              ; preds = %119
  %128 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %10, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %128, i32 0, i32 2
  %130 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %129, align 8
  store %struct.snd_pcm_substream* %130, %struct.snd_pcm_substream** %11, align 8
  br label %151

131:                                              ; preds = %116
  %132 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %10, align 8
  %133 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %132, i32 0, i32 2
  %134 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %133, align 8
  store %struct.snd_pcm_substream* %134, %struct.snd_pcm_substream** %11, align 8
  br label %135

135:                                              ; preds = %146, %131
  %136 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %137 = icmp ne %struct.snd_pcm_substream* %136, null
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  %139 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %140 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %150

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %148 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %147, i32 0, i32 6
  %149 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %148, align 8
  store %struct.snd_pcm_substream* %149, %struct.snd_pcm_substream** %11, align 8
  br label %135

150:                                              ; preds = %144, %135
  br label %151

151:                                              ; preds = %150, %127
  %152 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %153 = icmp ne %struct.snd_pcm_substream* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* @ENODEV, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %5, align 4
  br label %298

157:                                              ; preds = %151
  %158 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %159 = call i64 @SUBSTREAM_BUSY(%struct.snd_pcm_substream* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* @EBADFD, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %5, align 4
  br label %298

164:                                              ; preds = %157
  %165 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %166 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %170 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %9, align 8
  store %struct.snd_pcm_substream* %169, %struct.snd_pcm_substream** %170, align 8
  store i32 0, i32* %5, align 4
  br label %298

171:                                              ; preds = %109
  %172 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %10, align 8
  %173 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %172, i32 0, i32 2
  %174 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %173, align 8
  store %struct.snd_pcm_substream* %174, %struct.snd_pcm_substream** %11, align 8
  br label %175

175:                                              ; preds = %193, %171
  %176 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %177 = icmp ne %struct.snd_pcm_substream* %176, null
  br i1 %177, label %178, label %197

178:                                              ; preds = %175
  %179 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %180 = call i64 @SUBSTREAM_BUSY(%struct.snd_pcm_substream* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %14, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %191, label %185

185:                                              ; preds = %182
  %186 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %187 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %185, %182
  br label %197

192:                                              ; preds = %185, %178
  br label %193

193:                                              ; preds = %192
  %194 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %195 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %194, i32 0, i32 6
  %196 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %195, align 8
  store %struct.snd_pcm_substream* %196, %struct.snd_pcm_substream** %11, align 8
  br label %175

197:                                              ; preds = %191, %175
  %198 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %199 = icmp eq %struct.snd_pcm_substream* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* @EAGAIN, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %5, align 4
  br label %298

203:                                              ; preds = %197
  %204 = load i32, i32* @GFP_KERNEL, align 4
  %205 = call %struct.snd_pcm_runtime* @kzalloc(i32 24, i32 %204)
  store %struct.snd_pcm_runtime* %205, %struct.snd_pcm_runtime** %12, align 8
  %206 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %207 = icmp eq %struct.snd_pcm_runtime* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %5, align 4
  br label %298

211:                                              ; preds = %203
  %212 = call i64 @PAGE_ALIGN(i32 4)
  store i64 %212, i64* %15, align 8
  %213 = load i64, i64* %15, align 8
  %214 = load i32, i32* @GFP_KERNEL, align 4
  %215 = call i8* @alloc_pages_exact(i64 %213, i32 %214)
  %216 = bitcast i8* %215 to %struct.TYPE_3__*
  %217 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %218 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %217, i32 0, i32 0
  store %struct.TYPE_3__* %216, %struct.TYPE_3__** %218, align 8
  %219 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %220 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %219, i32 0, i32 0
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %220, align 8
  %222 = icmp eq %struct.TYPE_3__* %221, null
  br i1 %222, label %223, label %228

223:                                              ; preds = %211
  %224 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %225 = call i32 @kfree(%struct.snd_pcm_runtime* %224)
  %226 = load i32, i32* @ENOMEM, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %5, align 4
  br label %298

228:                                              ; preds = %211
  %229 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %230 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %229, i32 0, i32 0
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %230, align 8
  %232 = load i64, i64* %15, align 8
  %233 = call i32 @memset(%struct.TYPE_3__* %231, i32 0, i64 %232)
  %234 = call i64 @PAGE_ALIGN(i32 4)
  store i64 %234, i64* %15, align 8
  %235 = load i64, i64* %15, align 8
  %236 = load i32, i32* @GFP_KERNEL, align 4
  %237 = call i8* @alloc_pages_exact(i64 %235, i32 %236)
  %238 = bitcast i8* %237 to %struct.TYPE_3__*
  %239 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %240 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %239, i32 0, i32 3
  store %struct.TYPE_3__* %238, %struct.TYPE_3__** %240, align 8
  %241 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %242 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %241, i32 0, i32 3
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %242, align 8
  %244 = icmp eq %struct.TYPE_3__* %243, null
  br i1 %244, label %245, label %255

245:                                              ; preds = %228
  %246 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %247 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %246, i32 0, i32 0
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %247, align 8
  %249 = call i64 @PAGE_ALIGN(i32 4)
  %250 = call i32 @free_pages_exact(%struct.TYPE_3__* %248, i64 %249)
  %251 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %252 = call i32 @kfree(%struct.snd_pcm_runtime* %251)
  %253 = load i32, i32* @ENOMEM, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %5, align 4
  br label %298

255:                                              ; preds = %228
  %256 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %257 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %256, i32 0, i32 3
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %257, align 8
  %259 = load i64, i64* %15, align 8
  %260 = call i32 @memset(%struct.TYPE_3__* %258, i32 0, i64 %259)
  %261 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %262 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %261, i32 0, i32 2
  %263 = call i32 @init_waitqueue_head(i32* %262)
  %264 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %265 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %264, i32 0, i32 1
  %266 = call i32 @init_waitqueue_head(i32* %265)
  %267 = load i32, i32* @SNDRV_PCM_STATE_OPEN, align 4
  %268 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %269 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %268, i32 0, i32 0
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 0
  store i32 %267, i32* %271, align 4
  %272 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  %273 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %274 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %273, i32 0, i32 5
  store %struct.snd_pcm_runtime* %272, %struct.snd_pcm_runtime** %274, align 8
  %275 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %276 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %279 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %278, i32 0, i32 4
  store i32 %277, i32* %279, align 8
  %280 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %281 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %280, i32 0, i32 1
  store i32 1, i32* %281, align 4
  %282 = load %struct.file*, %struct.file** %8, align 8
  %283 = getelementptr inbounds %struct.file, %struct.file* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %286 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %285, i32 0, i32 2
  store i32 %284, i32* %286, align 8
  %287 = load i32, i32* @current, align 4
  %288 = call i32 @task_pid(i32 %287)
  %289 = call i32 @get_pid(i32 %288)
  %290 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %291 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %290, i32 0, i32 3
  store i32 %289, i32* %291, align 4
  %292 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %10, align 8
  %293 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %293, align 4
  %296 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %297 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %9, align 8
  store %struct.snd_pcm_substream* %296, %struct.snd_pcm_substream** %297, align 8
  store i32 0, i32* %5, align 4
  br label %298

298:                                              ; preds = %255, %245, %223, %208, %200, %164, %161, %154, %124, %100, %64, %44, %28
  %299 = load i32, i32* %5, align 4
  ret i32 %299
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_ctl_get_preferred_subdevice(%struct.snd_card*, i32) #1

declare dso_local i64 @SUBSTREAM_BUSY(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_pcm_runtime* @kzalloc(i32, i32) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i8* @alloc_pages_exact(i64, i32) #1

declare dso_local i32 @kfree(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i64) #1

declare dso_local i32 @free_pages_exact(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @get_pid(i32) #1

declare dso_local i32 @task_pid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
