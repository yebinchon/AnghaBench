; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_adb_allocroute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_adb_allocroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_18__*, i32*, %struct.pcm_vol*, i32*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32* }
%struct.pcm_vol = type { i32, i32*, i64* }
%struct.TYPE_16__ = type { i32 }

@VORTEX_RESOURCE_DMA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@VORTEX_PCM_SPDIF = common dso_local global i32 0, align 4
@VORTEX_RESOURCE_SRC = common dso_local global i32 0, align 4
@VORTEX_PCM_A3D = common dso_local global i32 0, align 4
@VORTEX_RESOURCE_MIXIN = common dso_local global i32 0, align 4
@VORTEX_RESOURCE_A3D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"out of A3D sources. Sorry\0A\00", align 1
@VORTEX_PCM_ADB = common dso_local global i32 0, align 4
@MIX_DEFIGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VORTEX_RESOURCE_MIXOUT = common dso_local global i32 0, align 4
@AC97_SIGMATEL_DAC2INVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i32, i32, i32, i32)* @vortex_adb_allocroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vortex_adb_allocroute(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pcm_vol*, align 8
  %18 = alloca [4 x i32], align 16
  %19 = alloca [4 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [2 x i32], align 4
  %23 = alloca [2 x i32], align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @VORTEX_RESOURCE_DMA, align 4
  %38 = call i32 @vortex_adb_checkinout(%struct.TYPE_17__* %27, i32* %35, i32 %36, i32 %37)
  br label %49

39:                                               ; preds = %6
  store i32 1, i32* %16, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @VORTEX_RESOURCE_DMA, align 4
  %43 = call i32 @vortex_adb_checkinout(%struct.TYPE_17__* %40, i32* null, i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %593

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i64 %54
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %14, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %474

68:                                               ; preds = %49
  store i32 0, i32* %21, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @VORTEX_PCM_SPDIF, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %129

74:                                               ; preds = %68
  store i32 0, i32* %15, align 4
  br label %75

75:                                               ; preds = %125, %74
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %128

79:                                               ; preds = %75
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @VORTEX_RESOURCE_SRC, align 4
  %86 = call i32 @vortex_adb_checkinout(%struct.TYPE_17__* %80, i32* %83, i32 %84, i32 %85)
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %88
  store i32 %86, i32* %89, align 4
  %90 = icmp slt i32 %86, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %79
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @memset(i32* %94, i32 0, i32 8)
  %96 = load i32, i32* @EBUSY, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %593

98:                                               ; preds = %79
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @VORTEX_PCM_A3D, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %98
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @VORTEX_RESOURCE_MIXIN, align 4
  %111 = call i32 @vortex_adb_checkinout(%struct.TYPE_17__* %105, i32* %108, i32 %109, i32 %110)
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %113
  store i32 %111, i32* %114, align 4
  %115 = icmp slt i32 %111, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %104
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @memset(i32* %119, i32 0, i32 8)
  %121 = load i32, i32* @EBUSY, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %7, align 4
  br label %593

123:                                              ; preds = %104
  br label %124

124:                                              ; preds = %123, %98
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %75

128:                                              ; preds = %75
  br label %129

129:                                              ; preds = %128, %68
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @VORTEX_PCM_A3D, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %167

135:                                              ; preds = %129
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* @VORTEX_RESOURCE_A3D, align 4
  %142 = call i32 @vortex_adb_checkinout(%struct.TYPE_17__* %136, i32* %139, i32 %140, i32 %141)
  store i32 %142, i32* %21, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %135
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @memset(i32* %147, i32 0, i32 8)
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 5
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @dev_err(i32 %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %155 = load i32, i32* @EBUSY, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %7, align 4
  br label %593

157:                                              ; preds = %135
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %21, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %16, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %166 = call i32 @vortex_Vort3D_InitializeSource(i32* %163, i32 %164, %struct.TYPE_17__* %165)
  br label %167

167:                                              ; preds = %157, %129
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @VORTEX_PCM_SPDIF, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %195

173:                                              ; preds = %167
  %174 = load i32, i32* %16, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %173
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ADB_MIXOUT(i32 %182)
  %184 = call i32 @ADB_SPDIFOUT(i32 0)
  %185 = call i32 @vortex_route(%struct.TYPE_17__* %177, i32 0, i32 20, i32 %183, i32 %184)
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ADB_MIXOUT(i32 %191)
  %193 = call i32 @ADB_SPDIFOUT(i32 1)
  %194 = call i32 @vortex_route(%struct.TYPE_17__* %186, i32 0, i32 20, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %176, %173, %167
  store i32 0, i32* %15, align 4
  br label %196

196:                                              ; preds = %307, %195
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %310

200:                                              ; preds = %196
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @VORTEX_PCM_ADB, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %260

206:                                              ; preds = %200
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* %10, align 4
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %15, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @vortex_connection_adbdma_src(%struct.TYPE_17__* %207, i32 %208, i32 %213, i32 %214, i32 %218)
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %15, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %15, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @vortex_connection_src_mixin(%struct.TYPE_17__* %220, i32 %221, i32 17, i32 %225, i32 %229)
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %232 = load i32, i32* %16, align 4
  %233 = load i32, i32* %15, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %15, align 4
  %238 = call i32 @MIX_PLAYB(i32 %237)
  %239 = call i32 @vortex_connection_mixin_mix(%struct.TYPE_17__* %231, i32 %232, i32 %236, i32 %238, i32 0)
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %15, align 4
  %247 = srem i32 %246, 2
  %248 = call i32 @MIX_SPDIF(i32 %247)
  %249 = call i32 @vortex_connection_mixin_mix(%struct.TYPE_17__* %240, i32 %241, i32 %245, i32 %248, i32 0)
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %251 = load i32, i32* %15, align 4
  %252 = srem i32 %251, 2
  %253 = call i32 @MIX_SPDIF(i32 %252)
  %254 = load i32, i32* %15, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @MIX_DEFIGAIN, align 4
  %259 = call i32 @vortex_mix_setinputvolumebyte(%struct.TYPE_17__* %250, i32 %253, i32 %257, i32 %258)
  br label %260

260:                                              ; preds = %206, %200
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @VORTEX_PCM_A3D, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %290

266:                                              ; preds = %260
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* %10, align 4
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* %15, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @vortex_connection_adbdma_src(%struct.TYPE_17__* %267, i32 %268, i32 %273, i32 %274, i32 %278)
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %281 = load i32, i32* %16, align 4
  %282 = load i32, i32* %15, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @ADB_SRCOUT(i32 %285)
  %287 = load i32, i32* %21, align 4
  %288 = call i32 @ADB_A3DIN(i32 %287)
  %289 = call i32 @vortex_route(%struct.TYPE_17__* %280, i32 %281, i32 17, i32 %286, i32 %288)
  br label %290

290:                                              ; preds = %266, %260
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @VORTEX_PCM_SPDIF, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %306

296:                                              ; preds = %290
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %298 = load i32, i32* %16, align 4
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @ADB_DMA(i32 %301)
  %303 = load i32, i32* %15, align 4
  %304 = call i32 @ADB_SPDIFOUT(i32 %303)
  %305 = call i32 @vortex_route(%struct.TYPE_17__* %297, i32 %298, i32 20, i32 %302, i32 %304)
  br label %306

306:                                              ; preds = %296, %290
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %15, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %15, align 4
  br label %196

310:                                              ; preds = %196
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @VORTEX_PCM_SPDIF, align 4
  %315 = icmp ne i32 %313, %314
  br i1 %315, label %316, label %426

316:                                              ; preds = %310
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @VORTEX_PCM_A3D, align 4
  %321 = icmp ne i32 %319, %320
  br i1 %321, label %322, label %426

322:                                              ; preds = %316
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %324 = call i64 @VORTEX_IS_QUAD(%struct.TYPE_17__* %323)
  %325 = icmp ne i64 %324, 0
  %326 = zext i1 %325 to i64
  %327 = select i1 %325, i32 4, i32 2
  store i32 %327, i32* %20, align 4
  %328 = load i32, i32* %10, align 4
  store i32 %328, i32* %15, align 4
  br label %329

329:                                              ; preds = %369, %322
  %330 = load i32, i32* %15, align 4
  %331 = load i32, i32* %20, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %372

333:                                              ; preds = %329
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %335 = load i32, i32* %16, align 4
  %336 = load i32, i32* %15, align 4
  %337 = load i32, i32* %10, align 4
  %338 = srem i32 %336, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %15, align 4
  %343 = call i32 @MIX_PLAYB(i32 %342)
  %344 = call i32 @vortex_connection_mixin_mix(%struct.TYPE_17__* %334, i32 %335, i32 %341, i32 %343, i32 0)
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %346 = load i32, i32* %16, align 4
  %347 = load i32, i32* %15, align 4
  %348 = load i32, i32* %10, align 4
  %349 = srem i32 %347, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %15, align 4
  %354 = srem i32 %353, 2
  %355 = call i32 @MIX_SPDIF(i32 %354)
  %356 = call i32 @vortex_connection_mixin_mix(%struct.TYPE_17__* %345, i32 %346, i32 %352, i32 %355, i32 0)
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %358 = load i32, i32* %15, align 4
  %359 = srem i32 %358, 2
  %360 = call i32 @MIX_SPDIF(i32 %359)
  %361 = load i32, i32* %15, align 4
  %362 = load i32, i32* %10, align 4
  %363 = srem i32 %361, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @MIX_DEFIGAIN, align 4
  %368 = call i32 @vortex_mix_setinputvolumebyte(%struct.TYPE_17__* %357, i32 %360, i32 %366, i32 %367)
  br label %369

369:                                              ; preds = %333
  %370 = load i32, i32* %15, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %15, align 4
  br label %329

372:                                              ; preds = %329
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @VORTEX_PCM_ADB, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %378, label %425

378:                                              ; preds = %372
  %379 = load i32, i32* %16, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %425

381:                                              ; preds = %378
  %382 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i32 0, i32 3
  %384 = load %struct.pcm_vol*, %struct.pcm_vol** %383, align 8
  %385 = load i32, i32* %13, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.pcm_vol, %struct.pcm_vol* %384, i64 %386
  store %struct.pcm_vol* %387, %struct.pcm_vol** %17, align 8
  %388 = load i32, i32* %9, align 4
  %389 = load %struct.pcm_vol*, %struct.pcm_vol** %17, align 8
  %390 = getelementptr inbounds %struct.pcm_vol, %struct.pcm_vol* %389, i32 0, i32 0
  store i32 %388, i32* %390, align 8
  store i32 0, i32* %15, align 4
  br label %391

391:                                              ; preds = %406, %381
  %392 = load i32, i32* %15, align 4
  %393 = load i32, i32* %10, align 4
  %394 = icmp slt i32 %392, %393
  br i1 %394, label %395, label %409

395:                                              ; preds = %391
  %396 = load i32, i32* %15, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.pcm_vol*, %struct.pcm_vol** %17, align 8
  %401 = getelementptr inbounds %struct.pcm_vol, %struct.pcm_vol* %400, i32 0, i32 1
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %15, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  store i32 %399, i32* %405, align 4
  br label %406

406:                                              ; preds = %395
  %407 = load i32, i32* %15, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %15, align 4
  br label %391

409:                                              ; preds = %391
  store i32 0, i32* %15, align 4
  br label %410

410:                                              ; preds = %421, %409
  %411 = load i32, i32* %15, align 4
  %412 = load i32, i32* %20, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %424

414:                                              ; preds = %410
  %415 = load %struct.pcm_vol*, %struct.pcm_vol** %17, align 8
  %416 = getelementptr inbounds %struct.pcm_vol, %struct.pcm_vol* %415, i32 0, i32 2
  %417 = load i64*, i64** %416, align 8
  %418 = load i32, i32* %15, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i64, i64* %417, i64 %419
  store i64 0, i64* %420, align 8
  br label %421

421:                                              ; preds = %414
  %422 = load i32, i32* %15, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %15, align 4
  br label %410

424:                                              ; preds = %410
  br label %425

425:                                              ; preds = %424, %378, %372
  br label %445

426:                                              ; preds = %316, %310
  %427 = load i32, i32* %10, align 4
  %428 = icmp eq i32 %427, 1
  br i1 %428, label %429, label %444

429:                                              ; preds = %426
  %430 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %431 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 8
  %433 = load i32, i32* @VORTEX_PCM_SPDIF, align 4
  %434 = icmp eq i32 %432, %433
  br i1 %434, label %435, label %444

435:                                              ; preds = %429
  %436 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %437 = load i32, i32* %16, align 4
  %438 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %439 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = call i32 @ADB_DMA(i32 %440)
  %442 = call i32 @ADB_SPDIFOUT(i32 1)
  %443 = call i32 @vortex_route(%struct.TYPE_17__* %436, i32 %437, i32 20, i32 %441, i32 %442)
  br label %444

444:                                              ; preds = %435, %429, %426
  br label %445

445:                                              ; preds = %444, %425
  %446 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @VORTEX_PCM_SPDIF, align 4
  %450 = icmp eq i32 %448, %449
  br i1 %450, label %451, label %473

451:                                              ; preds = %445
  %452 = load i32, i32* %16, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %473, label %454

454:                                              ; preds = %451
  %455 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %456 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %457 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %456, i32 0, i32 2
  %458 = load i32*, i32** %457, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 0
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @ADB_MIXOUT(i32 %460)
  %462 = call i32 @ADB_SPDIFOUT(i32 0)
  %463 = call i32 @vortex_route(%struct.TYPE_17__* %455, i32 1, i32 20, i32 %461, i32 %462)
  %464 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %465 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %466 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %465, i32 0, i32 2
  %467 = load i32*, i32** %466, align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 1
  %469 = load i32, i32* %468, align 4
  %470 = call i32 @ADB_MIXOUT(i32 %469)
  %471 = call i32 @ADB_SPDIFOUT(i32 1)
  %472 = call i32 @vortex_route(%struct.TYPE_17__* %464, i32 1, i32 20, i32 %470, i32 %471)
  br label %473

473:                                              ; preds = %454, %451, %445
  br label %583

474:                                              ; preds = %49
  %475 = load i32, i32* %10, align 4
  %476 = icmp slt i32 %475, 1
  br i1 %476, label %477, label %480

477:                                              ; preds = %474
  %478 = load i32, i32* @EINVAL, align 4
  %479 = sub nsw i32 0, %478
  store i32 %479, i32* %7, align 4
  br label %593

480:                                              ; preds = %474
  store i32 0, i32* %15, align 4
  br label %481

481:                                              ; preds = %524, %480
  %482 = load i32, i32* %15, align 4
  %483 = load i32, i32* %10, align 4
  %484 = icmp slt i32 %482, %483
  br i1 %484, label %485, label %527

485:                                              ; preds = %481
  %486 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %487 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %488 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %487, i32 0, i32 4
  %489 = load i32*, i32** %488, align 8
  %490 = load i32, i32* %16, align 4
  %491 = load i32, i32* @VORTEX_RESOURCE_MIXOUT, align 4
  %492 = call i32 @vortex_adb_checkinout(%struct.TYPE_17__* %486, i32* %489, i32 %490, i32 %491)
  %493 = load i32, i32* %15, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %494
  store i32 %492, i32* %495, align 4
  %496 = icmp slt i32 %492, 0
  br i1 %496, label %497, label %504

497:                                              ; preds = %485
  %498 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %499 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %498, i32 0, i32 4
  %500 = load i32*, i32** %499, align 8
  %501 = call i32 @memset(i32* %500, i32 0, i32 8)
  %502 = load i32, i32* @EBUSY, align 4
  %503 = sub nsw i32 0, %502
  store i32 %503, i32* %7, align 4
  br label %593

504:                                              ; preds = %485
  %505 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %506 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %507 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %506, i32 0, i32 4
  %508 = load i32*, i32** %507, align 8
  %509 = load i32, i32* %16, align 4
  %510 = load i32, i32* @VORTEX_RESOURCE_SRC, align 4
  %511 = call i32 @vortex_adb_checkinout(%struct.TYPE_17__* %505, i32* %508, i32 %509, i32 %510)
  %512 = load i32, i32* %15, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 %513
  store i32 %511, i32* %514, align 4
  %515 = icmp slt i32 %511, 0
  br i1 %515, label %516, label %523

516:                                              ; preds = %504
  %517 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %518 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %517, i32 0, i32 4
  %519 = load i32*, i32** %518, align 8
  %520 = call i32 @memset(i32* %519, i32 0, i32 8)
  %521 = load i32, i32* @EBUSY, align 4
  %522 = sub nsw i32 0, %521
  store i32 %522, i32* %7, align 4
  br label %593

523:                                              ; preds = %504
  br label %524

524:                                              ; preds = %523
  %525 = load i32, i32* %15, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %15, align 4
  br label %481

527:                                              ; preds = %481
  %528 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %529 = load i32, i32* %16, align 4
  %530 = call i32 @MIX_CAPT(i32 0)
  %531 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %532 = load i32, i32* %531, align 4
  %533 = call i32 @vortex_connection_mixin_mix(%struct.TYPE_17__* %528, i32 %529, i32 %530, i32 %532, i32 0)
  %534 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %535 = load i32, i32* %16, align 4
  %536 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %537 = load i32, i32* %536, align 4
  %538 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %539 = load i32, i32* %538, align 4
  %540 = call i32 @vortex_connection_mix_src(%struct.TYPE_17__* %534, i32 %535, i32 17, i32 %537, i32 %539)
  %541 = load i32, i32* %10, align 4
  %542 = icmp eq i32 %541, 1
  br i1 %542, label %543, label %558

543:                                              ; preds = %527
  %544 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %545 = load i32, i32* %16, align 4
  %546 = call i32 @MIX_CAPT(i32 1)
  %547 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %548 = load i32, i32* %547, align 4
  %549 = call i32 @vortex_connection_mixin_mix(%struct.TYPE_17__* %544, i32 %545, i32 %546, i32 %548, i32 0)
  %550 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %551 = load i32, i32* %16, align 4
  %552 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %553 = load i32, i32* %552, align 4
  %554 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %555 = load i32, i32* %554, align 4
  %556 = load i32, i32* %9, align 4
  %557 = call i32 @vortex_connection_src_adbdma(%struct.TYPE_17__* %550, i32 %551, i32 %553, i32 %555, i32 %556)
  br label %582

558:                                              ; preds = %527
  %559 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %560 = load i32, i32* %16, align 4
  %561 = call i32 @MIX_CAPT(i32 1)
  %562 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %563 = load i32, i32* %562, align 4
  %564 = call i32 @vortex_connection_mixin_mix(%struct.TYPE_17__* %559, i32 %560, i32 %561, i32 %563, i32 0)
  %565 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %566 = load i32, i32* %16, align 4
  %567 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %568 = load i32, i32* %567, align 4
  %569 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %570 = load i32, i32* %569, align 4
  %571 = call i32 @vortex_connection_mix_src(%struct.TYPE_17__* %565, i32 %566, i32 17, i32 %568, i32 %570)
  %572 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %573 = load i32, i32* %16, align 4
  %574 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %575 = load i32, i32* %574, align 4
  %576 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %577 = load i32, i32* %576, align 4
  %578 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %579 = load i32, i32* %578, align 4
  %580 = load i32, i32* %9, align 4
  %581 = call i32 @vortex_connection_src_src_adbdma(%struct.TYPE_17__* %572, i32 %573, i32 %575, i32 %577, i32 %579, i32 %580)
  br label %582

582:                                              ; preds = %558, %543
  br label %583

583:                                              ; preds = %582, %473
  %584 = load i32, i32* %10, align 4
  %585 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %586 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %585, i32 0, i32 1
  %587 = load %struct.TYPE_18__*, %struct.TYPE_18__** %586, align 8
  %588 = load i32, i32* %9, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %587, i64 %589
  %591 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %590, i32 0, i32 3
  store i32 %584, i32* %591, align 4
  %592 = load i32, i32* %9, align 4
  store i32 %592, i32* %7, align 4
  br label %593

593:                                              ; preds = %583, %516, %497, %477, %144, %116, %91, %45
  %594 = load i32, i32* %7, align 4
  ret i32 %594
}

declare dso_local i32 @vortex_adb_checkinout(%struct.TYPE_17__*, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @vortex_Vort3D_InitializeSource(i32*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @vortex_route(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @ADB_MIXOUT(i32) #1

declare dso_local i32 @ADB_SPDIFOUT(i32) #1

declare dso_local i32 @vortex_connection_adbdma_src(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @vortex_connection_src_mixin(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @vortex_connection_mixin_mix(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @MIX_PLAYB(i32) #1

declare dso_local i32 @MIX_SPDIF(i32) #1

declare dso_local i32 @vortex_mix_setinputvolumebyte(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @ADB_SRCOUT(i32) #1

declare dso_local i32 @ADB_A3DIN(i32) #1

declare dso_local i32 @ADB_DMA(i32) #1

declare dso_local i64 @VORTEX_IS_QUAD(%struct.TYPE_17__*) #1

declare dso_local i32 @MIX_CAPT(i32) #1

declare dso_local i32 @vortex_connection_mix_src(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @vortex_connection_src_adbdma(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @vortex_connection_src_src_adbdma(%struct.TYPE_17__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
