; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_dev_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_dev_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device = type { %struct.hda_codec* }
%struct.hda_codec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HDA_DEV_LEGACY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_device*)* @snd_hda_codec_dev_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hda_codec_dev_free(%struct.snd_device* %0) #0 {
  %2 = alloca %struct.snd_device*, align 8
  %3 = alloca %struct.hda_codec*, align 8
  store %struct.snd_device* %0, %struct.snd_device** %2, align 8
  %4 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %5 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %4, i32 0, i32 0
  %6 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  store %struct.hda_codec* %6, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HDA_DEV_LEGACY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 1
  %18 = call i32 @snd_hdac_device_unregister(%struct.TYPE_2__* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = call i32 @codec_display_power(%struct.hda_codec* %20, i32 0)
  %22 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %23 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HDA_DEV_LEGACY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = call i32 @hda_codec_dev(%struct.hda_codec* %29)
  %31 = call i32 @put_device(i32 %30)
  br label %32

32:                                               ; preds = %28, %19
  ret i32 0
}

declare dso_local i32 @snd_hdac_device_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @codec_display_power(%struct.hda_codec*, i32) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @hda_codec_dev(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
