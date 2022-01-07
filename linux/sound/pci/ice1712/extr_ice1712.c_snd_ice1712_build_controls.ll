; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_build_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i64 }
%struct.snd_ice1712 = type { i64, i32 }

@snd_ice1712_eeprom = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@snd_ice1712_pro_internal_clock = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@snd_ice1712_pro_internal_clock_default = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@snd_ice1712_pro_rate_locking = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@snd_ice1712_pro_rate_reset = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@snd_ice1712_mixer_pro_analog_route = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@snd_ice1712_mixer_pro_spdif_route = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@snd_ice1712_mixer_pro_volume_rate = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@snd_ice1712_mixer_pro_peak = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @snd_ice1712_build_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_build_controls(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_kcontrol_new, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %10 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_ice1712_eeprom, %struct.snd_ice1712* %9)
  %11 = call i32 @snd_ctl_add(i32 %8, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %111

16:                                               ; preds = %1
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %18 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %21 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_ice1712_pro_internal_clock, %struct.snd_ice1712* %20)
  %22 = call i32 @snd_ctl_add(i32 %19, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %111

27:                                               ; preds = %16
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %29 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %32 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_ice1712_pro_internal_clock_default, %struct.snd_ice1712* %31)
  %33 = call i32 @snd_ctl_add(i32 %30, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %111

38:                                               ; preds = %27
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %40 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %43 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_ice1712_pro_rate_locking, %struct.snd_ice1712* %42)
  %44 = call i32 @snd_ctl_add(i32 %41, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %111

49:                                               ; preds = %38
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %51 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %54 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_ice1712_pro_rate_reset, %struct.snd_ice1712* %53)
  %55 = call i32 @snd_ctl_add(i32 %52, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %111

60:                                               ; preds = %49
  %61 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %62 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = bitcast %struct.snd_kcontrol_new* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 bitcast (%struct.snd_kcontrol_new* @snd_ice1712_mixer_pro_analog_route to i8*), i64 8, i1 false)
  %67 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %68 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  %71 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %72 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %75 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %5, %struct.snd_ice1712* %74)
  %76 = call i32 @snd_ctl_add(i32 %73, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %111

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %60
  %83 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %84 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %87 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_ice1712_mixer_pro_spdif_route, %struct.snd_ice1712* %86)
  %88 = call i32 @snd_ctl_add(i32 %85, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %111

93:                                               ; preds = %82
  %94 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %95 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %98 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_ice1712_mixer_pro_volume_rate, %struct.snd_ice1712* %97)
  %99 = call i32 @snd_ctl_add(i32 %96, i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %111

104:                                              ; preds = %93
  %105 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %106 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %109 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_ice1712_mixer_pro_peak, %struct.snd_ice1712* %108)
  %110 = call i32 @snd_ctl_add(i32 %107, i32 %109)
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %104, %102, %91, %79, %58, %47, %36, %25, %14
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_ice1712*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
