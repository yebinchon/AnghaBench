; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_codec_register(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %3 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %4 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = call i32 @hda_codec_dev(%struct.hda_codec* %9)
  %11 = call i64 @device_is_registered(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = call i32 @codec_display_power(%struct.hda_codec* %14, i32 1)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = call i32 @hda_codec_dev(%struct.hda_codec* %16)
  %18 = call i32 @pm_runtime_enable(i32 %17)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = call i32 @snd_hda_power_down(%struct.hda_codec* %19)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %7, %13, %8
  ret void
}

declare dso_local i64 @device_is_registered(i32) #1

declare dso_local i32 @hda_codec_dev(%struct.hda_codec*) #1

declare dso_local i32 @codec_display_power(%struct.hda_codec*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @snd_hda_power_down(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
