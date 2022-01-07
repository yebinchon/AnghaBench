; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_r3d_setup_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_r3d_setup_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32* }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64 }

@DSP_DOWNLOADED = common dso_local global i64 0, align 8
@FLOAT_ZERO = common dso_local global i32 0, align 4
@FLOAT_TWO = common dso_local global i32 0, align 4
@MEM_CONNID_WUH = common dso_local global i32 0, align 4
@SR_48_000 = common dso_local global i32 0, align 4
@QUIRK_R3DI = common dso_local global i64 0, align 8
@R3DI_DSP_DOWNLOADED = common dso_local global i32 0, align 4
@OUT_EFFECTS_COUNT = common dso_local global i32 0, align 4
@IN_EFFECTS_COUNT = common dso_local global i32 0, align 4
@ca0132_effects = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @r3d_setup_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r3d_setup_defaults(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  store %struct.ca0132_spec* %10, %struct.ca0132_spec** %3, align 8
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %12 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DSP_DOWNLOADED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %100

17:                                               ; preds = %1
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = call i32 @ca0132_alt_dsp_scp_startup(%struct.hda_codec* %18)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @ca0132_alt_init_analog_mics(%struct.hda_codec* %20)
  %22 = load i32, i32* @FLOAT_ZERO, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dspio_set_uint_param(%struct.hda_codec* %23, i32 150, i32 60, i32 %24)
  %26 = load i32, i32* @FLOAT_TWO, align 4
  store i32 %26, i32* %4, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @dspio_set_uint_param(%struct.hda_codec* %27, i32 49, i32 0, i32 %28)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = load i32, i32* @MEM_CONNID_WUH, align 4
  %32 = load i32, i32* @SR_48_000, align 4
  %33 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %30, i32 %31, i32 %32)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dspio_set_uint_param(%struct.hda_codec* %34, i32 50, i32 0, i32 %35)
  %37 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %38 = call i64 @ca0132_quirk(%struct.ca0132_spec* %37)
  %39 = load i64, i64* @QUIRK_R3DI, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %17
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = load i32, i32* @R3DI_DSP_DOWNLOADED, align 4
  %44 = call i32 @r3di_gpio_dsp_status_set(%struct.hda_codec* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %17
  %46 = load i32, i32* @OUT_EFFECTS_COUNT, align 4
  %47 = load i32, i32* @IN_EFFECTS_COUNT, align 4
  %48 = add nsw i32 %46, %47
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %97, %45
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %100

54:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %93, %54
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sle i32 %56, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %55
  %65 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dspio_set_uint_param(%struct.hda_codec* %65, i32 %71, i32 %81, i32 %91)
  br label %93

93:                                               ; preds = %64
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %55

96:                                               ; preds = %55
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %50

100:                                              ; preds = %16, %50
  ret void
}

declare dso_local i32 @ca0132_alt_dsp_scp_startup(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_alt_init_analog_mics(%struct.hda_codec*) #1

declare dso_local i32 @dspio_set_uint_param(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @chipio_set_conn_rate(%struct.hda_codec*, i32, i32) #1

declare dso_local i64 @ca0132_quirk(%struct.ca0132_spec*) #1

declare dso_local i32 @r3di_gpio_dsp_status_set(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
