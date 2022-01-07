; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_snd_via82xx_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_snd_via82xx_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.viadev* }
%struct.viadev = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.via82xx_modem = type { i32, i32 }

@AC97_LINE1_RATE = common dso_local global i32 0, align 4
@AC97_LINE1_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_via82xx_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via82xx_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.via82xx_modem*, align 8
  %7 = alloca %struct.viadev*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.via82xx_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.via82xx_modem* %10, %struct.via82xx_modem** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.viadev*, %struct.viadev** %14, align 8
  store %struct.viadev* %15, %struct.viadev** %7, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %18 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %17)
  %19 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %16, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.viadev*, %struct.viadev** %7, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %28 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %31 = call i32 @params_periods(%struct.snd_pcm_hw_params* %30)
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %33 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %32)
  %34 = call i32 @build_via_table(%struct.viadev* %25, %struct.snd_pcm_substream* %26, i32 %29, i32 %31, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %52

39:                                               ; preds = %24
  %40 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %41 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AC97_LINE1_RATE, align 4
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %45 = call i32 @params_rate(%struct.snd_pcm_hw_params* %44)
  %46 = call i32 @snd_ac97_write(i32 %42, i32 %43, i32 %45)
  %47 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %48 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %51 = call i32 @snd_ac97_write(i32 %49, i32 %50, i32 0)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %39, %37, %22
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.via82xx_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @build_via_table(%struct.viadev*, %struct.snd_pcm_substream*, i32, i32, i32) #1

declare dso_local i32 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_ac97_write(i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
