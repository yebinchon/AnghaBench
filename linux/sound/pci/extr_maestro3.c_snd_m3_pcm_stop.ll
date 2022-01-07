; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_pcm_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_pcm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32 }
%struct.m3_dma = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm_substream = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MEMTYPE_INTERNAL_DATA = common dso_local global i32 0, align 4
@CDATA_INSTANCE_READY = common dso_local global i64 0, align 8
@KDATA_MIXER_TASK_NUMBER = common dso_local global i64 0, align 8
@KDATA_ADC1_REQUEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_m3*, %struct.m3_dma*, %struct.snd_pcm_substream*)* @snd_m3_pcm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_m3_pcm_stop(%struct.snd_m3* %0, %struct.m3_dma* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_m3*, align 8
  %6 = alloca %struct.m3_dma*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_m3* %0, %struct.snd_m3** %5, align 8
  store %struct.m3_dma* %1, %struct.m3_dma** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %8 = load %struct.m3_dma*, %struct.m3_dma** %6, align 8
  %9 = icmp ne %struct.m3_dma* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %12 = icmp ne %struct.snd_pcm_substream* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %49

16:                                               ; preds = %10
  %17 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %18 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %19 = load %struct.m3_dma*, %struct.m3_dma** %6, align 8
  %20 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CDATA_INSTANCE_READY, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @snd_m3_assp_write(%struct.snd_m3* %17, i32 %18, i64 %24, i32 0)
  %26 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %27 = call i32 @snd_m3_dec_timer_users(%struct.snd_m3* %26)
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %48 [
    i32 128, label %31
    i32 129, label %43
  ]

31:                                               ; preds = %16
  %32 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %33 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %37 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %38 = load i64, i64* @KDATA_MIXER_TASK_NUMBER, align 8
  %39 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %40 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snd_m3_assp_write(%struct.snd_m3* %36, i32 %37, i64 %38, i32 %41)
  br label %48

43:                                               ; preds = %16
  %44 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %45 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %46 = load i64, i64* @KDATA_ADC1_REQUEST, align 8
  %47 = call i32 @snd_m3_assp_write(%struct.snd_m3* %44, i32 %45, i64 %46, i32 0)
  br label %48

48:                                               ; preds = %16, %43, %31
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %13
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @snd_m3_assp_write(%struct.snd_m3*, i32, i64, i32) #1

declare dso_local i32 @snd_m3_dec_timer_users(%struct.snd_m3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
