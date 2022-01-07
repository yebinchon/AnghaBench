; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_set_dac_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_set_dac_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.adav80x = type { i32 }

@ADAV80X_DAC_CTRL2_DIV1 = common dso_local global i32 0, align 4
@ADAV80X_DAC_CTRL2_INTERPOL_256FS = common dso_local global i32 0, align 4
@ADAV80X_DAC_CTRL2_DIV2 = common dso_local global i32 0, align 4
@ADAV80X_DAC_CTRL2_INTERPOL_128FS = common dso_local global i32 0, align 4
@ADAV80X_DAC_CTRL2 = common dso_local global i32 0, align 4
@ADAV80X_DAC_CTRL2_DIV_MASK = common dso_local global i32 0, align 4
@ADAV80X_DAC_CTRL2_INTERPOL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @adav80x_set_dac_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adav80x_set_dac_clock(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adav80x*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.adav80x* %8, %struct.adav80x** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ule i32 %9, 48000
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @ADAV80X_DAC_CTRL2_DIV1, align 4
  %13 = load i32, i32* @ADAV80X_DAC_CTRL2_INTERPOL_256FS, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @ADAV80X_DAC_CTRL2_DIV2, align 4
  %17 = load i32, i32* @ADAV80X_DAC_CTRL2_INTERPOL_128FS, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.adav80x*, %struct.adav80x** %5, align 8
  %21 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ADAV80X_DAC_CTRL2, align 4
  %24 = load i32, i32* @ADAV80X_DAC_CTRL2_DIV_MASK, align 4
  %25 = load i32, i32* @ADAV80X_DAC_CTRL2_INTERPOL_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %26, i32 %27)
  ret i32 0
}

declare dso_local %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
