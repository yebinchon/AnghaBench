; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_bind.c_hda_codec_driver_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_bind.c_hda_codec_driver_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.hda_codec.0*)* }
%struct.hda_codec.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @hda_codec_driver_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_codec_driver_shutdown(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.hda_codec*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.hda_codec* @dev_to_hda_codec(%struct.device* %4)
  store %struct.hda_codec* %5, %struct.hda_codec** %3, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call i32 @pm_runtime_suspended(%struct.device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %12, align 8
  %14 = icmp ne i32 (%struct.hda_codec.0*)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %18, align 8
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = bitcast %struct.hda_codec* %20 to %struct.hda_codec.0*
  %22 = call i32 %19(%struct.hda_codec.0* %21)
  br label %23

23:                                               ; preds = %15, %9, %1
  ret void
}

declare dso_local %struct.hda_codec* @dev_to_hda_codec(%struct.device*) #1

declare dso_local i32 @pm_runtime_suspended(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
