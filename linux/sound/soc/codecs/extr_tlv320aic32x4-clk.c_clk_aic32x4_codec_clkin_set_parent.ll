; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_clk_aic32x4_codec_clkin_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_clk_aic32x4_codec_clkin_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_aic32x4 = type { i32 }

@AIC32X4_CLKMUX = common dso_local global i32 0, align 4
@AIC32X4_CODEC_CLKIN_MASK = common dso_local global i32 0, align 4
@AIC32X4_CODEC_CLKIN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @clk_aic32x4_codec_clkin_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_aic32x4_codec_clkin_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_aic32x4*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.clk_aic32x4* @to_clk_aic32x4(%struct.clk_hw* %6)
  store %struct.clk_aic32x4* %7, %struct.clk_aic32x4** %5, align 8
  %8 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %5, align 8
  %9 = getelementptr inbounds %struct.clk_aic32x4, %struct.clk_aic32x4* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AIC32X4_CLKMUX, align 4
  %12 = load i32, i32* @AIC32X4_CODEC_CLKIN_MASK, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @AIC32X4_CODEC_CLKIN_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 %12, i32 %15)
  ret i32 %16
}

declare dso_local %struct.clk_aic32x4* @to_clk_aic32x4(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
