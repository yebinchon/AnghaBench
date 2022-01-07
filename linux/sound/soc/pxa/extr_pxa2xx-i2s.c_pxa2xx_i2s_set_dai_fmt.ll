; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa2xx-i2s.c_pxa2xx_i2s_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa2xx-i2s.c_pxa2xx_i2s_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_soc_dai = type { i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@pxa_i2s = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SACR1_AMSL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @pxa2xx_i2s_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_i2s_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %7 = and i32 %5, %6
  switch i32 %7, label %11 [
    i32 129, label %8
    i32 128, label %9
  ]

8:                                                ; preds = %2
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pxa_i2s, i32 0, i32 1), align 4
  br label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @SACR1_AMSL, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pxa_i2s, i32 0, i32 1), align 4
  br label %11

11:                                               ; preds = %2, %9, %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %17 [
    i32 130, label %15
    i32 131, label %16
  ]

15:                                               ; preds = %11
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pxa_i2s, i32 0, i32 0), align 4
  br label %18

16:                                               ; preds = %11
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pxa_i2s, i32 0, i32 0), align 4
  br label %18

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17, %16, %15
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
