; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, %struct.snd_azf3328_codec_data* }
%struct.snd_azf3328_codec_data = type { i64, i32, i32, i32 }
%struct.snd_azf3328 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AZF_CODEC_PLAYBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"START PCM %s\0A\00", align 1
@IDX_IO_CODEC_DMA_FLAGS = common dso_local global i32 0, align 4
@DMA_RESUME = common dso_local global i32 0, align 4
@IDX_IO_CODEC_IRQTYPE = common dso_local global i32 0, align 4
@DMA_RUN_SOMETHING1 = common dso_local global i32 0, align 4
@DMA_RUN_SOMETHING2 = common dso_local global i32 0, align 4
@SOMETHING_ALMOST_ALWAYS_SET = common dso_local global i32 0, align 4
@DMA_EPILOGUE_SOMETHING = common dso_local global i32 0, align 4
@DMA_SOMETHING_ELSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"PCM STARTED %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"PCM RESUME %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"PCM STOP %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"PCM STOPPED %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"PCM SUSPEND %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"FIXME: SNDRV_PCM_TRIGGER_PAUSE_PUSH NIY!\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"FIXME: SNDRV_PCM_TRIGGER_PAUSE_RELEASE NIY!\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"FIXME: unknown trigger mode!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_azf3328_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_azf3328_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_azf3328*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.snd_azf3328_codec_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = call %struct.snd_azf3328* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.snd_azf3328* %14, %struct.snd_azf3328** %6, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %7, align 8
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 4
  %20 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %19, align 8
  store %struct.snd_azf3328_codec_data* %20, %struct.snd_azf3328_codec_data** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %21 = load i64, i64* @AZF_CODEC_PLAYBACK, align 8
  %22 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %23 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %272 [
    i32 130, label %28
    i32 131, label %143
    i32 129, label %175
    i32 128, label %249
    i32 133, label %268
    i32 132, label %270
  ]

28:                                               ; preds = %2
  %29 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %30 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %35 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %42 = call i32 @snd_azf3328_mixer_mute_control_pcm(%struct.snd_azf3328* %41, i32 1)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %28
  %44 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snd_pcm_format_width(i32 %50)
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @snd_azf3328_codec_setfmt(%struct.snd_azf3328_codec_data* %44, i32 %47, i32 %51, i32 %54)
  %56 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %57 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @spin_lock(i32 %58)
  %60 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %61 = load i32, i32* @IDX_IO_CODEC_DMA_FLAGS, align 4
  %62 = call i32 @snd_azf3328_codec_inw(%struct.snd_azf3328_codec_data* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @DMA_RESUME, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %68 = load i32, i32* @IDX_IO_CODEC_DMA_FLAGS, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @snd_azf3328_codec_outw(%struct.snd_azf3328_codec_data* %67, i32 %68, i32 %69)
  %71 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %72 = load i32, i32* @IDX_IO_CODEC_IRQTYPE, align 4
  %73 = call i32 @snd_azf3328_codec_outw(%struct.snd_azf3328_codec_data* %71, i32 %72, i32 65535)
  %74 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %75 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @spin_unlock(i32 %76)
  %78 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %79 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %84 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %83)
  %85 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %86 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %85)
  %87 = call i32 @snd_azf3328_codec_setdmaa(%struct.snd_azf3328* %78, %struct.snd_azf3328_codec_data* %79, i32 %82, i32 %84, i32 %86)
  %88 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %89 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @spin_lock(i32 %90)
  %92 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %93 = load i32, i32* @IDX_IO_CODEC_DMA_FLAGS, align 4
  %94 = call i32 @snd_azf3328_codec_outw(%struct.snd_azf3328_codec_data* %92, i32 %93, i32 0)
  %95 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %96 = load i32, i32* @IDX_IO_CODEC_DMA_FLAGS, align 4
  %97 = load i32, i32* @DMA_RUN_SOMETHING1, align 4
  %98 = call i32 @snd_azf3328_codec_outw(%struct.snd_azf3328_codec_data* %95, i32 %96, i32 %97)
  %99 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %100 = load i32, i32* @IDX_IO_CODEC_DMA_FLAGS, align 4
  %101 = load i32, i32* @DMA_RUN_SOMETHING1, align 4
  %102 = load i32, i32* @DMA_RUN_SOMETHING2, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @snd_azf3328_codec_outw(%struct.snd_azf3328_codec_data* %99, i32 %100, i32 %103)
  %105 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %106 = load i32, i32* @IDX_IO_CODEC_DMA_FLAGS, align 4
  %107 = load i32, i32* @DMA_RESUME, align 4
  %108 = load i32, i32* @SOMETHING_ALMOST_ALWAYS_SET, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @DMA_EPILOGUE_SOMETHING, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @DMA_SOMETHING_ELSE, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @snd_azf3328_codec_outw(%struct.snd_azf3328_codec_data* %105, i32 %106, i32 %113)
  %115 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %116 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @spin_unlock(i32 %117)
  %119 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %120 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %121 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @snd_azf3328_ctrl_codec_activity(%struct.snd_azf3328* %119, i64 %122, i32 1)
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %43
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %131 = call i32 @snd_azf3328_mixer_mute_control_pcm(%struct.snd_azf3328* %130, i32 0)
  br label %132

132:                                              ; preds = %129, %126
  br label %133

