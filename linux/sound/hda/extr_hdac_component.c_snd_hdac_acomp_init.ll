; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_component.c_snd_hdac_acomp_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_component.c_snd_hdac_acomp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { %struct.drm_audio_component*, %struct.device* }
%struct.drm_audio_component = type { %struct.drm_audio_component_audio_ops* }
%struct.device = type { i32 }
%struct.drm_audio_component_audio_ops = type { i32 }
%struct.component_match = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@hdac_acomp_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hdac_component_master_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to add audio component master (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_acomp_init(%struct.hdac_bus* %0, %struct.drm_audio_component_audio_ops* %1, i32 (%struct.device*, i32, i8*)* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_bus*, align 8
  %7 = alloca %struct.drm_audio_component_audio_ops*, align 8
  %8 = alloca i32 (%struct.device*, i32, i8*)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.component_match*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.drm_audio_component*, align 8
  %13 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %6, align 8
  store %struct.drm_audio_component_audio_ops* %1, %struct.drm_audio_component_audio_ops** %7, align 8
  store i32 (%struct.device*, i32, i8*)* %2, i32 (%struct.device*, i32, i8*)** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.component_match* null, %struct.component_match** %10, align 8
  %14 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %15 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %11, align 8
  %17 = load %struct.device*, %struct.device** %11, align 8
  %18 = call i32 @hdac_get_acomp(%struct.device* %17)
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %67

24:                                               ; preds = %4
  %25 = load i32, i32* @hdac_acomp_release, align 4
  %26 = load i64, i64* %9, align 8
  %27 = add i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.drm_audio_component* @devres_alloc(i32 %25, i32 %28, i32 %29)
  store %struct.drm_audio_component* %30, %struct.drm_audio_component** %12, align 8
  %31 = load %struct.drm_audio_component*, %struct.drm_audio_component** %12, align 8
  %32 = icmp ne %struct.drm_audio_component* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %67

36:                                               ; preds = %24
  %37 = load %struct.drm_audio_component_audio_ops*, %struct.drm_audio_component_audio_ops** %7, align 8
  %38 = load %struct.drm_audio_component*, %struct.drm_audio_component** %12, align 8
  %39 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %38, i32 0, i32 0
  store %struct.drm_audio_component_audio_ops* %37, %struct.drm_audio_component_audio_ops** %39, align 8
  %40 = load %struct.drm_audio_component*, %struct.drm_audio_component** %12, align 8
  %41 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %42 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %41, i32 0, i32 0
  store %struct.drm_audio_component* %40, %struct.drm_audio_component** %42, align 8
  %43 = load %struct.device*, %struct.device** %11, align 8
  %44 = load %struct.drm_audio_component*, %struct.drm_audio_component** %12, align 8
  %45 = call i32 @devres_add(%struct.device* %43, %struct.drm_audio_component* %44)
  %46 = load %struct.device*, %struct.device** %11, align 8
  %47 = load i32 (%struct.device*, i32, i8*)*, i32 (%struct.device*, i32, i8*)** %8, align 8
  %48 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %49 = call i32 @component_match_add_typed(%struct.device* %46, %struct.component_match** %10, i32 (%struct.device*, i32, i8*)* %47, %struct.hdac_bus* %48)
  %50 = load %struct.device*, %struct.device** %11, align 8
  %51 = load %struct.component_match*, %struct.component_match** %10, align 8
  %52 = call i32 @component_master_add_with_match(%struct.device* %50, i32* @hdac_component_master_ops, %struct.component_match* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %36
  br label %57

56:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %67

57:                                               ; preds = %55
  %58 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %59 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %58, i32 0, i32 0
  store %struct.drm_audio_component* null, %struct.drm_audio_component** %59, align 8
  %60 = load %struct.device*, %struct.device** %11, align 8
  %61 = load i32, i32* @hdac_acomp_release, align 4
  %62 = call i32 @devres_destroy(%struct.device* %60, i32 %61, i32* null, i32* null)
  %63 = load %struct.device*, %struct.device** %11, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @dev_info(%struct.device* %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %57, %56, %33, %21
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @hdac_get_acomp(%struct.device*) #1

declare dso_local %struct.drm_audio_component* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.drm_audio_component*) #1

declare dso_local i32 @component_match_add_typed(%struct.device*, %struct.component_match**, i32 (%struct.device*, i32, i8*)*, %struct.hdac_bus*) #1

declare dso_local i32 @component_master_add_with_match(%struct.device*, i32*, %struct.component_match*) #1

declare dso_local i32 @devres_destroy(%struct.device*, i32, i32*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
