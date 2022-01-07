; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64 }
%struct.jz4740_i2s = type { i32, i32 }

@JZ_REG_AIC_CONF = common dso_local global i32 0, align 4
@JZ_AIC_CONF_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @jz4740_i2s_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_i2s_suspend(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.jz4740_i2s*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %5 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %6 = call %struct.jz4740_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %5)
  store %struct.jz4740_i2s* %6, %struct.jz4740_i2s** %3, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %3, align 8
  %13 = load i32, i32* @JZ_REG_AIC_CONF, align 4
  %14 = call i32 @jz4740_i2s_read(%struct.jz4740_i2s* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @JZ_AIC_CONF_ENABLE, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %3, align 8
  %20 = load i32, i32* @JZ_REG_AIC_CONF, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @jz4740_i2s_write(%struct.jz4740_i2s* %19, i32 %20, i32 %21)
  %23 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %3, align 8
  %24 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_disable_unprepare(i32 %25)
  br label %27

27:                                               ; preds = %11, %1
  %28 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %3, align 8
  %29 = getelementptr inbounds %struct.jz4740_i2s, %struct.jz4740_i2s* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_disable_unprepare(i32 %30)
  ret i32 0
}

declare dso_local %struct.jz4740_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @jz4740_i2s_read(%struct.jz4740_i2s*, i32) #1

declare dso_local i32 @jz4740_i2s_write(%struct.jz4740_i2s*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
