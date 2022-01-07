; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_cdev_caps.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_cdev_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_caps = type { i32*, i32, i32, i32, i32, i32 }

@NUM_CODEC = common dso_local global i32 0, align 4
@MIN_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@MAX_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@MIN_FRAGMENT = common dso_local global i32 0, align 4
@MAX_FRAGMENT = common dso_local global i32 0, align 4
@SND_AUDIOCODEC_MP3 = common dso_local global i32 0, align 4
@SND_AUDIOCODEC_AAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_caps*)* @sst_cdev_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_cdev_caps(%struct.snd_compr_caps* %0) #0 {
  %2 = alloca %struct.snd_compr_caps*, align 8
  store %struct.snd_compr_caps* %0, %struct.snd_compr_caps** %2, align 8
  %3 = load i32, i32* @NUM_CODEC, align 4
  %4 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %2, align 8
  %5 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %4, i32 0, i32 5
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @MIN_FRAGMENT_SIZE, align 4
  %7 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %2, align 8
  %8 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @MAX_FRAGMENT_SIZE, align 4
  %10 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %2, align 8
  %11 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @MIN_FRAGMENT, align 4
  %13 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %2, align 8
  %14 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @MAX_FRAGMENT, align 4
  %16 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %2, align 8
  %17 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @SND_AUDIOCODEC_MP3, align 4
  %19 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %2, align 8
  %20 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @SND_AUDIOCODEC_AAC, align 4
  %24 = load %struct.snd_compr_caps*, %struct.snd_compr_caps** %2, align 8
  %25 = getelementptr inbounds %struct.snd_compr_caps, %struct.snd_compr_caps* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %23, i32* %27, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
