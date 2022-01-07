; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_init_audio_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_init_audio_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.snd_intelhad = type { %union.aud_cfg, i64 }
%union.aud_cfg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%union.aud_buf_config = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@__const.had_init_audio_ctrl.cfg_val = private unnamed_addr constant { i32, [24 x i8] } { i32 0, [24 x i8] undef }, align 4
@__const.had_init_audio_ctrl.buf_cfg = private unnamed_addr constant { i32, [12 x i8] } { i32 0, [12 x i8] undef }, align 8
@FIFO_THRESHOLD = common dso_local global i32 0, align 4
@DMA_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@AUD_BUF_CONFIG = common dso_local global i32 0, align 4
@LAYOUT0 = common dso_local global i32 0, align 4
@LAYOUT1 = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i64 0, align 8
@SNDRV_PCM_FORMAT_S32_LE = common dso_local global i64 0, align 8
@AUD_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_intelhad*)* @had_init_audio_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @had_init_audio_ctrl(%struct.snd_pcm_substream* %0, %struct.snd_intelhad* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_intelhad*, align 8
  %5 = alloca %union.aud_cfg, align 4
  %6 = alloca %union.aud_buf_config, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_intelhad* %1, %struct.snd_intelhad** %4, align 8
  %8 = bitcast %union.aud_cfg* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ({ i32, [24 x i8] }* @__const.had_init_audio_ctrl.cfg_val to i8*), i64 28, i1 false)
  %9 = bitcast %union.aud_buf_config* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast ({ i32, [12 x i8] }* @__const.had_init_audio_ctrl.buf_cfg to i8*), i64 16, i1 false)
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %12 = call i32 @had_prog_status_reg(%struct.snd_pcm_substream* %10, %struct.snd_intelhad* %11)
  %13 = load i32, i32* @FIFO_THRESHOLD, align 4
  %14 = bitcast %union.aud_buf_config* %6 to %struct.TYPE_4__*
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @DMA_FIFO_THRESHOLD, align 4
  %17 = bitcast %union.aud_buf_config* %6 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = bitcast %union.aud_buf_config* %6 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %22 = load i32, i32* @AUD_BUF_CONFIG, align 4
  %23 = bitcast %union.aud_buf_config* %6 to i32*
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @had_write_register(%struct.snd_intelhad* %21, i32 %22, i32 %24)
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 2
  %33 = bitcast %union.aud_cfg* %5 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %35, 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i32, i32* @LAYOUT0, align 4
  %39 = bitcast %union.aud_cfg* %5 to %struct.TYPE_6__*
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  br label %45

41:                                               ; preds = %2
  %42 = load i32, i32* @LAYOUT1, align 4
  %43 = bitcast %union.aud_cfg* %5 to %struct.TYPE_6__*
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SNDRV_PCM_FORMAT_S16_LE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = bitcast %union.aud_cfg* %5 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %45
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SNDRV_PCM_FORMAT_S32_LE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = bitcast %union.aud_cfg* %5 to %struct.TYPE_6__*
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %56
  %68 = bitcast %union.aud_cfg* %5 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  store i32 1, i32* %69, align 4
  %70 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %71 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = bitcast %union.aud_cfg* %5 to %struct.TYPE_6__*
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  store i32 1, i32* %76, align 4
  %77 = bitcast %union.aud_cfg* %5 to %struct.TYPE_6__*
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 5
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %81 = load i32, i32* @AUD_CONFIG, align 4
  %82 = bitcast %union.aud_cfg* %5 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @had_write_register(%struct.snd_intelhad* %80, i32 %81, i32 %83)
  %85 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %86 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %85, i32 0, i32 0
  %87 = bitcast %union.aud_cfg* %86 to i8*
  %88 = bitcast %union.aud_cfg* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 4 %88, i64 28, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @had_prog_status_reg(%struct.snd_pcm_substream*, %struct.snd_intelhad*) #2

declare dso_local i32 @had_write_register(%struct.snd_intelhad*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
