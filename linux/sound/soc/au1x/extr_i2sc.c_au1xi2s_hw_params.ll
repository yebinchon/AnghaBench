; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_i2sc.c_au1xi2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_i2sc.c_au1xi2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.au1xpsc_audio_data = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CFG_SZ_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @au1xi2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xi2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.au1xpsc_audio_data*, align 8
  %9 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = call %struct.au1xpsc_audio_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.au1xpsc_audio_data* %11, %struct.au1xpsc_audio_data** %8, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @msbits_to_reg(i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %33

21:                                               ; preds = %3
  %22 = load i64, i64* @CFG_SZ_MASK, align 8
  %23 = xor i64 %22, -1
  %24 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %25 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %30 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = or i64 %31, %28
  store i64 %32, i64* %30, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %21, %18
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.au1xpsc_audio_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i64 @msbits_to_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
