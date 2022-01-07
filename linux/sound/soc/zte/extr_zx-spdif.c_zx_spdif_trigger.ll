; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-spdif.c_zx_spdif_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-spdif.c_zx_spdif_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.zx_spdif_info = type { i64 }

@ZX_FIFOCTRL = common dso_local global i64 0, align 8
@ZX_FIFOCTRL_TX_FIFO_RST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @zx_spdif_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_spdif_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.zx_spdif_info*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.zx_spdif_info* @dev_get_drvdata(i32 %12)
  store %struct.zx_spdif_info* %13, %struct.zx_spdif_info** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %42 [
    i32 130, label %15
    i32 131, label %32
    i32 132, label %32
    i32 129, label %37
    i32 128, label %37
    i32 133, label %37
  ]

15:                                               ; preds = %3
  %16 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %8, align 8
  %17 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ZX_FIFOCTRL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl_relaxed(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @ZX_FIFOCTRL_TX_FIFO_RST, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %8, align 8
  %27 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ZX_FIFOCTRL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel_relaxed(i32 %25, i64 %30)
  br label %32

32:                                               ; preds = %3, %3, %15
  %33 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %8, align 8
  %34 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @zx_spdif_cfg_tx(i64 %35, i32 1)
  br label %45

37:                                               ; preds = %3, %3, %3
  %38 = load %struct.zx_spdif_info*, %struct.zx_spdif_info** %8, align 8
  %39 = getelementptr inbounds %struct.zx_spdif_info, %struct.zx_spdif_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @zx_spdif_cfg_tx(i64 %40, i32 0)
  br label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %37, %32
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local %struct.zx_spdif_info* @dev_get_drvdata(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @zx_spdif_cfg_tx(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
