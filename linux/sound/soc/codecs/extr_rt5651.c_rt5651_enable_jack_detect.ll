; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_enable_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_enable_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.gpio_desc = type { i32 }
%struct.rt5651_priv = type { i32, i32, i32, i32, i32, %struct.snd_soc_jack*, i32, %struct.gpio_desc* }

@RT5651_JD_CTRL2 = common dso_local global i32 0, align 4
@RT5651_JD_TRG_SEL_MASK = common dso_local global i32 0, align 4
@RT5651_JD_TRG_SEL_JD1_1 = common dso_local global i32 0, align 4
@RT5651_IRQ_CTRL1 = common dso_local global i32 0, align 4
@RT5651_JD1_1_IRQ_EN = common dso_local global i32 0, align 4
@RT5651_JD1_1_INV = common dso_local global i32 0, align 4
@RT5651_JD_TRG_SEL_JD1_2 = common dso_local global i32 0, align 4
@RT5651_JD1_2_IRQ_EN = common dso_local global i32 0, align 4
@RT5651_JD1_2_INV = common dso_local global i32 0, align 4
@RT5651_JD_TRG_SEL_JD2 = common dso_local global i32 0, align 4
@RT5651_JD2_IRQ_EN = common dso_local global i32 0, align 4
@RT5651_JD2_INV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Currently only JD1_1 / JD1_2 / JD2 are supported\0A\00", align 1
@RT5651_GPIO_CTRL1 = common dso_local global i32 0, align 4
@RT5651_GP1_PIN_MASK = common dso_local global i32 0, align 4
@RT5651_GP1_PIN_IRQ = common dso_local global i32 0, align 4
@RT5651_PWR_ANLG2 = common dso_local global i32 0, align 4
@RT5651_PWR_JD_M = common dso_local global i32 0, align 4
@RT5651_PR_BASE = common dso_local global i64 0, align 8
@RT5651_BIAS_CUR4 = common dso_local global i64 0, align 8
@RT5651_MICBIAS = common dso_local global i32 0, align 4
@RT5651_MIC1_OVCD_MASK = common dso_local global i32 0, align 4
@RT5651_MIC1_OVTH_MASK = common dso_local global i32 0, align 4
@RT5651_PWR_CLK12M_MASK = common dso_local global i32 0, align 4
@RT5651_PWR_MB_MASK = common dso_local global i32 0, align 4
@RT5651_MIC1_OVCD_EN = common dso_local global i32 0, align 4
@RT5651_PWR_MB_PU = common dso_local global i32 0, align 4
@RT5651_PWR_CLK12M_PU = common dso_local global i32 0, align 4
@RT5651_IRQ_CTRL2 = common dso_local global i32 0, align 4
@RT5651_MB1_OC_STKY_MASK = common dso_local global i32 0, align 4
@RT5651_MB1_OC_STKY_EN = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, %struct.snd_soc_jack*, %struct.gpio_desc*)* @rt5651_enable_jack_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5651_enable_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, %struct.gpio_desc* %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_jack*, align 8
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca %struct.rt5651_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %5, align 8
  store %struct.gpio_desc* %2, %struct.gpio_desc** %6, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.rt5651_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.rt5651_priv* %10, %struct.rt5651_priv** %7, align 8
  store i32 1, i32* %8, align 4
  %11 = load %struct.rt5651_priv*, %struct.rt5651_priv** %7, align 8
  %12 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %111 [
    i32 128, label %14
    i32 131, label %24
    i32 130, label %53
    i32 129, label %82
  ]

14:                                               ; preds = %3
  %15 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %16 = load %struct.rt5651_priv*, %struct.rt5651_priv** %7, align 8
  %17 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %16, i32 0, i32 7
  store %struct.gpio_desc* %15, %struct.gpio_desc** %17, align 8
  %18 = load %struct.rt5651_priv*, %struct.rt5651_priv** %7, align 8
  %19 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %18, i32 0, i32 7
  %20 = load %struct.gpio_desc*, %struct.gpio_desc** %19, align 8
  %21 = icmp ne %struct.gpio_desc* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %184

23:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %116

24:                                               ; preds = %3
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %26 = load i32, i32* @RT5651_JD_CTRL2, align 4
  %27 = load i32, i32* @RT5651_JD_TRG_SEL_MASK, align 4
  %28 = load i32, i32* @RT5651_JD_TRG_SEL_JD1_1, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.rt5651_priv*, %struct.rt5651_priv** %7, align 8
  %31 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %36 = load i32, i32* @RT5651_IRQ_CTRL1, align 4
  %37 = load i32, i32* @RT5651_JD1_1_IRQ_EN, align 4
  %38 = load i32, i32* @RT5651_JD1_1_INV, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @RT5651_JD1_1_IRQ_EN, align 4
  %41 = load i32, i32* @RT5651_JD1_1_INV, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 %39, i32 %42)
  br label %52

44:                                               ; preds = %24
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %46 = load i32, i32* @RT5651_IRQ_CTRL1, align 4
  %47 = load i32, i32* @RT5651_JD1_1_IRQ_EN, align 4
  %48 = load i32, i32* @RT5651_JD1_1_INV, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @RT5651_JD1_1_IRQ_EN, align 4
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %34
  br label %116

53:                                               ; preds = %3
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %55 = load i32, i32* @RT5651_JD_CTRL2, align 4
  %56 = load i32, i32* @RT5651_JD_TRG_SEL_MASK, align 4
  %57 = load i32, i32* @RT5651_JD_TRG_SEL_JD1_2, align 4
  %58 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.rt5651_priv*, %struct.rt5651_priv** %7, align 8
  %60 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %53
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %65 = load i32, i32* @RT5651_IRQ_CTRL1, align 4
  %66 = load i32, i32* @RT5651_JD1_2_IRQ_EN, align 4
  %67 = load i32, i32* @RT5651_JD1_2_INV, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @RT5651_JD1_2_IRQ_EN, align 4
  %70 = load i32, i32* @RT5651_JD1_2_INV, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %64, i32 %65, i32 %68, i32 %71)
  br label %81

