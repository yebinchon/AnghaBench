; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_component.c_hdac_component_master_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_component.c_hdac_component_master_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_audio_component = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.device*, %struct.drm_audio_component*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @hdac_component_master_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_component_master_unbind(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.drm_audio_component*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.drm_audio_component* @hdac_get_acomp(%struct.device* %4)
  store %struct.drm_audio_component* %5, %struct.drm_audio_component** %3, align 8
  %6 = load %struct.drm_audio_component*, %struct.drm_audio_component** %3, align 8
  %7 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.drm_audio_component*, %struct.drm_audio_component** %3, align 8
  %12 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.device*, %struct.drm_audio_component*)*, i32 (%struct.device*, %struct.drm_audio_component*)** %14, align 8
  %16 = icmp ne i32 (%struct.device*, %struct.drm_audio_component*)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load %struct.drm_audio_component*, %struct.drm_audio_component** %3, align 8
  %19 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.device*, %struct.drm_audio_component*)*, i32 (%struct.device*, %struct.drm_audio_component*)** %21, align 8
  %23 = load %struct.device*, %struct.device** %2, align 8
  %24 = load %struct.drm_audio_component*, %struct.drm_audio_component** %3, align 8
  %25 = call i32 %22(%struct.device* %23, %struct.drm_audio_component* %24)
  br label %26

26:                                               ; preds = %17, %10, %1
  %27 = load %struct.drm_audio_component*, %struct.drm_audio_component** %3, align 8
  %28 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @module_put(i32 %31)
  %33 = load %struct.device*, %struct.device** %2, align 8
  %34 = load %struct.drm_audio_component*, %struct.drm_audio_component** %3, align 8
  %35 = call i32 @component_unbind_all(%struct.device* %33, %struct.drm_audio_component* %34)
  %36 = load %struct.drm_audio_component*, %struct.drm_audio_component** %3, align 8
  %37 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %26
  %41 = load %struct.drm_audio_component*, %struct.drm_audio_component** %3, align 8
  %42 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %26
  %46 = phi i1 [ true, %26 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  ret void
}

declare dso_local %struct.drm_audio_component* @hdac_get_acomp(%struct.device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @component_unbind_all(%struct.device*, %struct.drm_audio_component*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
