; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_dsp_mux_enum_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_dsp_mux_enum_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.adau = type { i32*, i32* }
%struct.soc_enum = type { i32, i64 }
%struct.snd_soc_dapm_update = type { i32, i32, i32, %struct.snd_kcontrol* }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_INPUT_ROUTE = common dso_local global i32 0, align 4
@ADAU17X1_SERIAL_OUTPUT_ROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @adau17x1_dsp_mux_enum_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau17x1_dsp_mux_enum_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.snd_soc_dapm_context*, align 8
  %8 = alloca %struct.adau*, align 8
  %9 = alloca %struct.soc_enum*, align 8
  %10 = alloca %struct.snd_soc_dapm_update, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = call %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol* %15)
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %6, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %18 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %17)
  store %struct.snd_soc_dapm_context* %18, %struct.snd_soc_dapm_context** %7, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = call %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.adau* %20, %struct.adau** %8, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.soc_enum*
  store %struct.soc_enum* %24, %struct.soc_enum** %9, align 8
  %25 = bitcast %struct.snd_soc_dapm_update* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 24, i1 false)
  %26 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %27 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %37 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %110

43:                                               ; preds = %2
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  switch i64 %50, label %58 [
    i64 0, label %51
  ]

51:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  %52 = load %struct.adau*, %struct.adau** %8, align 8
  %53 = getelementptr inbounds %struct.adau, %struct.adau* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 0, i32* %57, align 4
  br label %74

58:                                               ; preds = %43
  %59 = load %struct.adau*, %struct.adau** %8, align 8
  %60 = getelementptr inbounds %struct.adau, %struct.adau* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, 2
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  %68 = load %struct.adau*, %struct.adau** %8, align 8
  %69 = getelementptr inbounds %struct.adau, %struct.adau* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %58, %51
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @ADAU17X1_SERIAL_INPUT_ROUTE, align 4
  store i32 %79, i32* %14, align 4
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @ADAU17X1_SERIAL_OUTPUT_ROUTE, align 4
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @snd_soc_component_test_bits(%struct.snd_soc_component* %83, i32 %84, i32 255, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %82
  %90 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %91 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %10, i32 0, i32 3
  store %struct.snd_kcontrol* %90, %struct.snd_kcontrol** %91, align 8
  %92 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %10, i32 0, i32 0
  store i32 255, i32* %92, align 8
  %93 = load i32, i32* %14, align 4
  %94 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %10, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %12, align 4
  %96 = getelementptr inbounds %struct.snd_soc_dapm_update, %struct.snd_soc_dapm_update* %10, i32 0, i32 2
  store i32 %95, i32* %96, align 8
  %97 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %98 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %99 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %100 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %107 = call i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context* %97, %struct.snd_kcontrol* %98, i64 %105, %struct.soc_enum* %106, %struct.snd_soc_dapm_update* %10)
  br label %108

108:                                              ; preds = %89, %82
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %40
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snd_soc_component_test_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context*, %struct.snd_kcontrol*, i64, %struct.soc_enum*, %struct.snd_soc_dapm_update*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
