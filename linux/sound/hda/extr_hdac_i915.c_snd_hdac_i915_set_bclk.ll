; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_i915.c_snd_hdac_i915_set_bclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_i915.c_snd_hdac_i915_set_bclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, %struct.drm_audio_component* }
%struct.drm_audio_component = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.pci_dev = type { i32 }

@HSW_EM4 = common dso_local global i32 0, align 4
@HSW_EM5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_i915_set_bclk(%struct.hdac_bus* %0) #0 {
  %2 = alloca %struct.hdac_bus*, align 8
  %3 = alloca %struct.drm_audio_component*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %2, align 8
  %8 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %9 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %8, i32 0, i32 1
  %10 = load %struct.drm_audio_component*, %struct.drm_audio_component** %9, align 8
  store %struct.drm_audio_component* %10, %struct.drm_audio_component** %3, align 8
  %11 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %12 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.pci_dev* @to_pci_dev(i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %4, align 8
  %15 = load %struct.drm_audio_component*, %struct.drm_audio_component** %3, align 8
  %16 = icmp ne %struct.drm_audio_component* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.drm_audio_component*, %struct.drm_audio_component** %3, align 8
  %19 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.drm_audio_component*, %struct.drm_audio_component** %3, align 8
  %24 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = icmp ne i32 (i32)* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22, %17, %1
  br label %60

30:                                               ; preds = %22
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @CONTROLLER_IN_GPU(%struct.pci_dev* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %60

35:                                               ; preds = %30
  %36 = load %struct.drm_audio_component*, %struct.drm_audio_component** %3, align 8
  %37 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load %struct.drm_audio_component*, %struct.drm_audio_component** %3, align 8
  %42 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %40(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  switch i32 %45, label %48 [
    i32 337500, label %46
    i32 450000, label %47
    i32 540000, label %49
    i32 675000, label %50
  ]

46:                                               ; preds = %35
  store i32 16, i32* %6, align 4
  store i32 225, i32* %7, align 4
  br label %51

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %35, %47
  store i32 4, i32* %6, align 4
  store i32 75, i32* %7, align 4
  br label %51

49:                                               ; preds = %35
  store i32 4, i32* %6, align 4
  store i32 90, i32* %7, align 4
  br label %51

50:                                               ; preds = %35
  store i32 8, i32* %6, align 4
  store i32 225, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %49, %48, %46
  %52 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %53 = load i32, i32* @HSW_EM4, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @snd_hdac_chip_writew(%struct.hdac_bus* %52, i32 %53, i32 %54)
  %56 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %57 = load i32, i32* @HSW_EM5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @snd_hdac_chip_writew(%struct.hdac_bus* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %51, %34, %29
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @CONTROLLER_IN_GPU(%struct.pci_dev*) #1

declare dso_local i32 @snd_hdac_chip_writew(%struct.hdac_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
