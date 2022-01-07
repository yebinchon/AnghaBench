; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_snd_soc_dapm_put_volsw_aic3x.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_snd_soc_dapm_put_volsw_aic3x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32 }
%struct.snd_soc_dapm_update = type { i32, i32, i16, %struct.snd_kcontrol* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_soc_dapm_put_volsw_aic3x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_soc_dapm_put_volsw_aic3x(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.soc_mixer_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca %struct.snd_soc_dapm_update, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = call %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol* %17)
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %5, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %20 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %19)
  store %struct.snd_soc_dapm_context* %20, %struct.snd_soc_dapm_context** %6, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %24, %struct.soc_mixer_control** %7, align 8
  %25 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %26 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %29 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %32 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @fls(i32 %34)
  %36 = shl i32 1, %35
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %39 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = bitcast %struct.snd_soc_dapm_update* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %41, i8 0, i64 24, i1 false)
  %42 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %48, %49
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %13, align 2
  store i32 15, i32* %11, align 4
  %52 = load i16, i16* %13, align 2
  %53 = icmp ne i16 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %2
  %55 = load i32, i32* %11, align 4
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %13, align 2
  br label %57

57:                                               ; preds = %54, %2
  %58 = load i16, i16* %13, align 2
  %59 = icmp ne i16 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load i32, i32* %11, align 4
  %67 = load i16, i16* %13, align 2
  %68 = zext i16 %67 to i32
  %69 = sub i32 %66, %68
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %13, align 2
  br label %71

71:                                               ; preds = %65, %57
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = shl i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i16, i16* %13, align 2
  %77 = zext i16 %76 to i32
  %78 = shl i32 %77, %75
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %13, align 2
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i16, i16* %13, align 2
  %84 = call i32 @snd_soc_component_test_bits(%struct.snd_soc_component* %80, i32 %81, i32 %82, i16 zeroext %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %71
  %88 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %89 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %14, i32 0, i32 3
  store %struct.snd_kcontrol* %88, %struct.snd_kcontrol** %89, align 8
  %90 = load i32, i32* %8, align 4
  %91 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %14, i32 0, i32 0
  store i32 %90, i32* %91, align 8
  %92 = load i32, i32* %11, align 4
  %93 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %14, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load i16, i16* %13, align 2
  %95 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %14, i32 0, i32 2
  store i16 %94, i16* %95, align 8
  %96 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %97 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @snd_soc_dapm_mixer_update_power(%struct.snd_soc_dapm_context* %96, %struct.snd_kcontrol* %97, i32 %98, %struct.snd_soc_dapm_update* %14)
  br label %100

100:                                              ; preds = %87, %71
  %101 = load i32, i32* %16, align 4
  ret i32 %101
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @fls(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snd_soc_component_test_bits(%struct.snd_soc_component*, i32, i32, i16 zeroext) #1

declare dso_local i32 @snd_soc_dapm_mixer_update_power(%struct.snd_soc_dapm_context*, %struct.snd_kcontrol*, i32, %struct.snd_soc_dapm_update*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
