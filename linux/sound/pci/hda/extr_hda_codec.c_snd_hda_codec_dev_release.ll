; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_dev_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_dev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hda_codec = type { %struct.TYPE_2__, %struct.hda_codec*, %struct.hda_codec* }
%struct.TYPE_2__ = type { i64 }

@HDA_DEV_LEGACY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @snd_hda_codec_dev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hda_codec_dev_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.hda_codec*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.hda_codec* @dev_to_hda_codec(%struct.device* %4)
  store %struct.hda_codec* %5, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @free_init_pincfgs(%struct.hda_codec* %6)
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = call i32 @snd_hdac_device_exit(%struct.TYPE_2__* %9)
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = call i32 @snd_hda_sysfs_clear(%struct.hda_codec* %11)
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 2
  %15 = load %struct.hda_codec*, %struct.hda_codec** %14, align 8
  %16 = call i32 @kfree(%struct.hda_codec* %15)
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 1
  %19 = load %struct.hda_codec*, %struct.hda_codec** %18, align 8
  %20 = call i32 @kfree(%struct.hda_codec* %19)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %22 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HDA_DEV_LEGACY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %29 = call i32 @kfree(%struct.hda_codec* %28)
  br label %30

30:                                               ; preds = %27, %1
  ret void
}

declare dso_local %struct.hda_codec* @dev_to_hda_codec(%struct.device*) #1

declare dso_local i32 @free_init_pincfgs(%struct.hda_codec*) #1

declare dso_local i32 @snd_hdac_device_exit(%struct.TYPE_2__*) #1

declare dso_local i32 @snd_hda_sysfs_clear(%struct.hda_codec*) #1

declare dso_local i32 @kfree(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
