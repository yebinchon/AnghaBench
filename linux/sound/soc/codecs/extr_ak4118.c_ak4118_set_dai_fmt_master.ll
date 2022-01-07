; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4118.c_ak4118_set_dai_fmt_master.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4118.c_ak4118_set_dai_fmt_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4118_priv = type { i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@AK4118_REG_FORMAT_CTL_DIF0 = common dso_local global i32 0, align 4
@AK4118_REG_FORMAT_CTL_DIF2 = common dso_local global i32 0, align 4
@AK4118_REG_FORMAT_CTL_DIF1 = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ak4118_priv*, i32)* @ak4118_set_dai_fmt_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4118_set_dai_fmt_master(%struct.ak4118_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ak4118_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ak4118_priv* %0, %struct.ak4118_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %9 = and i32 %7, %8
  switch i32 %9, label %20 [
    i32 130, label %10
    i32 128, label %14
    i32 129, label %18
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @AK4118_REG_FORMAT_CTL_DIF0, align 4
  %12 = load i32, i32* @AK4118_REG_FORMAT_CTL_DIF2, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %6, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* @AK4118_REG_FORMAT_CTL_DIF0, align 4
  %16 = load i32, i32* @AK4118_REG_FORMAT_CTL_DIF1, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %6, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @AK4118_REG_FORMAT_CTL_DIF2, align 4
  store i32 %19, i32* %6, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %18, %14, %10
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
