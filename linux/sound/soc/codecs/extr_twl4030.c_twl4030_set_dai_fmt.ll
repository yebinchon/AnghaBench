; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.twl4030_priv = type { i64 }

@TWL4030_REG_AUDIO_IF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@TWL4030_AIF_SLAVE_EN = common dso_local global i32 0, align 4
@TWL4030_CLK256FS_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TWL4030_AIF_FORMAT = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@TWL4030_AIF_FORMAT_CODEC = common dso_local global i32 0, align 4
@TWL4030_AIF_FORMAT_TDM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @twl4030_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.twl4030_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %16 = load i32, i32* @TWL4030_REG_AUDIO_IF, align 4
  %17 = call i32 @twl4030_read(%struct.snd_soc_component* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %38 [
    i32 131, label %22
    i32 130, label %31
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* @TWL4030_AIF_SLAVE_EN, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @TWL4030_CLK256FS_EN, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %41

31:                                               ; preds = %2
  %32 = load i32, i32* @TWL4030_AIF_SLAVE_EN, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @TWL4030_CLK256FS_EN, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %85

41:                                               ; preds = %31, %22
  %42 = load i32, i32* @TWL4030_AIF_FORMAT, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %48 = and i32 %46, %47
  switch i32 %48, label %57 [
    i32 128, label %49
    i32 129, label %53
  ]

49:                                               ; preds = %41
  %50 = load i32, i32* @TWL4030_AIF_FORMAT_CODEC, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %60

53:                                               ; preds = %41
  %54 = load i32, i32* @TWL4030_AIF_FORMAT_TDM, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %60

57:                                               ; preds = %41
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %85

60:                                               ; preds = %53, %49
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %60
  %65 = load %struct.twl4030_priv*, %struct.twl4030_priv** %7, align 8
  %66 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %71 = call i32 @twl4030_codec_enable(%struct.snd_soc_component* %70, i32 0)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %73 = load i32, i32* @TWL4030_REG_AUDIO_IF, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @twl4030_write(%struct.snd_soc_component* %72, i32 %73, i32 %74)
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %77 = call i32 @twl4030_codec_enable(%struct.snd_soc_component* %76, i32 1)
  br label %83

78:                                               ; preds = %64
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %80 = load i32, i32* @TWL4030_REG_AUDIO_IF, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @twl4030_write(%struct.snd_soc_component* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %69
  br label %84

84:                                               ; preds = %83, %60
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %57, %38
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @twl4030_read(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @twl4030_codec_enable(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @twl4030_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
