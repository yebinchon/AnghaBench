; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ae5_setup_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ae5_setup_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32* }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64 }

@DSP_DOWNLOADED = common dso_local global i64 0, align 8
@FLOAT_ZERO = common dso_local global i32 0, align 4
@FLOAT_ONE = common dso_local global i32 0, align 4
@FLOAT_TWO = common dso_local global i32 0, align 4
@MEM_CONNID_WUH = common dso_local global i32 0, align 4
@SR_48_000 = common dso_local global i32 0, align 4
@OUT_EFFECTS_COUNT = common dso_local global i32 0, align 4
@IN_EFFECTS_COUNT = common dso_local global i32 0, align 4
@ca0132_effects = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ae5_setup_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ae5_setup_defaults(%struct.hda_codec* %0) #0 {
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
  br label %136

17:                                               ; preds = %1
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = call i32 @ca0132_alt_dsp_scp_startup(%struct.hda_codec* %18)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @ca0132_alt_init_analog_mics(%struct.hda_codec* %20)
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = call i32 @chipio_set_stream_control(%struct.hda_codec* %22, i32 3, i32 1)
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = call i32 @chipio_set_stream_control(%struct.hda_codec* %24, i32 4, i32 1)
  %26 = load i32, i32* @FLOAT_ZERO, align 4
  store i32 %26, i32* %4, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @dspio_set_uint_param(%struct.hda_codec* %27, i32 150, i32 41, i32 %28)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dspio_set_uint_param(%struct.hda_codec* %30, i32 150, i32 42, i32 %31)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @dspio_set_uint_param(%struct.hda_codec* %33, i32 128, i32 13, i32 %34)
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dspio_set_uint_param(%struct.hda_codec* %36, i32 128, i32 14, i32 %37)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %39, i32 48, i32 46, i32 63)
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %41, i32 0, i32 0)
  %43 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %44 = call i32 @ca0113_mmio_command_set(%struct.hda_codec* %43, i32 48, i32 40, i32 0)
  %45 = load i32, i32* @FLOAT_ONE, align 4
  store i32 %45, i32* %4, align 4
  %46 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @dspio_set_uint_param(%struct.hda_codec* %46, i32 55, i32 8, i32 %47)
  %49 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @dspio_set_uint_param(%struct.hda_codec* %49, i32 55, i32 16, i32 %50)
  %52 = load i32, i32* @FLOAT_ZERO, align 4
  store i32 %52, i32* %4, align 4
  %53 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @dspio_set_uint_param(%struct.hda_codec* %53, i32 150, i32 60, i32 %54)
  %56 = load i32, i32* @FLOAT_TWO, align 4
  store i32 %56, i32* %4, align 4
  %57 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @dspio_set_uint_param(%struct.hda_codec* %57, i32 49, i32 0, i32 %58)
  %60 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %61 = load i32, i32* @MEM_CONNID_WUH, align 4
  %62 = load i32, i32* @SR_48_000, align 4
  %63 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %60, i32 %61, i32 %62)
  %64 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @dspio_set_uint_param(%struct.hda_codec* %64, i32 50, i32 0, i32 %65)
  %67 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %68 = call i32 @ca0132_alt_dsp_initial_mic_setup(%struct.hda_codec* %67)
  %69 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %70 = call i32 @ae5_post_dsp_register_set(%struct.hda_codec* %69)
  %71 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %72 = call i32 @ae5_post_dsp_param_setup(%struct.hda_codec* %71)
  %73 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %74 = call i32 @ae5_post_dsp_pll_setup(%struct.hda_codec* %73)
  %75 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %76 = call i32 @ae5_post_dsp_stream_setup(%struct.hda_codec* %75)
  %77 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %78 = call i32 @ae5_post_dsp_startup_data(%struct.hda_codec* %77)
  %79 = load i32, i32* @OUT_EFFECTS_COUNT, align 4
  %80 = load i32, i32* @IN_EFFECTS_COUNT, align 4
  %81 = add nsw i32 %79, %80
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %130, %17
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %133

87:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %126, %87
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sle i32 %89, %95
  br i1 %96, label %97, label %129

97:                                               ; preds = %88
  %98 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dspio_set_uint_param(%struct.hda_codec* %98, i32 %104, i32 %114, i32 %124)
  br label %126

126:                                              ; preds = %97
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %88

129:                                              ; preds = %88
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %83

133:                                              ; preds = %83
  %134 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %135 = call i32 @ca0132_alt_create_dummy_stream(%struct.hda_codec* %134)
  br label %136

136:                                              ; preds = %133, %16
  ret void
}

declare dso_local i32 @ca0132_alt_dsp_scp_startup(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_alt_init_analog_mics(%struct.hda_codec*) #1

declare dso_local i32 @chipio_set_stream_control(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @dspio_set_uint_param(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @ca0113_mmio_command_set(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @ca0113_mmio_gpio_set(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_set_conn_rate(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @ca0132_alt_dsp_initial_mic_setup(%struct.hda_codec*) #1

declare dso_local i32 @ae5_post_dsp_register_set(%struct.hda_codec*) #1

declare dso_local i32 @ae5_post_dsp_param_setup(%struct.hda_codec*) #1

declare dso_local i32 @ae5_post_dsp_pll_setup(%struct.hda_codec*) #1

declare dso_local i32 @ae5_post_dsp_stream_setup(%struct.hda_codec*) #1

declare dso_local i32 @ae5_post_dsp_startup_data(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_alt_create_dummy_stream(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
