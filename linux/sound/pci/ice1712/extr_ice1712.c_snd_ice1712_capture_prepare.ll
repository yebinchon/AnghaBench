; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }
%struct.snd_ice1712 = type { i32, i32, i32 }

@CONCAP_ADDR = common dso_local global i32 0, align 4
@CONCAP_COUNT = common dso_local global i32 0, align 4
@ICE1712_IREG_CAP_COUNT_HI = common dso_local global i32 0, align 4
@ICE1712_IREG_CAP_COUNT_LO = common dso_local global i32 0, align 4
@ICE1712_IREG_CAP_CTRL = common dso_local global i32 0, align 4
@AC97_PCM_LR_ADC_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ice1712_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_ice1712* %9, %struct.snd_ice1712** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %13)
  %15 = ashr i32 %14, 2
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %18 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  store i32 6, i32* %7, align 4
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snd_pcm_format_width(i32 %22)
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, -5
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, -3
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %38 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %37, i32 0, i32 1
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %44 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %46 = load i32, i32* @CONCAP_ADDR, align 4
  %47 = call i32 @ICEREG(%struct.snd_ice1712* %45, i32 %46)
  %48 = call i32 @outl(i32 %42, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %51 = load i32, i32* @CONCAP_COUNT, align 4
  %52 = call i32 @ICEREG(%struct.snd_ice1712* %50, i32 %51)
  %53 = call i32 @outw(i32 %49, i32 %52)
  %54 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %55 = load i32, i32* @ICE1712_IREG_CAP_COUNT_HI, align 4
  %56 = load i32, i32* %5, align 4
  %57 = ashr i32 %56, 8
  %58 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %54, i32 %55, i32 %57)
  %59 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %60 = load i32, i32* @ICE1712_IREG_CAP_COUNT_LO, align 4
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 255
  %63 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %59, i32 %60, i32 %62)
  %64 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %65 = load i32, i32* @ICE1712_IREG_CAP_CTRL, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %64, i32 %65, i32 %66)
  %68 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %69 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock_irq(i32* %69)
  %71 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %72 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AC97_PCM_LR_ADC_RATE, align 4
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @snd_ac97_set_rate(i32 %73, i32 %74, i32 %77)
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @ICEREG(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_ac97_set_rate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
