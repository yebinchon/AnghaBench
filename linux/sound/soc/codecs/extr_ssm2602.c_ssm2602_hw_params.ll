; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2602.c_ssm2602_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2602.c_ssm2602_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.ssm2602_priv = type { i32, i32 }

@SSM2602_SRATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SSM2602_IFACE = common dso_local global i32 0, align 4
@IFACE_AUDIO_DATA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ssm2602_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm2602_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.ssm2602_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.ssm2602_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.ssm2602_priv* %16, %struct.ssm2602_priv** %9, align 8
  %17 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %9, align 8
  %18 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i32 @params_rate(%struct.snd_pcm_hw_params* %20)
  %22 = call i32 @ssm2602_get_coeff(i32 %19, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %51

27:                                               ; preds = %3
  %28 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %9, align 8
  %29 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SSM2602_SRATE, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @regmap_write(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %35 = call i32 @params_width(%struct.snd_pcm_hw_params* %34)
  switch i32 %35, label %40 [
    i32 16, label %36
    i32 20, label %37
    i32 24, label %38
    i32 32, label %39
  ]

36:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %43

37:                                               ; preds = %27
  store i32 4, i32* %11, align 4
  br label %43

38:                                               ; preds = %27
  store i32 8, i32* %11, align 4
  br label %43

39:                                               ; preds = %27
  store i32 12, i32* %11, align 4
  br label %43

40:                                               ; preds = %27
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %51

43:                                               ; preds = %39, %38, %37, %36
  %44 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %9, align 8
  %45 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SSM2602_IFACE, align 4
  %48 = load i32, i32* @IFACE_AUDIO_DATA_LEN, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %43, %40, %25
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.ssm2602_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ssm2602_get_coeff(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
