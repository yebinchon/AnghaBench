; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_config_compander.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_config_compander.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wcd9335_codec = type { i32* }

@WCD9335_CDC_COMPANDER_CLK_EN_MASK = common dso_local global i32 0, align 4
@WCD9335_CDC_COMPANDER_CLK_ENABLE = common dso_local global i32 0, align 4
@WCD9335_CDC_COMPANDER_SOFT_RST_MASK = common dso_local global i32 0, align 4
@WCD9335_CDC_COMPANDER_SOFT_RST_ENABLE = common dso_local global i32 0, align 4
@WCD9335_CDC_COMPANDER_SOFT_RST_DISABLE = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PATH_CFG_CMP_EN_MASK = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PATH_CFG_CMP_ENABLE = common dso_local global i32 0, align 4
@WCD9335_CDC_COMPANDER_HALT_MASK = common dso_local global i32 0, align 4
@WCD9335_CDC_COMPANDER_HALT = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PATH_CFG_CMP_DISABLE = common dso_local global i32 0, align 4
@WCD9335_CDC_COMPANDER_CLK_DISABLE = common dso_local global i32 0, align 4
@WCD9335_CDC_COMPANDER_NOHALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @wcd9335_config_compander to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_config_compander(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wcd9335_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.wcd9335_codec* @dev_get_drvdata(i32 %14)
  store %struct.wcd9335_codec* %15, %struct.wcd9335_codec** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %96

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %23 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %96

31:                                               ; preds = %19
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @WCD9335_CDC_COMPANDER1_CTL(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @WCD9335_CDC_RX1_RX_PATH_CFG(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %31
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @WCD9335_CDC_COMPANDER_CLK_EN_MASK, align 4
  %43 = load i32, i32* @WCD9335_CDC_COMPANDER_CLK_ENABLE, align 4
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @WCD9335_CDC_COMPANDER_SOFT_RST_MASK, align 4
  %48 = load i32, i32* @WCD9335_CDC_COMPANDER_SOFT_RST_ENABLE, align 4
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @WCD9335_CDC_COMPANDER_SOFT_RST_MASK, align 4
  %53 = load i32, i32* @WCD9335_CDC_COMPANDER_SOFT_RST_DISABLE, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @WCD9335_CDC_RX_PATH_CFG_CMP_EN_MASK, align 4
  %58 = load i32, i32* @WCD9335_CDC_RX_PATH_CFG_CMP_ENABLE, align 4
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %39, %31
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @SND_SOC_DAPM_EVENT_OFF(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %60
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @WCD9335_CDC_COMPANDER_HALT_MASK, align 4
  %68 = load i32, i32* @WCD9335_CDC_COMPANDER_HALT, align 4
  %69 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %65, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @WCD9335_CDC_RX_PATH_CFG_CMP_EN_MASK, align 4
  %73 = load i32, i32* @WCD9335_CDC_RX_PATH_CFG_CMP_DISABLE, align 4
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @WCD9335_CDC_COMPANDER_SOFT_RST_MASK, align 4
  %78 = load i32, i32* @WCD9335_CDC_COMPANDER_SOFT_RST_ENABLE, align 4
  %79 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @WCD9335_CDC_COMPANDER_SOFT_RST_MASK, align 4
  %83 = load i32, i32* @WCD9335_CDC_COMPANDER_SOFT_RST_DISABLE, align 4
  %84 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %80, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @WCD9335_CDC_COMPANDER_CLK_EN_MASK, align 4
  %88 = load i32, i32* @WCD9335_CDC_COMPANDER_CLK_DISABLE, align 4
  %89 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @WCD9335_CDC_COMPANDER_HALT_MASK, align 4
  %93 = load i32, i32* @WCD9335_CDC_COMPANDER_NOHALT, align 4
  %94 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %90, i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %64, %60
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %30, %18
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.wcd9335_codec* @dev_get_drvdata(i32) #1

declare dso_local i32 @WCD9335_CDC_COMPANDER1_CTL(i32) #1

declare dso_local i32 @WCD9335_CDC_RX1_RX_PATH_CFG(i32) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
