; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_playback2_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_playback2_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.es1938 = type { i32 }

@DAC1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ESS_CMD_DMACONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_es1938_playback2_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1938_playback2_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.es1938*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.es1938* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.es1938* %9, %struct.es1938** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %24 [
    i32 130, label %11
    i32 131, label %11
    i32 129, label %17
    i32 128, label %17
  ]

11:                                               ; preds = %2, %2
  store i32 5, i32* %7, align 4
  %12 = load i32, i32* @DAC1, align 4
  %13 = load %struct.es1938*, %struct.es1938** %6, align 8
  %14 = getelementptr inbounds %struct.es1938, %struct.es1938* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %27

17:                                               ; preds = %2, %2
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* @DAC1, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.es1938*, %struct.es1938** %6, align 8
  %21 = getelementptr inbounds %struct.es1938, %struct.es1938* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %32

27:                                               ; preds = %17, %11
  %28 = load %struct.es1938*, %struct.es1938** %6, align 8
  %29 = load i32, i32* @ESS_CMD_DMACONTROL, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @snd_es1938_write(%struct.es1938* %28, i32 %29, i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.es1938* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_es1938_write(%struct.es1938*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
