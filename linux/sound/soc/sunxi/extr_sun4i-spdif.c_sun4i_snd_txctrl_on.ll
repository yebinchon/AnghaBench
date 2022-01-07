; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-spdif.c_sun4i_snd_txctrl_on.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-spdif.c_sun4i_snd_txctrl_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sun4i_spdif_dev = type { i32 }

@SUN4I_SPDIF_TXCFG = common dso_local global i32 0, align 4
@SUN4I_SPDIF_TXCFG_SINGLEMOD = common dso_local global i32 0, align 4
@SUN4I_SPDIF_TXCFG_TXEN = common dso_local global i32 0, align 4
@SUN4I_SPDIF_INT = common dso_local global i32 0, align 4
@SUN4I_SPDIF_INT_TXDRQEN = common dso_local global i32 0, align 4
@SUN4I_SPDIF_CTL = common dso_local global i32 0, align 4
@SUN4I_SPDIF_CTL_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.sun4i_spdif_dev*)* @sun4i_snd_txctrl_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_snd_txctrl_on(%struct.snd_pcm_substream* %0, %struct.sun4i_spdif_dev* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.sun4i_spdif_dev*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.sun4i_spdif_dev* %1, %struct.sun4i_spdif_dev** %4, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %4, align 8
  %13 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SUN4I_SPDIF_TXCFG, align 4
  %16 = load i32, i32* @SUN4I_SPDIF_TXCFG_SINGLEMOD, align 4
  %17 = load i32, i32* @SUN4I_SPDIF_TXCFG_SINGLEMOD, align 4
  %18 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %11, %2
  %20 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %4, align 8
  %21 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SUN4I_SPDIF_TXCFG, align 4
  %24 = load i32, i32* @SUN4I_SPDIF_TXCFG_TXEN, align 4
  %25 = load i32, i32* @SUN4I_SPDIF_TXCFG_TXEN, align 4
  %26 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %4, align 8
  %28 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SUN4I_SPDIF_INT, align 4
  %31 = load i32, i32* @SUN4I_SPDIF_INT_TXDRQEN, align 4
  %32 = load i32, i32* @SUN4I_SPDIF_INT_TXDRQEN, align 4
  %33 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %4, align 8
  %35 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SUN4I_SPDIF_CTL, align 4
  %38 = load i32, i32* @SUN4I_SPDIF_CTL_GEN, align 4
  %39 = load i32, i32* @SUN4I_SPDIF_CTL_GEN, align 4
  %40 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
