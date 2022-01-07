; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pdmic.c_atmel_pdmic_cpu_dai_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pdmic.c_atmel_pdmic_cpu_dai_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.atmel_pdmic = type { i32, %struct.snd_pcm_substream*, i32, i32 }

@PDMIC_CR = common dso_local global i32 0, align 4
@PDMIC_IER = common dso_local global i32 0, align 4
@PDMIC_IER_OVRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @atmel_pdmic_cpu_dai_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pdmic_cpu_dai_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.atmel_pdmic*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %6, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.atmel_pdmic* @snd_soc_card_get_drvdata(i32 %14)
  store %struct.atmel_pdmic* %15, %struct.atmel_pdmic** %7, align 8
  %16 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %7, align 8
  %17 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @clk_prepare_enable(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %7, align 8
  %26 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_prepare_enable(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %7, align 8
  %33 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_disable_unprepare(i32 %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %24
  %38 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %7, align 8
  %39 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PDMIC_CR, align 4
  %42 = call i32 @regmap_write(i32 %40, i32 %41, i32 0)
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %44 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %7, align 8
  %45 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %44, i32 0, i32 1
  store %struct.snd_pcm_substream* %43, %struct.snd_pcm_substream** %45, align 8
  %46 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %7, align 8
  %47 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PDMIC_IER, align 4
  %50 = load i32, i32* @PDMIC_IER_OVRE, align 4
  %51 = call i32 @regmap_write(i32 %48, i32 %49, i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %37, %31, %22
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.atmel_pdmic* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
