; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tlv320dac33_priv = type { i32, i32, i32 }

@DAC33_PREFILL = common dso_local global i32 0, align 4
@DAC33_FLUSH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @dac33_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac33_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.tlv320dac33_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.tlv320dac33_priv* %14, %struct.tlv320dac33_priv** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %42 [
    i32 130, label %16
    i32 131, label %16
    i32 132, label %16
    i32 129, label %29
    i32 128, label %29
    i32 133, label %29
  ]

16:                                               ; preds = %3, %3, %3
  %17 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %8, align 8
  %18 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* @DAC33_PREFILL, align 4
  %23 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %8, align 8
  %24 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %8, align 8
  %26 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %25, i32 0, i32 0
  %27 = call i32 @schedule_work(i32* %26)
  br label %28

28:                                               ; preds = %21, %16
  br label %45

29:                                               ; preds = %3, %3, %3
  %30 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %8, align 8
  %31 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* @DAC33_FLUSH, align 4
  %36 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %8, align 8
  %37 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %8, align 8
  %39 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %38, i32 0, i32 0
  %40 = call i32 @schedule_work(i32* %39)
  br label %41

41:                                               ; preds = %34, %29
  br label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %41, %28
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
