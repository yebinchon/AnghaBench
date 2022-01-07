; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-parallel-out.c_img_prl_out_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-parallel-out.c_img_prl_out_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.img_prl_out = type { i32 }

@IMG_PRL_OUT_CTL_PACKH_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IMG_PRL_OUT_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @img_prl_out_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_prl_out_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.img_prl_out*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = call %struct.img_prl_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.img_prl_out* %14, %struct.img_prl_out** %8, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %16 = call i32 @params_rate(%struct.snd_pcm_hw_params* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_channels(%struct.snd_pcm_hw_params* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %20 = call i32 @params_format(%struct.snd_pcm_hw_params* %19)
  switch i32 %20, label %26 [
    i32 128, label %21
    i32 129, label %25
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @IMG_PRL_OUT_CTL_PACKH_MASK, align 4
  %23 = load i32, i32* %12, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %12, align 4
  br label %29

25:                                               ; preds = %3
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %55

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %55

35:                                               ; preds = %29
  %36 = load %struct.img_prl_out*, %struct.img_prl_out** %8, align 8
  %37 = getelementptr inbounds %struct.img_prl_out, %struct.img_prl_out* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = mul i32 %39, 256
  %41 = call i32 @clk_set_rate(i32 %38, i32 %40)
  %42 = load %struct.img_prl_out*, %struct.img_prl_out** %8, align 8
  %43 = load i32, i32* @IMG_PRL_OUT_CTL, align 4
  %44 = call i32 @img_prl_out_readl(%struct.img_prl_out* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @IMG_PRL_OUT_CTL_PACKH_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load %struct.img_prl_out*, %struct.img_prl_out** %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @IMG_PRL_OUT_CTL, align 4
  %54 = call i32 @img_prl_out_writel(%struct.img_prl_out* %51, i32 %52, i32 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %35, %32, %26
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.img_prl_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @img_prl_out_readl(%struct.img_prl_out*, i32) #1

declare dso_local i32 @img_prl_out_writel(%struct.img_prl_out*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
