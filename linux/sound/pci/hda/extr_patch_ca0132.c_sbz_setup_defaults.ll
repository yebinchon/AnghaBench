; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_sbz_setup_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_sbz_setup_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32* }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64 }

@DSP_DOWNLOADED = common dso_local global i64 0, align 8
@FLOAT_ONE = common dso_local global i32 0, align 4
@FLOAT_ZERO = common dso_local global i32 0, align 4
@FLOAT_TWO = common dso_local global i32 0, align 4
@MEM_CONNID_WUH = common dso_local global i32 0, align 4
@SR_48_000 = common dso_local global i32 0, align 4
@OUT_EFFECTS_COUNT = common dso_local global i32 0, align 4
@IN_EFFECTS_COUNT = common dso_local global i32 0, align 4
@ca0132_effects = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @sbz_setup_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbz_setup_defaults(%struct.hda_codec* %0) #0 {
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
  br label %111

17:                                               ; preds = %1
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = call i32 @ca0132_alt_dsp_scp_startup(%struct.hda_codec* %18)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @ca0132_alt_init_analog_mics(%struct.hda_codec* %20)
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = call i32 @sbz_connect_streams(%struct.hda_codec* %22)
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = call i32 @sbz_chipio_startup_data(%struct.hda_codec* %24)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = call i32 @chipio_set_stream_control(%struct.hda_codec* %26, i32 3, i32 1)
  %28 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %29 = call i32 @chipio_set_stream_control(%struct.hda_codec* %28, i32 4, i32 1)
  %30 = load i32, i32* @FLOAT_ONE, align 4
  store i32 %30, i32* %4, align 4
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dspio_set_uint_param(%struct.hda_codec* %31, i32 55, i32 8, i32 %32)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dspio_set_uint_param(%struct.hda_codec* %34, i32 55, i32 16, i32 %35)
  %37 = load i32, i32* @FLOAT_ZERO, align 4
  store i32 %37, i32* %4, align 4
  %38 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dspio_set_uint_param(%struct.hda_codec* %38, i32 150, i32 60, i32 %39)
  %41 = load i32, i32* @FLOAT_TWO, align 4
  store i32 %41, i32* %4, align 4
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @dspio_set_uint_param(%struct.hda_codec* %42, i32 49, i32 0, i32 %43)
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = load i32, i32* @MEM_CONNID_WUH, align 4
  %47 = load i32, i32* @SR_48_000, align 4
  %48 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %45, i32 %46, i32 %47)
  %49 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @dspio_set_uint_param(%struct.hda_codec* %49, i32 50, i32 0, i32 %50)
  %52 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %53 = call i32 @ca0132_alt_dsp_initial_mic_setup(%struct.hda_codec* %52)
  %54 = load i32, i32* @OUT_EFFECTS_COUNT, align 4
  %55 = load i32, i32* @IN_EFFECTS_COUNT, align 4
  %56 = add nsw i32 %54, %55
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %105, %17
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %108

62:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %101, %62
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sle i32 %64, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %63
  %73 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dspio_set_uint_param(%struct.hda_codec* %73, i32 %79, i32 %89, i32 %99)
  br label %101

101:                                              ; preds = %72
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %63

104:                                              ; preds = %63
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %58

108:                                              ; preds = %58
  %109 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %110 = call i32 @ca0132_alt_create_dummy_stream(%struct.hda_codec* %109)
  br label %111

111:                                              ; preds = %108, %16
  ret void
}

declare dso_local i32 @ca0132_alt_dsp_scp_startup(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_alt_init_analog_mics(%struct.hda_codec*) #1

declare dso_local i32 @sbz_connect_streams(%struct.hda_codec*) #1

declare dso_local i32 @sbz_chipio_startup_data(%struct.hda_codec*) #1

declare dso_local i32 @chipio_set_stream_control(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @dspio_set_uint_param(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @chipio_set_conn_rate(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @ca0132_alt_dsp_initial_mic_setup(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_alt_create_dummy_stream(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
