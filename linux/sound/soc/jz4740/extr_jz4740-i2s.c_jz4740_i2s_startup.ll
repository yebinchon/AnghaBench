; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i64 }
%struct.jz4740_i2s = type { i32 }

@JZ_REG_AIC_CTRL = common dso_local global i32 0, align 4
@JZ_AIC_CTRL_FLUSH = common dso_local global i32 0, align 4
@JZ_REG_AIC_CONF = common dso_local global i32 0, align 4
@JZ_AIC_CONF_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @jz4740_i2s_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_i2s_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.jz4740_i2s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = call %struct.jz4740_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.jz4740_i2s* %11, %struct.jz4740_i2s** %6, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %6, align 8
  %19 = load i32, i32* @JZ_REG_AIC_CTRL, align 4
  %20 = call i32 @jz4740_i2s_read(%struct.jz4740_i2s* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @JZ_AIC_CTRL_FLUSH, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %6, align 8
  %25 = load i32, i32* @JZ_REG_AIC_CTRL, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @jz4740_i2s_write(%struct.jz4740_i2s* %24, i32 %25, i32 %26)
  %28 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %6, align 8
  %29 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_prepare_enable(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %17
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %47

36:                                               ; preds = %17
  %37 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %6, align 8
  %38 = load i32, i32* @JZ_REG_AIC_CONF, align 4
  %39 = call i32 @jz4740_i2s_read(%struct.jz4740_i2s* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @JZ_AIC_CONF_ENABLE, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %6, align 8
  %44 = load i32, i32* @JZ_REG_AIC_CONF, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @jz4740_i2s_write(%struct.jz4740_i2s* %43, i32 %44, i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %36, %34, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.jz4740_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @jz4740_i2s_read(%struct.jz4740_i2s*, i32) #1

declare dso_local i32 @jz4740_i2s_write(%struct.jz4740_i2s*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
