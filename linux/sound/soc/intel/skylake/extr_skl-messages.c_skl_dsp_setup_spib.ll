; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_dsp_setup_spib.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_dsp_setup_spib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdac_bus = type { i32 }
%struct.hdac_stream = type { i32 }
%struct.hdac_ext_stream = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32)* @skl_dsp_setup_spib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_dsp_setup_spib(%struct.device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hdac_bus*, align 8
  %11 = alloca %struct.hdac_stream*, align 8
  %12 = alloca %struct.hdac_ext_stream*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.hdac_bus* @dev_get_drvdata(%struct.device* %13)
  store %struct.hdac_bus* %14, %struct.hdac_bus** %10, align 8
  %15 = load %struct.hdac_bus*, %struct.hdac_bus** %10, align 8
  %16 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.hdac_stream* @snd_hdac_get_stream(%struct.hdac_bus* %15, i32 %16, i32 %17)
  store %struct.hdac_stream* %18, %struct.hdac_stream** %11, align 8
  %19 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %20 = icmp ne %struct.hdac_stream* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %37

24:                                               ; preds = %4
  %25 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %26 = call %struct.hdac_ext_stream* @stream_to_hdac_ext_stream(%struct.hdac_stream* %25)
  store %struct.hdac_ext_stream* %26, %struct.hdac_ext_stream** %12, align 8
  %27 = load %struct.hdac_bus*, %struct.hdac_bus** %10, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.hdac_stream*, %struct.hdac_stream** %11, align 8
  %30 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_hdac_ext_stream_spbcap_enable(%struct.hdac_bus* %27, i32 %28, i32 %31)
  %33 = load %struct.hdac_bus*, %struct.hdac_bus** %10, align 8
  %34 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %12, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @snd_hdac_ext_stream_set_spib(%struct.hdac_bus* %33, %struct.hdac_ext_stream* %34, i32 %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %24, %21
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.hdac_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.hdac_stream* @snd_hdac_get_stream(%struct.hdac_bus*, i32, i32) #1

declare dso_local %struct.hdac_ext_stream* @stream_to_hdac_ext_stream(%struct.hdac_stream*) #1

declare dso_local i32 @snd_hdac_ext_stream_spbcap_enable(%struct.hdac_bus*, i32, i32) #1

declare dso_local i32 @snd_hdac_ext_stream_set_spib(%struct.hdac_bus*, %struct.hdac_ext_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
