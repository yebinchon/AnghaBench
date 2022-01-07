; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.adav80x = type { i32*, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@ADAV80X_CAPTURE_MODE_MASTER = common dso_local global i32 0, align 4
@ADAV80X_PLAYBACK_MODE_MASTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@ADAV80X_CAPTURE_MODE_I2S = common dso_local global i32 0, align 4
@ADAV80X_PLAYBACK_MODE_I2S = common dso_local global i32 0, align 4
@ADAV80X_CAPTURE_MODE_LEFT_J = common dso_local global i32 0, align 4
@ADAV80X_PLAYBACK_MODE_LEFT_J = common dso_local global i32 0, align 4
@ADAV80X_CAPTURE_MODE_RIGHT_J = common dso_local global i32 0, align 4
@ADAV80X_PLAYBACK_MODE_RIGHT_J_24 = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@adav80x_port_ctrl_regs = common dso_local global i32** null, align 8
@ADAV80X_CAPTURE_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @adav80x_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adav80x_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.adav80x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.adav80x* %14, %struct.adav80x** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %26 [
    i32 133, label %18
    i32 132, label %25
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @ADAV80X_CAPTURE_MODE_MASTER, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @ADAV80X_PLAYBACK_MODE_MASTER, align 4
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %2, %18
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %105

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %54 [
    i32 131, label %33
    i32 130, label %40
    i32 128, label %47
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* @ADAV80X_CAPTURE_MODE_I2S, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @ADAV80X_PLAYBACK_MODE_I2S, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %57

40:                                               ; preds = %29
  %41 = load i32, i32* @ADAV80X_CAPTURE_MODE_LEFT_J, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @ADAV80X_PLAYBACK_MODE_LEFT_J, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %57

47:                                               ; preds = %29
  %48 = load i32, i32* @ADAV80X_CAPTURE_MODE_RIGHT_J, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @ADAV80X_PLAYBACK_MODE_RIGHT_J_24, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %57

54:                                               ; preds = %29
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %105

57:                                               ; preds = %47, %40, %33
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %60 = and i32 %58, %59
  switch i32 %60, label %62 [
    i32 129, label %61
  ]

61:                                               ; preds = %57
  br label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %105

65:                                               ; preds = %61
  %66 = load %struct.adav80x*, %struct.adav80x** %7, align 8
  %67 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32**, i32*** @adav80x_port_ctrl_regs, align 8
  %70 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %71 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32*, i32** %69, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ADAV80X_CAPTURE_MODE_MASK, align 4
  %78 = load i32, i32* @ADAV80X_CAPTURE_MODE_MASTER, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @regmap_update_bits(i32 %68, i32 %76, i32 %79, i32 %80)
  %82 = load %struct.adav80x*, %struct.adav80x** %7, align 8
  %83 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32**, i32*** @adav80x_port_ctrl_regs, align 8
  %86 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %87 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32*, i32** %85, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @regmap_write(i32 %84, i32 %92, i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load %struct.adav80x*, %struct.adav80x** %7, align 8
  %99 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %102 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %97, i32* %104, align 4
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %65, %62, %54, %26
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
