; ModuleID = '/home/carl/AnghaBench/linux/sound/sh/extr_aica.c_snd_aicapcm_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sh/extr_aica.c_snd_aicapcm_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime*, %struct.TYPE_2__* }
%struct.snd_pcm_runtime = type { i32 }
%struct.TYPE_2__ = type { %struct.snd_card_aica* }
%struct.snd_card_aica = type { i64, i64, i64, %struct.aica_channel*, i32 }
%struct.aica_channel = type { i32, i64, i64, i32, i32, i32 }

@enable = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SM_8BIT = common dso_local global i32 0, align 4
@AICA_CMD_START = common dso_local global i32 0, align 4
@snd_pcm_aica_playback_hw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_aicapcm_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_aicapcm_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.aica_channel*, align 8
  %6 = alloca %struct.snd_card_aica*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load i32, i32* @enable, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %59

12:                                               ; preds = %1
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.snd_card_aica*, %struct.snd_card_aica** %16, align 8
  store %struct.snd_card_aica* %17, %struct.snd_card_aica** %6, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.aica_channel* @kmalloc(i32 40, i32 %18)
  store %struct.aica_channel* %19, %struct.aica_channel** %5, align 8
  %20 = load %struct.aica_channel*, %struct.aica_channel** %5, align 8
  %21 = icmp ne %struct.aica_channel* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %59

25:                                               ; preds = %12
  %26 = load i32, i32* @SM_8BIT, align 4
  %27 = load %struct.aica_channel*, %struct.aica_channel** %5, align 8
  %28 = getelementptr inbounds %struct.aica_channel, %struct.aica_channel* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @AICA_CMD_START, align 4
  %30 = load %struct.aica_channel*, %struct.aica_channel** %5, align 8
  %31 = getelementptr inbounds %struct.aica_channel, %struct.aica_channel* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.snd_card_aica*, %struct.snd_card_aica** %6, align 8
  %33 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.aica_channel*, %struct.aica_channel** %5, align 8
  %36 = getelementptr inbounds %struct.aica_channel, %struct.aica_channel* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.aica_channel*, %struct.aica_channel** %5, align 8
  %38 = getelementptr inbounds %struct.aica_channel, %struct.aica_channel* %37, i32 0, i32 0
  store i32 128, i32* %38, align 8
  %39 = load %struct.aica_channel*, %struct.aica_channel** %5, align 8
  %40 = getelementptr inbounds %struct.aica_channel, %struct.aica_channel* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.aica_channel*, %struct.aica_channel** %5, align 8
  %42 = getelementptr inbounds %struct.aica_channel, %struct.aica_channel* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.aica_channel*, %struct.aica_channel** %5, align 8
  %44 = load %struct.snd_card_aica*, %struct.snd_card_aica** %6, align 8
  %45 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %44, i32 0, i32 3
  store %struct.aica_channel* %43, %struct.aica_channel** %45, align 8
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %46, i32 0, i32 0
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %47, align 8
  store %struct.snd_pcm_runtime* %48, %struct.snd_pcm_runtime** %4, align 8
  %49 = load i32, i32* @snd_pcm_aica_playback_hw, align 4
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = call i32 (...) @spu_enable()
  %53 = load %struct.snd_card_aica*, %struct.snd_card_aica** %6, align 8
  %54 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.snd_card_aica*, %struct.snd_card_aica** %6, align 8
  %56 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.snd_card_aica*, %struct.snd_card_aica** %6, align 8
  %58 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %25, %22, %9
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.aica_channel* @kmalloc(i32, i32) #1

declare dso_local i32 @spu_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
