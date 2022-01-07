; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_i915.c_snd_hdac_i915_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_i915.c_snd_hdac_i915_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, %struct.drm_audio_component* }
%struct.drm_audio_component = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@bind_complete = common dso_local global i32 0, align 4
@i915_init_ops = common dso_local global i32 0, align 4
@i915_component_master_match = common dso_local global i32 0, align 4
@CONFIG_MODULES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"i915\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"couldn't bind with audio component\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_i915_init(%struct.hdac_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdac_bus*, align 8
  %4 = alloca %struct.drm_audio_component*, align 8
  %5 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %3, align 8
  %6 = call i32 (...) @i915_gfx_present()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %60

11:                                               ; preds = %1
  %12 = call i32 @init_completion(i32* @bind_complete)
  %13 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %14 = load i32, i32* @i915_component_master_match, align 4
  %15 = call i32 @snd_hdac_acomp_init(%struct.hdac_bus* %13, i32* @i915_init_ops, i32 %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %60

20:                                               ; preds = %11
  %21 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %22 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %21, i32 0, i32 1
  %23 = load %struct.drm_audio_component*, %struct.drm_audio_component** %22, align 8
  store %struct.drm_audio_component* %23, %struct.drm_audio_component** %4, align 8
  %24 = load %struct.drm_audio_component*, %struct.drm_audio_component** %4, align 8
  %25 = icmp ne %struct.drm_audio_component* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %60

29:                                               ; preds = %20
  %30 = load %struct.drm_audio_component*, %struct.drm_audio_component** %4, align 8
  %31 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @CONFIG_MODULES, align 4
  %36 = call i32 @IS_ENABLED(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 @request_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38, %34
  %42 = call i32 @msecs_to_jiffies(i32 60000)
  %43 = call i32 @wait_for_completion_timeout(i32* @bind_complete, i32 %42)
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.drm_audio_component*, %struct.drm_audio_component** %4, align 8
  %47 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %52 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_info(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %56 = call i32 @snd_hdac_acomp_exit(%struct.hdac_bus* %55)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %50, %26, %18, %8
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @i915_gfx_present(...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @snd_hdac_acomp_init(%struct.hdac_bus*, i32*, i32, i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @request_module(i8*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @snd_hdac_acomp_exit(%struct.hdac_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
