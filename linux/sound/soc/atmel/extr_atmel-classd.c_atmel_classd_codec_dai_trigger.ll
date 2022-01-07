; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-classd.c_atmel_classd_codec_dai_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-classd.c_atmel_classd_codec_dai_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@CLASSD_MR_LEN_MASK = common dso_local global i32 0, align 4
@CLASSD_MR_REN_MASK = common dso_local global i32 0, align 4
@CLASSD_MR_LEN_DIS = common dso_local global i32 0, align 4
@CLASSD_MR_LEN_SHIFT = common dso_local global i32 0, align 4
@CLASSD_MR_REN_DIS = common dso_local global i32 0, align 4
@CLASSD_MR_REN_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLASSD_MR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @atmel_classd_codec_dai_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_classd_codec_dai_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load i32, i32* @CLASSD_MR_LEN_MASK, align 4
  %15 = load i32, i32* @CLASSD_MR_REN_MASK, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %28 [
    i32 130, label %18
    i32 131, label %18
    i32 132, label %18
    i32 129, label %20
    i32 128, label %20
    i32 133, label %20
  ]

18:                                               ; preds = %3, %3, %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %10, align 4
  br label %31

20:                                               ; preds = %3, %3, %3
  %21 = load i32, i32* @CLASSD_MR_LEN_DIS, align 4
  %22 = load i32, i32* @CLASSD_MR_LEN_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @CLASSD_MR_REN_DIS, align 4
  %25 = load i32, i32* @CLASSD_MR_REN_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  store i32 %27, i32* %10, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %20, %18
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %33 = load i32, i32* @CLASSD_MR, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
