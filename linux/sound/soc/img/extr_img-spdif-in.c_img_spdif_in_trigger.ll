; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-in.c_img_spdif_in_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-in.c_img_spdif_in_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.img_spdif_in = type { i32, i32, i32 }

@IMG_SPDIF_IN_CTL = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_CTL_SRD_MASK = common dso_local global i64 0, align 8
@IMG_SPDIF_IN_CTL_SRD_SHIFT = common dso_local global i64 0, align 8
@IMG_SPDIF_IN_CTL_SRT_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @img_spdif_in_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spdif_in_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.img_spdif_in*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %12 = call %struct.img_spdif_in* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.img_spdif_in* %12, %struct.img_spdif_in** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.img_spdif_in*, %struct.img_spdif_in** %8, align 8
  %14 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %13, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %60 [
    i32 130, label %18
    i32 131, label %18
    i32 132, label %18
    i32 129, label %46
    i32 128, label %46
    i32 133, label %46
  ]

18:                                               ; preds = %3, %3, %3
  %19 = load %struct.img_spdif_in*, %struct.img_spdif_in** %8, align 8
  %20 = load i32, i32* @IMG_SPDIF_IN_CTL, align 4
  %21 = call i64 @img_spdif_in_readl(%struct.img_spdif_in* %19, i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load %struct.img_spdif_in*, %struct.img_spdif_in** %8, align 8
  %23 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i64, i64* @IMG_SPDIF_IN_CTL_SRD_MASK, align 8
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %10, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %10, align 8
  br label %36

31:                                               ; preds = %18
  %32 = load i64, i64* @IMG_SPDIF_IN_CTL_SRD_SHIFT, align 8
  %33 = shl i64 1, %32
  %34 = load i64, i64* %10, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %10, align 8
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i64, i64* @IMG_SPDIF_IN_CTL_SRT_MASK, align 8
  %38 = load i64, i64* %10, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %10, align 8
  %40 = load %struct.img_spdif_in*, %struct.img_spdif_in** %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* @IMG_SPDIF_IN_CTL, align 4
  %43 = call i32 @img_spdif_in_writel(%struct.img_spdif_in* %40, i64 %41, i32 %42)
  %44 = load %struct.img_spdif_in*, %struct.img_spdif_in** %8, align 8
  %45 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %63

46:                                               ; preds = %3, %3, %3
  %47 = load %struct.img_spdif_in*, %struct.img_spdif_in** %8, align 8
  %48 = load i32, i32* @IMG_SPDIF_IN_CTL, align 4
  %49 = call i64 @img_spdif_in_readl(%struct.img_spdif_in* %47, i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* @IMG_SPDIF_IN_CTL_SRT_MASK, align 8
  %51 = xor i64 %50, -1
  %52 = load i64, i64* %10, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %10, align 8
  %54 = load %struct.img_spdif_in*, %struct.img_spdif_in** %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* @IMG_SPDIF_IN_CTL, align 4
  %57 = call i32 @img_spdif_in_writel(%struct.img_spdif_in* %54, i64 %55, i32 %56)
  %58 = load %struct.img_spdif_in*, %struct.img_spdif_in** %8, align 8
  %59 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  br label %63

60:                                               ; preds = %3
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %46, %36
  %64 = load %struct.img_spdif_in*, %struct.img_spdif_in** %8, align 8
  %65 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %64, i32 0, i32 1
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local %struct.img_spdif_in* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @img_spdif_in_readl(%struct.img_spdif_in*, i32) #1

declare dso_local i32 @img_spdif_in_writel(%struct.img_spdif_in*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
