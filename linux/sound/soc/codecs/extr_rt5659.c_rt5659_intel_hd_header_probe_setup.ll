; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_intel_hd_header_probe_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_intel_hd_header_probe_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5659_priv = type { i32, i32, i32 }

@RT5659_GPIO_STA = common dso_local global i32 0, align 4
@RT5659_IRQ_CTRL_1 = common dso_local global i32 0, align 4
@RT5659_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5659_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5659_PWR_MB = common dso_local global i32 0, align 4
@RT5659_PWR_FV2 = common dso_local global i32 0, align 4
@RT5659_PWR_ANLG_3 = common dso_local global i32 0, align 4
@RT5659_PWR_LDO2 = common dso_local global i32 0, align 4
@RT5659_PWR_ANLG_2 = common dso_local global i32 0, align 4
@RT5659_PWR_MB1 = common dso_local global i32 0, align 4
@RT5659_PWR_VOL = common dso_local global i32 0, align 4
@RT5659_PWR_MIC_DET = common dso_local global i32 0, align 4
@RT5659_4BTN_IL_CMD_2 = common dso_local global i32 0, align 4
@RT5659_4BTN_IL_MASK = common dso_local global i32 0, align 4
@RT5659_4BTN_IL_EN = common dso_local global i32 0, align 4
@RT5659_4BTN_IL_CMD_1 = common dso_local global i32 0, align 4
@RT5659_IRQ_CTRL_2 = common dso_local global i32 0, align 4
@RT5659_IL_IRQ_MASK = common dso_local global i32 0, align 4
@RT5659_IL_IRQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt5659_priv*)* @rt5659_intel_hd_header_probe_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5659_intel_hd_header_probe_setup(%struct.rt5659_priv* %0) #0 {
  %2 = alloca %struct.rt5659_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.rt5659_priv* %0, %struct.rt5659_priv** %2, align 8
  %4 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %5 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @RT5659_GPIO_STA, align 4
  %8 = call i32 @regmap_read(i32 %6, i32 %7, i32* %3)
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %14 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %16 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RT5659_IRQ_CTRL_1, align 4
  %19 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 16, i32 0)
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %22 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RT5659_IRQ_CTRL_1, align 4
  %25 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 16, i32 16)
  br label %26

26:                                               ; preds = %20, %12
  %27 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %28 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RT5659_PWR_ANLG_1, align 4
  %31 = load i32, i32* @RT5659_PWR_VREF2, align 4
  %32 = load i32, i32* @RT5659_PWR_MB, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @RT5659_PWR_VREF2, align 4
  %35 = load i32, i32* @RT5659_PWR_MB, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %33, i32 %36)
  %38 = call i32 @msleep(i32 20)
  %39 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %40 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RT5659_PWR_ANLG_1, align 4
  %43 = load i32, i32* @RT5659_PWR_FV2, align 4
  %44 = load i32, i32* @RT5659_PWR_FV2, align 4
  %45 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %47 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RT5659_PWR_ANLG_3, align 4
  %50 = load i32, i32* @RT5659_PWR_LDO2, align 4
  %51 = load i32, i32* @RT5659_PWR_LDO2, align 4
  %52 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %54 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RT5659_PWR_ANLG_2, align 4
  %57 = load i32, i32* @RT5659_PWR_MB1, align 4
  %58 = load i32, i32* @RT5659_PWR_MB1, align 4
  %59 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %61 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RT5659_PWR_VOL, align 4
  %64 = load i32, i32* @RT5659_PWR_MIC_DET, align 4
  %65 = load i32, i32* @RT5659_PWR_MIC_DET, align 4
  %66 = call i32 @regmap_update_bits(i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = call i32 @msleep(i32 20)
  %68 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %69 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RT5659_4BTN_IL_CMD_2, align 4
  %72 = load i32, i32* @RT5659_4BTN_IL_MASK, align 4
  %73 = load i32, i32* @RT5659_4BTN_IL_EN, align 4
  %74 = call i32 @regmap_update_bits(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %76 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RT5659_4BTN_IL_CMD_1, align 4
  %79 = call i32 @regmap_read(i32 %77, i32 %78, i32* %3)
  %80 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %81 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @RT5659_4BTN_IL_CMD_1, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @regmap_write(i32 %82, i32 %83, i32 %84)
  %86 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %87 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @RT5659_4BTN_IL_CMD_1, align 4
  %90 = call i32 @regmap_read(i32 %88, i32 %89, i32* %3)
  %91 = load i32, i32* %3, align 4
  %92 = and i32 %91, 8192
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %26
  %95 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %96 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %98 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @RT5659_IRQ_CTRL_2, align 4
  %101 = call i32 @regmap_update_bits(i32 %99, i32 %100, i32 2, i32 2)
  br label %108

102:                                              ; preds = %26
  %103 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %104 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @RT5659_IRQ_CTRL_2, align 4
  %107 = call i32 @regmap_update_bits(i32 %105, i32 %106, i32 2, i32 0)
  br label %108

108:                                              ; preds = %102, %94
  %109 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %110 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @RT5659_IRQ_CTRL_2, align 4
  %113 = load i32, i32* @RT5659_IL_IRQ_MASK, align 4
  %114 = load i32, i32* @RT5659_IL_IRQ_EN, align 4
  %115 = call i32 @regmap_update_bits(i32 %111, i32 %112, i32 %113, i32 %114)
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
