; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_component.c_hdac_component_master_bind.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_component.c_hdac_component_master_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_audio_component = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.device*, %struct.drm_audio_component*)* }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @hdac_component_master_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_component_master_bind(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.drm_audio_component*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.drm_audio_component* @hdac_get_acomp(%struct.device* %6)
  store %struct.drm_audio_component* %7, %struct.drm_audio_component** %4, align 8
  %8 = load %struct.drm_audio_component*, %struct.drm_audio_component** %4, align 8
  %9 = icmp ne %struct.drm_audio_component* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %93

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.drm_audio_component*, %struct.drm_audio_component** %4, align 8
  %20 = call i32 @component_bind_all(%struct.device* %18, %struct.drm_audio_component* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %93

25:                                               ; preds = %17
  %26 = load %struct.drm_audio_component*, %struct.drm_audio_component** %4, align 8
  %27 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.drm_audio_component*, %struct.drm_audio_component** %4, align 8
  %32 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %88

44:                                               ; preds = %35
  %45 = load %struct.drm_audio_component*, %struct.drm_audio_component** %4, align 8
  %46 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @try_module_get(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %88

55:                                               ; preds = %44
  %56 = load %struct.drm_audio_component*, %struct.drm_audio_component** %4, align 8
  %57 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = icmp ne %struct.TYPE_3__* %58, null
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  %61 = load %struct.drm_audio_component*, %struct.drm_audio_component** %4, align 8
  %62 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (%struct.device*, %struct.drm_audio_component*)*, i32 (%struct.device*, %struct.drm_audio_component*)** %64, align 8
  %66 = icmp ne i32 (%struct.device*, %struct.drm_audio_component*)* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %60
  %68 = load %struct.drm_audio_component*, %struct.drm_audio_component** %4, align 8
  %69 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32 (%struct.device*, %struct.drm_audio_component*)*, i32 (%struct.device*, %struct.drm_audio_component*)** %71, align 8
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = load %struct.drm_audio_component*, %struct.drm_audio_component** %4, align 8
  %75 = call i32 %72(%struct.device* %73, %struct.drm_audio_component* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %81

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79, %60, %55
  store i32 0, i32* %2, align 4
  br label %93

81:                                               ; preds = %78
  %82 = load %struct.drm_audio_component*, %struct.drm_audio_component** %4, align 8
  %83 = getelementptr inbounds %struct.drm_audio_component, %struct.drm_audio_component* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @module_put(i32 %86)
  br label %88

88:                                               ; preds = %81, %52, %41
  %89 = load %struct.device*, %struct.device** %3, align 8
  %90 = load %struct.drm_audio_component*, %struct.drm_audio_component** %4, align 8
  %91 = call i32 @component_unbind_all(%struct.device* %89, %struct.drm_audio_component* %90)
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %88, %80, %23, %14
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.drm_audio_component* @hdac_get_acomp(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @component_bind_all(%struct.device*, %struct.drm_audio_component*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @component_unbind_all(%struct.device*, %struct.drm_audio_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
