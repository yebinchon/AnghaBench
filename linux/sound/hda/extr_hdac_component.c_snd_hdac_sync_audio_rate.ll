; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_component.c_snd_hdac_sync_audio_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_component.c_snd_hdac_sync_audio_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { %struct.hdac_bus* }
%struct.hdac_bus = type { %struct.drm_audio_component* }
%struct.drm_audio_component = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32)* }
%struct.TYPE_3__ = type { i32 (%struct.hdac_device*, i32)* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_sync_audio_rate(%struct.hdac_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hdac_bus*, align 8
  %11 = alloca %struct.drm_audio_component*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %15 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %14, i32 0, i32 0
  %16 = load %struct.hdac_bus*, %struct.hdac_bus** %15, align 8
  store %struct.hdac_bus* %16, %struct.hdac_bus** %10, align 8
  %17 = load %struct.hdac_bus*, %struct.hdac_bus** %10, align 8
  %18 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %17, i32 0, i32 0
  %19 = load %struct.drm_audio_component*, %struct.drm_audio_component** %18, align 8
  store %struct.drm_audio_component* %19, %struct.drm_audio_component** %11, align 8
  %20 = load %struct.drm_audio_component*, %struct.drm_audio_component** %11, align 8
  %21 = icmp ne %struct.drm_audio_component* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %4
  %23 = load %struct.drm_audio_component*, %struct.drm_audio_component** %11, align 8
  %24 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.drm_audio_component*, %struct.drm_audio_component** %11, align 8
  %29 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %31, align 8
  %33 = icmp ne i32 (i32, i32, i32, i32)* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27, %22, %4
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %79

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.drm_audio_component*, %struct.drm_audio_component** %11, align 8
  %40 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = icmp ne %struct.TYPE_3__* %41, null
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load %struct.drm_audio_component*, %struct.drm_audio_component** %11, align 8
  %45 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.hdac_device*, i32)*, i32 (%struct.hdac_device*, i32)** %47, align 8
  %49 = icmp ne i32 (%struct.hdac_device*, i32)* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.drm_audio_component*, %struct.drm_audio_component** %11, align 8
  %52 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (%struct.hdac_device*, i32)*, i32 (%struct.hdac_device*, i32)** %54, align 8
  %56 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 %55(%struct.hdac_device* %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %79

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %43, %37
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %13, align 4
  %67 = load %struct.drm_audio_component*, %struct.drm_audio_component** %11, align 8
  %68 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %70, align 8
  %72 = load %struct.drm_audio_component*, %struct.drm_audio_component** %11, align 8
  %73 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 %71(i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %65, %61, %34
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
