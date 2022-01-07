; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rk3328_codec.c_rk3328_digital_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rk3328_codec.c_rk3328_digital_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.rk3328_codec_priv = type { i32 }

@HPOUTL_MUTE = common dso_local global i32 0, align 4
@HPOUTR_MUTE = common dso_local global i32 0, align 4
@HPOUTL_UNMUTE = common dso_local global i32 0, align 4
@HPOUTR_UNMUTE = common dso_local global i32 0, align 4
@HPOUT_CTRL = common dso_local global i32 0, align 4
@HPOUTL_MUTE_MASK = common dso_local global i32 0, align 4
@HPOUTR_MUTE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rk3328_digital_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3328_digital_mute(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rk3328_codec_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.rk3328_codec_priv* @snd_soc_component_get_drvdata(i32 %9)
  store %struct.rk3328_codec_priv* %10, %struct.rk3328_codec_priv** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @HPOUTL_MUTE, align 4
  %15 = load i32, i32* @HPOUTR_MUTE, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %6, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @HPOUTL_UNMUTE, align 4
  %19 = load i32, i32* @HPOUTR_UNMUTE, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %5, align 8
  %23 = getelementptr inbounds %struct.rk3328_codec_priv, %struct.rk3328_codec_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HPOUT_CTRL, align 4
  %26 = load i32, i32* @HPOUTL_MUTE_MASK, align 4
  %27 = load i32, i32* @HPOUTR_MUTE_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %28, i32 %29)
  ret i32 0
}

declare dso_local %struct.rk3328_codec_priv* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