73:                                               ; preds = %53
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %75 = load i32, i32* @RT5651_IRQ_CTRL1, align 4
  %76 = load i32, i32* @RT5651_JD1_2_IRQ_EN, align 4
  %77 = load i32, i32* @RT5651_JD1_2_INV, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @RT5651_JD1_2_IRQ_EN, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %74, i32 %75, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %73, %63
  br label %116

82:                                               ; preds = %3
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %84 = load i32, i32* @RT5651_JD_CTRL2, align 4
  %85 = load i32, i32* @RT5651_JD_TRG_SEL_MASK, align 4
  %86 = load i32, i32* @RT5651_JD_TRG_SEL_JD2, align 4
  %87 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.rt5651_priv*, %struct.rt5651_priv** %7, align 8
  %89 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %82
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %94 = load i32, i32* @RT5651_IRQ_CTRL1, align 4
  %95 = load i32, i32* @RT5651_JD2_IRQ_EN, align 4
  %96 = load i32, i32* @RT5651_JD2_INV, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @RT5651_JD2_IRQ_EN, align 4
  %99 = load i32, i32* @RT5651_JD2_INV, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %93, i32 %94, i32 %97, i32 %100)
  br label %110

102:                                              ; preds = %82
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %104 = load i32, i32* @RT5651_IRQ_CTRL1, align 4
  %105 = load i32, i32* @RT5651_JD2_IRQ_EN, align 4
  %106 = load i32, i32* @RT5651_JD2_INV, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @RT5651_JD2_IRQ_EN, align 4
  %109 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %103, i32 %104, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %102, %92
  br label %116

111:                                              ; preds = %3
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %113 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @dev_err(i32 %114, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %184

116:                                              ; preds = %110, %81, %52, %23
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %121 = load i32, i32* @RT5651_GPIO_CTRL1, align 4
  %122 = load i32, i32* @RT5651_GP1_PIN_MASK, align 4
  %123 = load i32, i32* @RT5651_GP1_PIN_IRQ, align 4
  %124 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %120, i32 %121, i32 %122, i32 %123)
  %125 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %126 = load i32, i32* @RT5651_PWR_ANLG2, align 4
  %127 = load i32, i32* @RT5651_PWR_JD_M, align 4
  %128 = load i32, i32* @RT5651_PWR_JD_M, align 4
  %129 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %125, i32 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %119, %116
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %132 = load i64, i64* @RT5651_PR_BASE, align 8
  %133 = load i64, i64* @RT5651_BIAS_CUR4, align 8
  %134 = add nsw i64 %132, %133
  %135 = load %struct.rt5651_priv*, %struct.rt5651_priv** %7, align 8
  %136 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = or i32 43008, %137
  %139 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %131, i64 %134, i32 %138)
  %140 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %141 = load i32, i32* @RT5651_MICBIAS, align 4
  %142 = load i32, i32* @RT5651_MIC1_OVCD_MASK, align 4
  %143 = load i32, i32* @RT5651_MIC1_OVTH_MASK, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @RT5651_PWR_CLK12M_MASK, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @RT5651_PWR_MB_MASK, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @RT5651_MIC1_OVCD_EN, align 4
  %150 = load %struct.rt5651_priv*, %struct.rt5651_priv** %7, align 8
  %151 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %149, %152
  %154 = load i32, i32* @RT5651_PWR_MB_PU, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @RT5651_PWR_CLK12M_PU, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %140, i32 %141, i32 %148, i32 %157)
  %159 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %160 = load i32, i32* @RT5651_IRQ_CTRL2, align 4
  %161 = load i32, i32* @RT5651_MB1_OC_STKY_MASK, align 4
  %162 = load i32, i32* @RT5651_MB1_OC_STKY_EN, align 4
  %163 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %159, i32 %160, i32 %161, i32 %162)
  %164 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %165 = load %struct.rt5651_priv*, %struct.rt5651_priv** %7, align 8
  %166 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %165, i32 0, i32 5
  store %struct.snd_soc_jack* %164, %struct.snd_soc_jack** %166, align 8
  %167 = load %struct.rt5651_priv*, %struct.rt5651_priv** %7, align 8
  %168 = call i64 @rt5651_support_button_press(%struct.rt5651_priv* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %130
  %171 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %172 = call i32 @rt5651_enable_micbias1_for_ovcd(%struct.snd_soc_component* %171)
  %173 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %174 = call i32 @rt5651_enable_micbias1_ovcd_irq(%struct.snd_soc_component* %173)
  br label %175

175:                                              ; preds = %170, %130
  %176 = load %struct.rt5651_priv*, %struct.rt5651_priv** %7, align 8
  %177 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @enable_irq(i32 %178)
  %180 = load i32, i32* @system_power_efficient_wq, align 4
  %181 = load %struct.rt5651_priv*, %struct.rt5651_priv** %7, align 8
  %182 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %181, i32 0, i32 3
  %183 = call i32 @queue_work(i32 %180, i32* %182)
  br label %184

184:                                              ; preds = %175, %111, %22
  ret void
}

declare dso_local %struct.rt5651_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

declare dso_local i64 @rt5651_support_button_press(%struct.rt5651_priv*) #1

declare dso_local i32 @rt5651_enable_micbias1_for_ovcd(%struct.snd_soc_component*) #1

declare dso_local i32 @rt5651_enable_micbias1_ovcd_irq(%struct.snd_soc_component*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
