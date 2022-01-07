; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa2xx-i2s.c_pxa2xx_i2s_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa2xx-i2s.c_pxa2xx_i2s_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"I2SCLK\00", align 1
@clk_i2s = common dso_local global i32 0, align 4
@SACR0_RST = common dso_local global i64 0, align 8
@SACR0 = common dso_local global i64 0, align 8
@SACR1_DRPL = common dso_local global i32 0, align 4
@SACR1_DREC = common dso_local global i32 0, align 4
@SACR1 = common dso_local global i32 0, align 4
@SAIMR_RFS = common dso_local global i32 0, align 4
@SAIMR_TFS = common dso_local global i32 0, align 4
@SAIMR = common dso_local global i32 0, align 4
@pxa2xx_i2s_pcm_stereo_out = common dso_local global i32 0, align 4
@pxa2xx_i2s_pcm_stereo_in = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @pxa2xx_i2s_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_i2s_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %4 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %5 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @clk_get(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* @clk_i2s, align 4
  %8 = load i32, i32* @clk_i2s, align 4
  %9 = call i64 @IS_ERR(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @clk_i2s, align 4
  %13 = call i32 @PTR_ERR(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load i64, i64* @SACR0_RST, align 8
  store i64 %15, i64* @SACR0, align 8
  store i64 0, i64* @SACR0, align 8
  %16 = load i32, i32* @SACR1_DRPL, align 4
  %17 = load i32, i32* @SACR1_DREC, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* @SACR1, align 4
  %19 = load i32, i32* @SAIMR_RFS, align 4
  %20 = load i32, i32* @SAIMR_TFS, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* @SAIMR, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* @SAIMR, align 4
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %26 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %25, i32* @pxa2xx_i2s_pcm_stereo_out, i32* @pxa2xx_i2s_pcm_stereo_in)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %14, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
