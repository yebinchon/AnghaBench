; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_output_mux_put_enum.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_output_mux_put_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.cpcap_audio = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.soc_enum = type { i32 }

@CPCAP_REG_RXCOA = common dso_local global i32 0, align 4
@CPCAP_REG_RXSDOA = common dso_local global i32 0, align 4
@CPCAP_REG_RXEPOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @cpcap_output_mux_put_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_output_mux_put_enum(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.cpcap_audio*, align 8
  %8 = alloca %struct.snd_soc_dapm_context*, align 8
  %9 = alloca %struct.soc_enum*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = call %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol* %16)
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %6, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %19 = call %struct.cpcap_audio* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.cpcap_audio* %19, %struct.cpcap_audio** %7, align 8
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %21 = call %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol* %20)
  store %struct.snd_soc_dapm_context* %21, %struct.snd_soc_dapm_context** %8, align 8
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.soc_enum*
  store %struct.soc_enum* %25, %struct.soc_enum** %9, align 8
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %34 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BIT(i32 %35)
  store i32 %36, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %44 [
    i32 1, label %38
    i32 2, label %40
    i32 3, label %42
  ]

38:                                               ; preds = %2
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %12, align 4
  br label %45

40:                                               ; preds = %2
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %13, align 4
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %14, align 4
  br label %45

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %44, %42, %40, %38
  %46 = load %struct.cpcap_audio*, %struct.cpcap_audio** %7, align 8
  %47 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CPCAP_REG_RXCOA, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %3, align 4
  br label %87

57:                                               ; preds = %45
  %58 = load %struct.cpcap_audio*, %struct.cpcap_audio** %7, align 8
  %59 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CPCAP_REG_RXSDOA, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %3, align 4
  br label %87

69:                                               ; preds = %57
  %70 = load %struct.cpcap_audio*, %struct.cpcap_audio** %7, align 8
  %71 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CPCAP_REG_RXEPOA, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @regmap_update_bits(i32 %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %3, align 4
  br label %87

81:                                               ; preds = %69
  %82 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %83 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %86 = call i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context* %82, %struct.snd_kcontrol* %83, i32 %84, %struct.soc_enum* %85, i32* null)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %81, %79, %67, %55
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.cpcap_audio* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_mux_update_power(%struct.snd_soc_dapm_context*, %struct.snd_kcontrol*, i32, %struct.soc_enum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
