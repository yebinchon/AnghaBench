; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_component.c_snd_hdac_acomp_exit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_component.c_snd_hdac_acomp_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { %struct.drm_audio_component*, i64, i32, %struct.device* }
%struct.drm_audio_component = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.device = type { i32 }

@hdac_component_master_ops = common dso_local global i32 0, align 4
@hdac_acomp_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_acomp_exit(%struct.hdac_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdac_bus*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.drm_audio_component*, align 8
  store %struct.hdac_bus* %0, %struct.hdac_bus** %3, align 8
  %6 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %7 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %6, i32 0, i32 3
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %10 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %9, i32 0, i32 0
  %11 = load %struct.drm_audio_component*, %struct.drm_audio_component** %10, align 8
  store %struct.drm_audio_component* %11, %struct.drm_audio_component** %5, align 8
  %12 = load %struct.drm_audio_component*, %struct.drm_audio_component** %5, align 8
  %13 = icmp ne %struct.drm_audio_component* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %17 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.drm_audio_component*, %struct.drm_audio_component** %5, align 8
  %23 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.drm_audio_component*, %struct.drm_audio_component** %5, align 8
  %28 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = load %struct.drm_audio_component*, %struct.drm_audio_component** %5, align 8
  %33 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %36 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %31(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %26, %21, %15
  %40 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %41 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %43 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @component_master_del(%struct.device* %44, i32* @hdac_component_master_ops)
  %46 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %47 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %46, i32 0, i32 0
  store %struct.drm_audio_component* null, %struct.drm_audio_component** %47, align 8
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load i32, i32* @hdac_acomp_release, align 4
  %50 = call i32 @devres_destroy(%struct.device* %48, i32 %49, i32* null, i32* null)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %39, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @component_master_del(%struct.device*, i32*) #1

declare dso_local i32 @devres_destroy(%struct.device*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
