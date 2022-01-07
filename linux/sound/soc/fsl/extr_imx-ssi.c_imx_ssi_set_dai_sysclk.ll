; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.imx_ssi = type { i64 }

@SSI_SCR = common dso_local global i64 0, align 8
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@SSI_SCR_SYS_CLK_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @imx_ssi_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ssi_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.imx_ssi*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = call %struct.imx_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.imx_ssi* %13, %struct.imx_ssi** %10, align 8
  %14 = load %struct.imx_ssi*, %struct.imx_ssi** %10, align 8
  %15 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SSI_SCR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %35 [
    i32 128, label %21
  ]

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @SSI_SCR_SYS_CLK_EN, align 4
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  br label %34

29:                                               ; preds = %21
  %30 = load i32, i32* @SSI_SCR_SYS_CLK_EN, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %29, %25
  br label %38

35:                                               ; preds = %4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %46

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.imx_ssi*, %struct.imx_ssi** %10, align 8
  %41 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SSI_SCR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %38, %35
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.imx_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
