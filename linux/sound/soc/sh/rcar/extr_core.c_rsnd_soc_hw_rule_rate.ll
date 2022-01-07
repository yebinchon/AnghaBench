; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_soc_hw_rule_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_soc_hw_rule_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.rsnd_dai_stream* }
%struct.rsnd_dai_stream = type { i32 }
%struct.snd_interval = type { i32, i32 }
%struct.rsnd_dai = type { i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@rsnd_soc_hw_rate_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @rsnd_soc_hw_rule_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_soc_hw_rule_rate(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.snd_interval*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_interval, align 4
  %8 = alloca %struct.rsnd_dai_stream*, align 8
  %9 = alloca %struct.rsnd_dai*, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %10 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %11 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %12 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %10, i32 %11)
  store %struct.snd_interval* %12, %struct.snd_interval** %5, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %14 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %15 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %13, i32 %14)
  store %struct.snd_interval* %15, %struct.snd_interval** %6, align 8
  %16 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %16, i32 0, i32 0
  %18 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %17, align 8
  store %struct.rsnd_dai_stream* %18, %struct.rsnd_dai_stream** %8, align 8
  %19 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %8, align 8
  %20 = call %struct.rsnd_dai* @rsnd_io_to_rdai(%struct.rsnd_dai_stream* %19)
  store %struct.rsnd_dai* %20, %struct.rsnd_dai** %9, align 8
  %21 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %22 = bitcast %struct.snd_interval* %7 to i8*
  %23 = bitcast %struct.snd_interval* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 8, i1 false)
  %24 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %8, align 8
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %26 = call i32 @rsnd_runtime_channel_for_ssi_with_params(%struct.rsnd_dai_stream* %24, %struct.snd_pcm_hw_params* %25)
  %27 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %7, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rsnd_dai*, %struct.rsnd_dai** %9, align 8
  %30 = load i32, i32* @rsnd_soc_hw_rate_list, align 4
  %31 = load i32, i32* @rsnd_soc_hw_rate_list, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %34 = call i32 @rsnd_soc_hw_rule(%struct.rsnd_dai* %29, i32 %30, i32 %32, %struct.snd_interval* %7, %struct.snd_interval* %33)
  ret i32 %34
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.rsnd_dai* @rsnd_io_to_rdai(%struct.rsnd_dai_stream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rsnd_runtime_channel_for_ssi_with_params(%struct.rsnd_dai_stream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rsnd_soc_hw_rule(%struct.rsnd_dai*, i32, i32, %struct.snd_interval*, %struct.snd_interval*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
