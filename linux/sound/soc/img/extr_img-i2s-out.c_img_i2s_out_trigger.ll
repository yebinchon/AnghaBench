; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-out.c_img_i2s_out_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-out.c_img_i2s_out_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.img_i2s_out = type { i32 }

@IMG_I2S_OUT_CTL = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CTL_CLK_EN_MASK = common dso_local global i32 0, align 4
@IMG_I2S_OUT_CTL_DATA_EN_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @img_i2s_out_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_i2s_out_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.img_i2s_out*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = call %struct.img_i2s_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.img_i2s_out* %11, %struct.img_i2s_out** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %36 [
    i32 130, label %13
    i32 131, label %13
    i32 132, label %13
    i32 129, label %33
    i32 128, label %33
    i32 133, label %33
  ]

13:                                               ; preds = %3, %3, %3
  %14 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %15 = load i32, i32* @IMG_I2S_OUT_CTL, align 4
  %16 = call i32 @img_i2s_out_readl(%struct.img_i2s_out* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %18 = getelementptr inbounds %struct.img_i2s_out, %struct.img_i2s_out* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @IMG_I2S_OUT_CTL_CLK_EN_MASK, align 4
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %21, %13
  %26 = load i32, i32* @IMG_I2S_OUT_CTL_DATA_EN_MASK, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @IMG_I2S_OUT_CTL, align 4
  %32 = call i32 @img_i2s_out_writel(%struct.img_i2s_out* %29, i32 %30, i32 %31)
  br label %39

33:                                               ; preds = %3, %3, %3
  %34 = load %struct.img_i2s_out*, %struct.img_i2s_out** %8, align 8
  %35 = call i32 @img_i2s_out_reset(%struct.img_i2s_out* %34)
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %33, %25
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.img_i2s_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @img_i2s_out_readl(%struct.img_i2s_out*, i32) #1

declare dso_local i32 @img_i2s_out_writel(%struct.img_i2s_out*, i32, i32) #1

declare dso_local i32 @img_i2s_out_reset(%struct.img_i2s_out*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
