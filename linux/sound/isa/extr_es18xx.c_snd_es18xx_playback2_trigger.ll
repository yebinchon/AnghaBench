; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_playback2_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_playback2_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es18xx = type { i32 }
%struct.snd_pcm_substream = type { i32 }

@DAC1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_es18xx*, %struct.snd_pcm_substream*, i32)* @snd_es18xx_playback2_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_playback2_trigger(%struct.snd_es18xx* %0, %struct.snd_pcm_substream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_es18xx*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_es18xx* %0, %struct.snd_es18xx** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %42 [
    i32 130, label %9
    i32 131, label %9
    i32 129, label %25
    i32 128, label %25
  ]

9:                                                ; preds = %3, %3
  %10 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %11 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DAC1, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %46

17:                                               ; preds = %9
  %18 = load i32, i32* @DAC1, align 4
  %19 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %20 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %24 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %23, i32 184, i32 5)
  br label %45

25:                                               ; preds = %3, %3
  %26 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %27 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DAC1, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %46

33:                                               ; preds = %25
  %34 = load i32, i32* @DAC1, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %37 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %41 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %40, i32 184, i32 0)
  br label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %33, %17
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %42, %32, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @snd_es18xx_write(%struct.snd_es18xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
