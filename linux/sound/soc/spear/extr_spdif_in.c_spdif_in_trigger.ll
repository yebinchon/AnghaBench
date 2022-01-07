; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/spear/extr_spdif_in.c_spdif_in_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/spear/extr_spdif_in.c_spdif_in_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.spdif_in_dev = type { i32, i32 (...)*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SPDIF_IN_CTRL = common dso_local global i64 0, align 8
@SPDIF_IN_SAMPLE = common dso_local global i32 0, align 4
@SPDIF_IN_ENB = common dso_local global i32 0, align 4
@SPDIF_IN_IRQ_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @spdif_in_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_in_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.spdif_in_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = call %struct.spdif_in_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.spdif_in_dev* %12, %struct.spdif_in_dev** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %105

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %100 [
    i32 130, label %23
    i32 131, label %23
    i32 132, label %23
    i32 129, label %60
    i32 128, label %60
    i32 133, label %60
  ]

23:                                               ; preds = %21, %21, %21
  %24 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %8, align 8
  %25 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clk_enable(i32 %26)
  %28 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %8, align 8
  %29 = call i32 @spdif_in_configure(%struct.spdif_in_dev* %28)
  %30 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %8, align 8
  %31 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %8, align 8
  %32 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @spdif_in_format(%struct.spdif_in_dev* %30, i32 %34)
  %36 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %8, align 8
  %37 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SPDIF_IN_CTRL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @SPDIF_IN_SAMPLE, align 4
  %43 = load i32, i32* @SPDIF_IN_ENB, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %8, align 8
  %49 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SPDIF_IN_CTRL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %8, align 8
  %55 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SPDIF_IN_IRQ_MASK, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 15, i64 %58)
  br label %103

60:                                               ; preds = %21, %21, %21
  %61 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %8, align 8
  %62 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SPDIF_IN_CTRL, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* @SPDIF_IN_SAMPLE, align 4
  %68 = load i32, i32* @SPDIF_IN_ENB, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %8, align 8
  %75 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SPDIF_IN_CTRL, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %8, align 8
  %81 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SPDIF_IN_IRQ_MASK, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 0, i64 %84)
  %86 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %8, align 8
  %87 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %86, i32 0, i32 1
  %88 = load i32 (...)*, i32 (...)** %87, align 8
  %89 = icmp ne i32 (...)* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %60
  %91 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %8, align 8
  %92 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %91, i32 0, i32 1
  %93 = load i32 (...)*, i32 (...)** %92, align 8
  %94 = call i32 (...) %93()
  br label %95

95:                                               ; preds = %90, %60
  %96 = load %struct.spdif_in_dev*, %struct.spdif_in_dev** %8, align 8
  %97 = getelementptr inbounds %struct.spdif_in_dev, %struct.spdif_in_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @clk_disable(i32 %98)
  br label %103

100:                                              ; preds = %21
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %100, %95, %23
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %18
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.spdif_in_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @spdif_in_configure(%struct.spdif_in_dev*) #1

declare dso_local i32 @spdif_in_format(%struct.spdif_in_dev*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
