; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-out.c_img_spdif_out_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-out.c_img_spdif_out_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.img_spdif_out = type { i32 }

@IMG_SPDIF_OUT_CTL = common dso_local global i32 0, align 4
@IMG_SPDIF_OUT_CTL_SRT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @img_spdif_out_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spdif_out_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.img_spdif_out*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = call %struct.img_spdif_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.img_spdif_out* %12, %struct.img_spdif_out** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %36 [
    i32 130, label %14
    i32 131, label %14
    i32 132, label %14
    i32 129, label %25
    i32 128, label %25
    i32 133, label %25
  ]

14:                                               ; preds = %3, %3, %3
  %15 = load %struct.img_spdif_out*, %struct.img_spdif_out** %8, align 8
  %16 = load i32, i32* @IMG_SPDIF_OUT_CTL, align 4
  %17 = call i32 @img_spdif_out_readl(%struct.img_spdif_out* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @IMG_SPDIF_OUT_CTL_SRT_MASK, align 4
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load %struct.img_spdif_out*, %struct.img_spdif_out** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @IMG_SPDIF_OUT_CTL, align 4
  %24 = call i32 @img_spdif_out_writel(%struct.img_spdif_out* %21, i32 %22, i32 %23)
  br label %39

25:                                               ; preds = %3, %3, %3
  %26 = load %struct.img_spdif_out*, %struct.img_spdif_out** %8, align 8
  %27 = getelementptr inbounds %struct.img_spdif_out, %struct.img_spdif_out* %26, i32 0, i32 0
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.img_spdif_out*, %struct.img_spdif_out** %8, align 8
  %31 = call i32 @img_spdif_out_reset(%struct.img_spdif_out* %30)
  %32 = load %struct.img_spdif_out*, %struct.img_spdif_out** %8, align 8
  %33 = getelementptr inbounds %struct.img_spdif_out, %struct.img_spdif_out* %32, i32 0, i32 0
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %25, %14
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.img_spdif_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @img_spdif_out_readl(%struct.img_spdif_out*, i32) #1

declare dso_local i32 @img_spdif_out_writel(%struct.img_spdif_out*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @img_spdif_out_reset(%struct.img_spdif_out*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
