; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-evm.c_evm_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-evm.c_evm_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_soc_card_drvdata_davinci = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @evm_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evm_startup(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_soc_card_drvdata_davinci*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  store %struct.snd_soc_pcm_runtime* %9, %struct.snd_soc_pcm_runtime** %4, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_card*, %struct.snd_soc_card** %11, align 8
  store %struct.snd_soc_card* %12, %struct.snd_soc_card** %5, align 8
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %14 = call %struct.snd_soc_card_drvdata_davinci* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %13)
  store %struct.snd_soc_card_drvdata_davinci* %14, %struct.snd_soc_card_drvdata_davinci** %6, align 8
  %15 = load %struct.snd_soc_card_drvdata_davinci*, %struct.snd_soc_card_drvdata_davinci** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_card_drvdata_davinci, %struct.snd_soc_card_drvdata_davinci* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.snd_soc_card_drvdata_davinci*, %struct.snd_soc_card_drvdata_davinci** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_card_drvdata_davinci, %struct.snd_soc_card_drvdata_davinci* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @clk_prepare_enable(i64 %22)
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.snd_soc_card_drvdata_davinci* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
