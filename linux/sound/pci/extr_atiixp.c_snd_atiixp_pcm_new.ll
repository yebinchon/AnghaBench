; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp = type { i32, %struct.TYPE_8__**, i32, %struct.snd_pcm**, i64, i32, %struct.TYPE_7__**, %struct.TYPE_5__*, %struct.snd_ac97_bus* }
%struct.TYPE_8__ = type { %struct.snd_pcm_chmap** }
%struct.snd_pcm_chmap = type { i32 }
%struct.snd_pcm = type { i32, %struct.atiixp* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.snd_ac97_bus = type { %struct.TYPE_7__* }

@snd_atiixp_playback_dma_ops = common dso_local global i32 0, align 4
@ATI_DMA_PLAYBACK = common dso_local global i64 0, align 8
@snd_atiixp_capture_dma_ops = common dso_local global i32 0, align 4
@ATI_DMA_CAPTURE = common dso_local global i64 0, align 8
@snd_atiixp_spdif_dma_ops = common dso_local global i32 0, align 4
@ATI_DMA_SPDIF = common dso_local global i64 0, align 8
@atiixp_pcm_defs = common dso_local global i32 0, align 4
@ATI_PCM_OUT = common dso_local global i64 0, align 8
@AC97_SLOT_PCM_SLEFT = common dso_local global i32 0, align 4
@AC97_SLOT_LFE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ATI IXP AC97\00", align 1
@ATI_PCMDEV_ANALOG = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@snd_atiixp_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@snd_atiixp_capture_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@snd_pcm_alt_chmaps = common dso_local global i32 0, align 4
@SND_PCM_CHMAP_MASK_2468 = common dso_local global i32 0, align 4
@ATI_PCM_SPDIF = common dso_local global i64 0, align 8
@SNDRV_PCM_RATE_48000 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"ATI IXP IEC958\00", align 1
@ATI_PCMDEV_DIGITAL = common dso_local global i64 0, align 8
@snd_atiixp_spdif_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"ATI IXP IEC958 (AC97)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ATI IXP IEC958 (Direct)\00", align 1
@NUM_ATI_CODECS = common dso_local global i32 0, align 4
@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atiixp*)* @snd_atiixp_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_pcm_new(%struct.atiixp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atiixp*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca %struct.snd_pcm_chmap*, align 8
  %6 = alloca %struct.snd_ac97_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atiixp* %0, %struct.atiixp** %3, align 8
  %10 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %11 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %10, i32 0, i32 8
  %12 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %11, align 8
  store %struct.snd_ac97_bus* %12, %struct.snd_ac97_bus** %6, align 8
  %13 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %14 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %13, i32 0, i32 7
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i64, i64* @ATI_DMA_PLAYBACK, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32* @snd_atiixp_playback_dma_ops, i32** %18, align 8
  %19 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %20 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %19, i32 0, i32 7
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i64, i64* @ATI_DMA_CAPTURE, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32* @snd_atiixp_capture_dma_ops, i32** %24, align 8
  %25 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %26 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %1
  %30 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %31 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %30, i32 0, i32 7
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i64, i64* @ATI_DMA_SPDIF, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32* @snd_atiixp_spdif_dma_ops, i32** %35, align 8
  br label %36

36:                                               ; preds = %29, %1
  %37 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %38 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 3, i32* %9, align 4
  br label %43

42:                                               ; preds = %36
  store i32 2, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @atiixp_pcm_defs, align 4
  %47 = call i32 @snd_ac97_pcm_assign(%struct.snd_ac97_bus* %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %282

52:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %6, align 8
  %59 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %65 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %64, i32 0, i32 6
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %66, i64 %68
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %69, align 8
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %53

73:                                               ; preds = %53
  %74 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %75 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %74, i32 0, i32 0
  store i32 2, i32* %75, align 8
  %76 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %6, align 8
  %77 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i64, i64* @ATI_PCM_OUT, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @AC97_SLOT_PCM_SLEFT, align 4
  %87 = shl i32 1, %86
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %73
  %91 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %6, align 8
  %92 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load i64, i64* @ATI_PCM_OUT, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @AC97_SLOT_LFE, align 4
  %102 = shl i32 1, %101
  %103 = and i32 %100, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %90
  %106 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %107 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %106, i32 0, i32 0
  store i32 6, i32* %107, align 8
  br label %111

108:                                              ; preds = %90
  %109 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %110 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %109, i32 0, i32 0
  store i32 4, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %73
  %113 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %114 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* @ATI_PCMDEV_ANALOG, align 8
  %117 = call i32 @snd_pcm_new(i32 %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %116, i32 1, i32 1, %struct.snd_pcm** %4)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %282

122:                                              ; preds = %112
  %123 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %124 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %125 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %123, i64 %124, i32* @snd_atiixp_playback_ops)
  %126 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %127 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %128 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %126, i64 %127, i32* @snd_atiixp_capture_ops)
  %129 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %130 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %131 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %130, i32 0, i32 1
  store %struct.atiixp* %129, %struct.atiixp** %131, align 8
  %132 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %133 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @strcpy(i32 %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %136 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %137 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %138 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %137, i32 0, i32 3
  %139 = load %struct.snd_pcm**, %struct.snd_pcm*** %138, align 8
  %140 = load i64, i64* @ATI_PCMDEV_ANALOG, align 8
  %141 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %139, i64 %140
  store %struct.snd_pcm* %136, %struct.snd_pcm** %141, align 8
  %142 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %143 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %144 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %145 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @snd_dma_pci_data(i32 %146)
  %148 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %142, i32 %143, i32 %147, i32 65536, i32 131072)
  %149 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %150 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %151 = load i32, i32* @snd_pcm_alt_chmaps, align 4
  %152 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %153 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm* %149, i64 %150, i32 %151, i32 %154, i32 0, %struct.snd_pcm_chmap** %5)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %122
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %2, align 4
  br label %282

