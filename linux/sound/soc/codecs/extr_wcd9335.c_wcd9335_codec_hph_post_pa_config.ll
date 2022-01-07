; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hph_post_pa_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hph_post_pa_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcd9335_codec = type { i32, i32, i32, i64* }

@WCD9335_HPH_PA_CTL1 = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_GM3_IB_SCALE_MASK = common dso_local global i32 0, align 4
@COMPANDER_1 = common dso_local global i64 0, align 8
@COMPANDER_2 = common dso_local global i64 0, align 8
@WCD9335_HPH_L_EN = common dso_local global i32 0, align 4
@WCD9335_HPH_GAIN_SRC_SEL_MASK = common dso_local global i32 0, align 4
@WCD9335_HPH_GAIN_SRC_SEL_COMPANDER = common dso_local global i32 0, align 4
@WCD9335_HPH_R_EN = common dso_local global i32 0, align 4
@WCD9335_HPH_AUTO_CHOP = common dso_local global i32 0, align 4
@WCD9335_HPH_AUTO_CHOP_MASK = common dso_local global i32 0, align 4
@WCD9335_HPH_AUTO_CHOP_FORCE_ENABLE = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_GAIN_MASK = common dso_local global i32 0, align 4
@WCD9335_HPH_AUTO_CHOP_ENABLE_BY_CMPDR_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcd9335_codec*, i32, i32)* @wcd9335_codec_hph_post_pa_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcd9335_codec_hph_post_pa_config(%struct.wcd9335_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wcd9335_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wcd9335_codec* %0, %struct.wcd9335_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %15 [
    i32 129, label %9
    i32 128, label %14
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %13 [
    i32 131, label %11
    i32 130, label %12
  ]

11:                                               ; preds = %9
  store i32 3, i32* %7, align 4
  br label %13

12:                                               ; preds = %9
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %9, %12, %11
  br label %15

14:                                               ; preds = %3
  store i32 6, i32* %7, align 4
  br label %15

15:                                               ; preds = %3, %14, %13
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %20 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @WCD9335_HPH_PA_CTL1, align 4
  %23 = load i32, i32* @WCD9335_HPH_PA_GM3_IB_SCALE_MASK, align 4
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 1
  %26 = call i32 @snd_soc_component_update_bits(i32 %21, i32 %22, i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %18, %15
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %88

31:                                               ; preds = %27
  %32 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %33 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %32, i32 0, i32 3
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @COMPANDER_1, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %41 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @COMPANDER_2, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %39, %31
  %48 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %49 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @WCD9335_HPH_L_EN, align 4
  %52 = load i32, i32* @WCD9335_HPH_GAIN_SRC_SEL_MASK, align 4
  %53 = load i32, i32* @WCD9335_HPH_GAIN_SRC_SEL_COMPANDER, align 4
  %54 = call i32 @snd_soc_component_update_bits(i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %56 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @WCD9335_HPH_R_EN, align 4
  %59 = load i32, i32* @WCD9335_HPH_GAIN_SRC_SEL_MASK, align 4
  %60 = load i32, i32* @WCD9335_HPH_GAIN_SRC_SEL_COMPANDER, align 4
  %61 = call i32 @snd_soc_component_update_bits(i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %63 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @WCD9335_HPH_AUTO_CHOP, align 4
  %66 = load i32, i32* @WCD9335_HPH_AUTO_CHOP_MASK, align 4
  %67 = load i32, i32* @WCD9335_HPH_AUTO_CHOP_FORCE_ENABLE, align 4
  %68 = call i32 @snd_soc_component_update_bits(i32 %64, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %47, %39
  %70 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %71 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @WCD9335_HPH_L_EN, align 4
  %74 = load i32, i32* @WCD9335_HPH_PA_GAIN_MASK, align 4
  %75 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %76 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @snd_soc_component_update_bits(i32 %72, i32 %73, i32 %74, i32 %77)
  %79 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %80 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @WCD9335_HPH_R_EN, align 4
  %83 = load i32, i32* @WCD9335_HPH_PA_GAIN_MASK, align 4
  %84 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %85 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @snd_soc_component_update_bits(i32 %81, i32 %82, i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %69, %27
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @SND_SOC_DAPM_EVENT_OFF(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %4, align 8
  %94 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @WCD9335_HPH_AUTO_CHOP, align 4
  %97 = load i32, i32* @WCD9335_HPH_AUTO_CHOP_MASK, align 4
  %98 = load i32, i32* @WCD9335_HPH_AUTO_CHOP_ENABLE_BY_CMPDR_GAIN, align 4
  %99 = call i32 @snd_soc_component_update_bits(i32 %95, i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %92, %88
  ret void
}

declare dso_local i32 @snd_soc_component_update_bits(i32, i32, i32, i32) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
