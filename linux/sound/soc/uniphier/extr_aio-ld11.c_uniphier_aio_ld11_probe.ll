; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-ld11.c_uniphier_aio_ld11_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-ld11.c_uniphier_aio_ld11_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }

@AUD_PLL_A1 = common dso_local global i32 0, align 4
@AUD_PLL_F1 = common dso_local global i32 0, align 4
@AUD_PLL_A2 = common dso_local global i32 0, align 4
@AUD_PLL_F2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @uniphier_aio_ld11_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aio_ld11_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %5 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %6 = call i32 @uniphier_aio_dai_probe(%struct.snd_soc_dai* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %13 = load i32, i32* @AUD_PLL_A1, align 4
  %14 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %12, i32 %13, i32 0, i32 0, i32 36864000)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %11
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %21 = load i32, i32* @AUD_PLL_F1, align 4
  %22 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %20, i32 %21, i32 0, i32 0, i32 36864000)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %19
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %29 = load i32, i32* @AUD_PLL_A2, align 4
  %30 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %28, i32 %29, i32 0, i32 0, i32 33868800)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %27
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %37 = load i32, i32* @AUD_PLL_F2, align 4
  %38 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %36, i32 %37, i32 0, i32 0, i32 33868800)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %41, %33, %25, %17, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @uniphier_aio_dai_probe(%struct.snd_soc_dai*) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
