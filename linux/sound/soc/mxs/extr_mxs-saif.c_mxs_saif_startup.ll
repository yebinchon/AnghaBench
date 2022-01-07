; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.mxs_saif = type { i32, i64, i64, i64 }

@BM_SAIF_CTRL_SFTRST = common dso_local global i32 0, align 4
@SAIF_CTRL = common dso_local global i64 0, align 8
@MXS_CLR_ADDR = common dso_local global i64 0, align 8
@BM_SAIF_CTRL_CLKGATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @mxs_saif_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_saif_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.mxs_saif*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %9 = call %struct.mxs_saif* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.mxs_saif* %9, %struct.mxs_saif** %6, align 8
  %10 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %11 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %13 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @BM_SAIF_CTRL_SFTRST, align 4
  %15 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %16 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SAIF_CTRL, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @MXS_CLR_ADDR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @__raw_writel(i32 %14, i64 %21)
  %23 = load i32, i32* @BM_SAIF_CTRL_CLKGATE, align 4
  %24 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %25 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SAIF_CTRL, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* @MXS_CLR_ADDR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @__raw_writel(i32 %23, i64 %30)
  %32 = load %struct.mxs_saif*, %struct.mxs_saif** %6, align 8
  %33 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_prepare(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %38
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.mxs_saif* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @clk_prepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