133:                                              ; preds = %132, %43
  %134 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %135 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %140 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @dev_dbg(i32 %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  br label %276

143:                                              ; preds = %2
  %144 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %145 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %144, i32 0, i32 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %150 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @dev_dbg(i32 %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %154 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @spin_lock(i32 %155)
  %157 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %158 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %143
  %162 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %163 = load i32, i32* @IDX_IO_CODEC_DMA_FLAGS, align 4
  %164 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %165 = load i32, i32* @IDX_IO_CODEC_DMA_FLAGS, align 4
  %166 = call i32 @snd_azf3328_codec_inw(%struct.snd_azf3328_codec_data* %164, i32 %165)
  %167 = load i32, i32* @DMA_RESUME, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @snd_azf3328_codec_outw(%struct.snd_azf3328_codec_data* %162, i32 %163, i32 %168)
  br label %170

170:                                              ; preds = %161, %143
  %171 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %172 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @spin_unlock(i32 %173)
  br label %276

175:                                              ; preds = %2
  %176 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %177 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %176, i32 0, i32 0
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %182 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @dev_dbg(i32 %180, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %175
  %188 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %189 = call i32 @snd_azf3328_mixer_mute_control_pcm(%struct.snd_azf3328* %188, i32 1)
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %187, %175
  %191 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %192 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @spin_lock(i32 %193)
  %195 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %196 = load i32, i32* @IDX_IO_CODEC_DMA_FLAGS, align 4
  %197 = call i32 @snd_azf3328_codec_inw(%struct.snd_azf3328_codec_data* %195, i32 %196)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* @DMA_RESUME, align 4
  %199 = xor i32 %198, -1
  %200 = load i32, i32* %10, align 4
  %201 = and i32 %200, %199
  store i32 %201, i32* %10, align 4
  %202 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %203 = load i32, i32* @IDX_IO_CODEC_DMA_FLAGS, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @snd_azf3328_codec_outw(%struct.snd_azf3328_codec_data* %202, i32 %203, i32 %204)
  %206 = load i32, i32* @DMA_RUN_SOMETHING1, align 4
  %207 = load i32, i32* %10, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %10, align 4
  %209 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %210 = load i32, i32* @IDX_IO_CODEC_DMA_FLAGS, align 4
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @snd_azf3328_codec_outw(%struct.snd_azf3328_codec_data* %209, i32 %210, i32 %211)
  %213 = load i32, i32* @DMA_RUN_SOMETHING1, align 4
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %10, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %10, align 4
  %217 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %218 = load i32, i32* @IDX_IO_CODEC_DMA_FLAGS, align 4
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @snd_azf3328_codec_outw(%struct.snd_azf3328_codec_data* %217, i32 %218, i32 %219)
  %221 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %222 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @spin_unlock(i32 %223)
  %225 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %226 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %227 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @snd_azf3328_ctrl_codec_activity(%struct.snd_azf3328* %225, i64 %228, i32 0)
  %230 = load i32, i32* %12, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %190
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %237 = call i32 @snd_azf3328_mixer_mute_control_pcm(%struct.snd_azf3328* %236, i32 0)
  br label %238

238:                                              ; preds = %235, %232
  br label %239

239:                                              ; preds = %238, %190
  %240 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %241 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %240, i32 0, i32 0
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %246 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @dev_dbg(i32 %244, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %247)
  br label %276

249:                                              ; preds = %2
  %250 = load %struct.snd_azf3328*, %struct.snd_azf3328** %6, align 8
  %251 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %250, i32 0, i32 0
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %256 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @dev_dbg(i32 %254, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %257)
  %259 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %260 = load i32, i32* @IDX_IO_CODEC_DMA_FLAGS, align 4
  %261 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %8, align 8
  %262 = load i32, i32* @IDX_IO_CODEC_DMA_FLAGS, align 4
  %263 = call i32 @snd_azf3328_codec_inw(%struct.snd_azf3328_codec_data* %261, i32 %262)
  %264 = load i32, i32* @DMA_RESUME, align 4
  %265 = xor i32 %264, -1
  %266 = and i32 %263, %265
  %267 = call i32 @snd_azf3328_codec_outw(%struct.snd_azf3328_codec_data* %259, i32 %260, i32 %266)
  br label %276

268:                                              ; preds = %2
  %269 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %276

270:                                              ; preds = %2
  %271 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %276

272:                                              ; preds = %2
  %273 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %274 = load i32, i32* @EINVAL, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %3, align 4
  br label %278

276:                                              ; preds = %270, %268, %249, %239, %170, %133
  %277 = load i32, i32* %9, align 4
  store i32 %277, i32* %3, align 4
  br label %278

278:                                              ; preds = %276, %272
  %279 = load i32, i32* %3, align 4
  ret i32 %279
}

declare dso_local %struct.snd_azf3328* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_azf3328_mixer_mute_control_pcm(%struct.snd_azf3328*, i32) #1

declare dso_local i32 @snd_azf3328_codec_setfmt(%struct.snd_azf3328_codec_data*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @snd_azf3328_codec_inw(%struct.snd_azf3328_codec_data*, i32) #1

declare dso_local i32 @snd_azf3328_codec_outw(%struct.snd_azf3328_codec_data*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @snd_azf3328_codec_setdmaa(%struct.snd_azf3328*, %struct.snd_azf3328_codec_data*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_azf3328_ctrl_codec_activity(%struct.snd_azf3328*, i64, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
