; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sti-sas.c_sti_sas_spdif_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sti-sas.c_sti_sas_spdif_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@STIH407_AUDIO_GLUE_CTRL = common dso_local global i32 0, align 4
@SPDIF_BIPHASE_ENABLE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @sti_sas_spdif_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_sas_spdif_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %24 [
    i32 130, label %13
    i32 132, label %13
    i32 131, label %19
    i32 133, label %19
    i32 129, label %19
    i32 128, label %19
  ]

13:                                               ; preds = %3, %3
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = load i32, i32* @STIH407_AUDIO_GLUE_CTRL, align 4
  %16 = load i32, i32* @SPDIF_BIPHASE_ENABLE_MASK, align 4
  %17 = load i32, i32* @SPDIF_BIPHASE_ENABLE_MASK, align 4
  %18 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %27

19:                                               ; preds = %3, %3, %3, %3
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %21 = load i32, i32* @STIH407_AUDIO_GLUE_CTRL, align 4
  %22 = load i32, i32* @SPDIF_BIPHASE_ENABLE_MASK, align 4
  %23 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %19, %13
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
