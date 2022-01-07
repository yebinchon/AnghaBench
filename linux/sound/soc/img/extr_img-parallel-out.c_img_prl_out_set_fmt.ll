; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-parallel-out.c_img_prl_out_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-parallel-out.c_img_prl_out_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.img_prl_out = type { i32 }

@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@IMG_PRL_OUT_CTL_EDGE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IMG_PRL_OUT_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @img_prl_out_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_prl_out_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.img_prl_out*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = call %struct.img_prl_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.img_prl_out* %11, %struct.img_prl_out** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %20 [
    i32 128, label %15
    i32 129, label %16
  ]

15:                                               ; preds = %2
  br label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @IMG_PRL_OUT_CTL_EDGE_MASK, align 4
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %50

23:                                               ; preds = %16, %15
  %24 = load %struct.img_prl_out*, %struct.img_prl_out** %6, align 8
  %25 = getelementptr inbounds %struct.img_prl_out, %struct.img_prl_out* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pm_runtime_get_sync(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %50

32:                                               ; preds = %23
  %33 = load %struct.img_prl_out*, %struct.img_prl_out** %6, align 8
  %34 = load i32, i32* @IMG_PRL_OUT_CTL, align 4
  %35 = call i32 @img_prl_out_readl(%struct.img_prl_out* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @IMG_PRL_OUT_CTL_EDGE_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.img_prl_out*, %struct.img_prl_out** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @IMG_PRL_OUT_CTL, align 4
  %45 = call i32 @img_prl_out_writel(%struct.img_prl_out* %42, i32 %43, i32 %44)
  %46 = load %struct.img_prl_out*, %struct.img_prl_out** %6, align 8
  %47 = getelementptr inbounds %struct.img_prl_out, %struct.img_prl_out* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pm_runtime_put(i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %32, %30, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.img_prl_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @img_prl_out_readl(%struct.img_prl_out*, i32) #1

declare dso_local i32 @img_prl_out_writel(%struct.img_prl_out*, i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
