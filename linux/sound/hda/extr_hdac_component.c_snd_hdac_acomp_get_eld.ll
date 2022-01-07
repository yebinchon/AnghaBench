; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_component.c_snd_hdac_acomp_get_eld.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_component.c_snd_hdac_acomp_get_eld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { %struct.hdac_bus* }
%struct.hdac_bus = type { %struct.drm_audio_component* }
%struct.drm_audio_component = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32*, i8*, i32)* }
%struct.TYPE_3__ = type { i32 (%struct.hdac_device*, i32)* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_acomp_get_eld(%struct.hdac_device* %0, i32 %1, i32 %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdac_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hdac_bus*, align 8
  %15 = alloca %struct.drm_audio_component*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %19 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %18, i32 0, i32 0
  %20 = load %struct.hdac_bus*, %struct.hdac_bus** %19, align 8
  store %struct.hdac_bus* %20, %struct.hdac_bus** %14, align 8
  %21 = load %struct.hdac_bus*, %struct.hdac_bus** %14, align 8
  %22 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %21, i32 0, i32 0
  %23 = load %struct.drm_audio_component*, %struct.drm_audio_component** %22, align 8
  store %struct.drm_audio_component* %23, %struct.drm_audio_component** %15, align 8
  %24 = load %struct.drm_audio_component*, %struct.drm_audio_component** %15, align 8
  %25 = icmp ne %struct.drm_audio_component* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %6
  %27 = load %struct.drm_audio_component*, %struct.drm_audio_component** %15, align 8
  %28 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.drm_audio_component*, %struct.drm_audio_component** %15, align 8
  %33 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (i32, i32, i32, i32*, i8*, i32)*, i32 (i32, i32, i32, i32*, i8*, i32)** %35, align 8
  %37 = icmp ne i32 (i32, i32, i32, i32*, i8*, i32)* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31, %26, %6
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %85

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %16, align 4
  %43 = load %struct.drm_audio_component*, %struct.drm_audio_component** %15, align 8
  %44 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = icmp ne %struct.TYPE_3__* %45, null
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = load %struct.drm_audio_component*, %struct.drm_audio_component** %15, align 8
  %49 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (%struct.hdac_device*, i32)*, i32 (%struct.hdac_device*, i32)** %51, align 8
  %53 = icmp ne i32 (%struct.hdac_device*, i32)* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load %struct.drm_audio_component*, %struct.drm_audio_component** %15, align 8
  %56 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (%struct.hdac_device*, i32)*, i32 (%struct.hdac_device*, i32)** %58, align 8
  %60 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 %59(%struct.hdac_device* %60, i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %85

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %47, %41
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %17, align 4
  %71 = load %struct.drm_audio_component*, %struct.drm_audio_component** %15, align 8
  %72 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32 (i32, i32, i32, i32*, i8*, i32)*, i32 (i32, i32, i32, i32*, i8*, i32)** %74, align 8
  %76 = load %struct.drm_audio_component*, %struct.drm_audio_component** %15, align 8
  %77 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 %75(i32 %78, i32 %79, i32 %80, i32* %81, i8* %82, i32 %83)
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %69, %65, %38
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