160:                                              ; preds = %122
  %161 = load i32, i32* @SND_PCM_CHMAP_MASK_2468, align 4
  %162 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %5, align 8
  %163 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %5, align 8
  %165 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %166 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %165, i32 0, i32 1
  %167 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %167, i64 0
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load %struct.snd_pcm_chmap**, %struct.snd_pcm_chmap*** %170, align 8
  %172 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %173 = getelementptr inbounds %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %171, i64 %172
  store %struct.snd_pcm_chmap* %164, %struct.snd_pcm_chmap** %173, align 8
  %174 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %175 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %174, i32 0, i32 6
  %176 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %175, align 8
  %177 = load i64, i64* @ATI_PCM_SPDIF, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %176, i64 %177
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = icmp ne %struct.TYPE_7__* %179, null
  br i1 %180, label %181, label %192

181:                                              ; preds = %160
  %182 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %183 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %182, i32 0, i32 6
  %184 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %183, align 8
  %185 = load i64, i64* @ATI_PCM_SPDIF, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %184, i64 %185
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %181
  store i32 0, i32* %2, align 4
  br label %282

192:                                              ; preds = %181, %160
  %193 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %194 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %193, i32 0, i32 6
  %195 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %194, align 8
  %196 = load i64, i64* @ATI_PCM_SPDIF, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %195, i64 %196
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = icmp ne %struct.TYPE_7__* %198, null
  br i1 %199, label %200, label %209

200:                                              ; preds = %192
  %201 = load i64, i64* @SNDRV_PCM_RATE_48000, align 8
  %202 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %203 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %202, i32 0, i32 6
  %204 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %203, align 8
  %205 = load i64, i64* @ATI_PCM_SPDIF, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %204, i64 %205
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  store i64 %201, i64* %208, align 8
  br label %209

209:                                              ; preds = %200, %192
  %210 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %211 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = load i64, i64* @ATI_PCMDEV_DIGITAL, align 8
  %214 = call i32 @snd_pcm_new(i32 %212, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %213, i32 1, i32 0, %struct.snd_pcm** %4)
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %209
  %218 = load i32, i32* %7, align 4
  store i32 %218, i32* %2, align 4
  br label %282

219:                                              ; preds = %209
  %220 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %221 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %222 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %220, i64 %221, i32* @snd_atiixp_spdif_ops)
  %223 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %224 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %225 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %224, i32 0, i32 1
  store %struct.atiixp* %223, %struct.atiixp** %225, align 8
  %226 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %227 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %219
  %231 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %232 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @strcpy(i32 %233, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %240

235:                                              ; preds = %219
  %236 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %237 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @strcpy(i32 %238, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %240

240:                                              ; preds = %235, %230
  %241 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %242 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %243 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %242, i32 0, i32 3
  %244 = load %struct.snd_pcm**, %struct.snd_pcm*** %243, align 8
  %245 = load i64, i64* @ATI_PCMDEV_DIGITAL, align 8
  %246 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %244, i64 %245
  store %struct.snd_pcm* %241, %struct.snd_pcm** %246, align 8
  %247 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %248 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %249 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %250 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @snd_dma_pci_data(i32 %251)
  %253 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %247, i32 %248, i32 %252, i32 65536, i32 131072)
  store i32 0, i32* %8, align 4
  br label %254

254:                                              ; preds = %278, %240
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* @NUM_ATI_CODECS, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %281

258:                                              ; preds = %254
  %259 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %260 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %259, i32 0, i32 1
  %261 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %260, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %261, i64 %263
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %264, align 8
  %266 = icmp ne %struct.TYPE_8__* %265, null
  br i1 %266, label %267, label %277

267:                                              ; preds = %258
  %268 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %269 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %268, i32 0, i32 1
  %270 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %269, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %270, i64 %272
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %273, align 8
  %275 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %276 = call i32 @snd_ac97_update_bits(%struct.TYPE_8__* %274, i32 %275, i32 48, i32 48)
  br label %277

277:                                              ; preds = %267, %258
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %8, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %8, align 4
  br label %254

281:                                              ; preds = %254
  store i32 0, i32* %2, align 4
  br label %282

282:                                              ; preds = %281, %217, %191, %158, %120, %50
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local i32 @snd_ac97_pcm_assign(%struct.snd_ac97_bus*, i32, i32) #1

declare dso_local i32 @snd_pcm_new(i32, i8*, i64, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i64, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm*, i64, i32, i32, i32, %struct.snd_pcm_chmap**) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
