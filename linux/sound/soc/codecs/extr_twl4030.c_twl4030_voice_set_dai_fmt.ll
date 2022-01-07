; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_voice_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_voice_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.twl4030_priv = type { i64 }

@TWL4030_REG_VOICE_IF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@TWL4030_VIF_SLAVE_EN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@TWL4030_VIF_FORMAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @twl4030_voice_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_voice_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.twl4030_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.twl4030_priv* %14, %struct.twl4030_priv** %7, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %16 = load i32, i32* @TWL4030_REG_VOICE_IF, align 4
  %17 = call i64 @twl4030_read(%struct.snd_soc_component* %15, i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %31 [
    i32 131, label %22
    i32 130, label %27
  ]

22:                                               ; preds = %2
  %23 = load i64, i64* @TWL4030_VIF_SLAVE_EN, align 8
  %24 = xor i64 %23, -1
  %25 = load i64, i64* %9, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %9, align 8
  br label %34

27:                                               ; preds = %2
  %28 = load i64, i64* @TWL4030_VIF_SLAVE_EN, align 8
  %29 = load i64, i64* %9, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %9, align 8
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %75

34:                                               ; preds = %27, %22
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %47 [
    i32 129, label %38
    i32 128, label %43
  ]

38:                                               ; preds = %34
  %39 = load i64, i64* @TWL4030_VIF_FORMAT, align 8
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %9, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %9, align 8
  br label %50

43:                                               ; preds = %34
  %44 = load i64, i64* @TWL4030_VIF_FORMAT, align 8
  %45 = load i64, i64* %9, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %9, align 8
  br label %50

47:                                               ; preds = %34
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %75

50:                                               ; preds = %43, %38
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load %struct.twl4030_priv*, %struct.twl4030_priv** %7, align 8
  %56 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %61 = call i32 @twl4030_codec_enable(%struct.snd_soc_component* %60, i32 0)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %63 = load i32, i32* @TWL4030_REG_VOICE_IF, align 4
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @twl4030_write(%struct.snd_soc_component* %62, i32 %63, i64 %64)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %67 = call i32 @twl4030_codec_enable(%struct.snd_soc_component* %66, i32 1)
  br label %73

68:                                               ; preds = %54
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %70 = load i32, i32* @TWL4030_REG_VOICE_IF, align 4
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @twl4030_write(%struct.snd_soc_component* %69, i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %68, %59
  br label %74

74:                                               ; preds = %73, %50
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %47, %31
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @twl4030_read(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @twl4030_codec_enable(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @twl4030_write(%struct.snd_soc_component*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
