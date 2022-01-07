; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_output_mux_get_enum.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_output_mux_get_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.cpcap_audio = type { i32 }
%struct.soc_enum = type { i32 }

@CPCAP_REG_RXCOA = common dso_local global i32 0, align 4
@CPCAP_REG_RXSDOA = common dso_local global i32 0, align 4
@CPCAP_REG_RXEPOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @cpcap_output_mux_get_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_output_mux_get_enum(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.cpcap_audio*, align 8
  %8 = alloca %struct.soc_enum*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  %18 = call %struct.cpcap_audio* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.cpcap_audio* %18, %struct.cpcap_audio** %7, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.soc_enum*
  store %struct.soc_enum* %22, %struct.soc_enum** %8, align 8
  %23 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %24 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.cpcap_audio*, %struct.cpcap_audio** %7, align 8
  %27 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CPCAP_REG_RXCOA, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %10)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %3, align 4
  br label %105

35:                                               ; preds = %2
  %36 = load %struct.cpcap_audio*, %struct.cpcap_audio** %7, align 8
  %37 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CPCAP_REG_RXSDOA, align 4
  %40 = call i32 @regmap_read(i32 %38, i32 %39, i32* %11)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %3, align 4
  br label %105

45:                                               ; preds = %35
  %46 = load %struct.cpcap_audio*, %struct.cpcap_audio** %7, align 8
  %47 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CPCAP_REG_RXEPOA, align 4
  %50 = call i32 @regmap_read(i32 %48, i32 %49, i32* %12)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %3, align 4
  br label %105

55:                                               ; preds = %45
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %56, %57
  %59 = and i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 %60, %61
  %63 = and i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %9, align 4
  %66 = ashr i32 %64, %65
  %67 = and i32 %66, 1
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = shl i32 %68, 2
  %70 = load i32, i32* %11, align 4
  %71 = shl i32 %70, 1
  %72 = or i32 %69, %71
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  switch i32 %75, label %97 [
    i32 4, label %76
    i32 2, label %83
    i32 1, label %90
  ]

76:                                               ; preds = %55
  %77 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %78 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 3, i32* %82, align 4
  br label %104

83:                                               ; preds = %55
  %84 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %85 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 2, i32* %89, align 4
  br label %104

90:                                               ; preds = %55
  %91 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %92 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 1, i32* %96, align 4
  br label %104

97:                                               ; preds = %55
  %98 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %99 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %90, %83, %76
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %53, %43, %33
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.cpcap_audio* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
