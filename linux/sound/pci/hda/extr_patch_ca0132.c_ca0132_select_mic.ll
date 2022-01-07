; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_select_mic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_select_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32*, i64, i32, i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"ca0132_select_mic\0A\00", align 1
@VNID_AMIC1_ASEL = common dso_local global i64 0, align 8
@VNODE_START_NID = common dso_local global i64 0, align 8
@VNID_AMIC1_SEL = common dso_local global i64 0, align 8
@LINE_MIC_IN = common dso_local global i64 0, align 8
@DIGITAL_MIC = common dso_local global i64 0, align 8
@MEM_CONNID_DMIC = common dso_local global i32 0, align 4
@SR_32_000 = common dso_local global i32 0, align 4
@VOICE_FOCUS = common dso_local global i64 0, align 8
@EFFECT_START_NID = common dso_local global i64 0, align 8
@SR_96_000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ca0132_select_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_select_mic(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  store %struct.ca0132_spec* %8, %struct.ca0132_spec** %3, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = call i32 @codec_dbg(%struct.hda_codec* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = call i32 @snd_hda_power_up_pm(%struct.hda_codec* %11)
  %13 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %14 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @VNID_AMIC1_ASEL, align 8
  %17 = load i64, i64* @VNODE_START_NID, align 8
  %18 = sub i64 %16, %17
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %26 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %24, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %31 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @VNID_AMIC1_SEL, align 8
  %34 = load i64, i64* @VNODE_START_NID, align 8
  %35 = sub i64 %33, %34
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %29, %23
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* @LINE_MIC_IN, align 8
  %43 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %44 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %49

45:                                               ; preds = %38
  %46 = load i64, i64* @DIGITAL_MIC, align 8
  %47 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %48 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %51 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DIGITAL_MIC, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %49
  %56 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %57 = load i32, i32* @MEM_CONNID_DMIC, align 4
  %58 = load i32, i32* @SR_32_000, align 4
  %59 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %56, i32 %57, i32 %58)
  %60 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %61 = call i32 @ca0132_set_dmic(%struct.hda_codec* %60, i32 1)
  %62 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %63 = call i32 @ca0132_mic_boost_set(%struct.hda_codec* %62, i32 0)
  %64 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %65 = load i64, i64* @VOICE_FOCUS, align 8
  %66 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %67 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @VOICE_FOCUS, align 8
  %70 = load i64, i64* @EFFECT_START_NID, align 8
  %71 = sub i64 %69, %70
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ca0132_effects_set(%struct.hda_codec* %64, i64 %65, i32 %73)
  br label %90

75:                                               ; preds = %49
  %76 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %77 = load i32, i32* @MEM_CONNID_DMIC, align 4
  %78 = load i32, i32* @SR_96_000, align 4
  %79 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %76, i32 %77, i32 %78)
  %80 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %81 = call i32 @ca0132_set_dmic(%struct.hda_codec* %80, i32 0)
  %82 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %83 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %84 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ca0132_mic_boost_set(%struct.hda_codec* %82, i32 %85)
  %87 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %88 = load i64, i64* @VOICE_FOCUS, align 8
  %89 = call i32 @ca0132_effects_set(%struct.hda_codec* %87, i64 %88, i32 0)
  br label %90

90:                                               ; preds = %75, %55
  %91 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %92 = call i32 @snd_hda_power_down_pm(%struct.hda_codec* %91)
  ret i32 0
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i32 @snd_hda_power_up_pm(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @chipio_set_conn_rate(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @ca0132_set_dmic(%struct.hda_codec*, i32) #1

declare dso_local i32 @ca0132_mic_boost_set(%struct.hda_codec*, i32) #1

declare dso_local i32 @ca0132_effects_set(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @snd_hda_power_down_pm(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
