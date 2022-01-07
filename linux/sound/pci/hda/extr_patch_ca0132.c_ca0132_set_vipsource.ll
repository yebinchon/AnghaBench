; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_set_vipsource.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_set_vipsource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64, i64, i32* }

@DSP_DOWNLOADED = common dso_local global i64 0, align 8
@CRYSTAL_VOICE = common dso_local global i64 0, align 8
@EFFECT_START_NID = common dso_local global i64 0, align 8
@CONTROL_PARAM_VIP_SOURCE = common dso_local global i32 0, align 4
@MEM_CONNID_MICIN1 = common dso_local global i32 0, align 4
@SR_96_000 = common dso_local global i32 0, align 4
@MEM_CONNID_MICOUT1 = common dso_local global i32 0, align 4
@DIGITAL_MIC = common dso_local global i64 0, align 8
@FLOAT_TWO = common dso_local global i32 0, align 4
@FLOAT_ONE = common dso_local global i32 0, align 4
@FLOAT_ZERO = common dso_local global i32 0, align 4
@SR_16_000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @ca0132_set_vipsource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_set_vipsource(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ca0132_spec*, align 8
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  store %struct.ca0132_spec* %10, %struct.ca0132_spec** %6, align 8
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %12 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DSP_DOWNLOADED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

17:                                               ; preds = %2
  %18 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %19 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @CRYSTAL_VOICE, align 8
  %22 = load i64, i64* @EFFECT_START_NID, align 8
  %23 = sub i64 %21, %22
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %27, %17
  %31 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %32 = load i32, i32* @CONTROL_PARAM_VIP_SOURCE, align 4
  %33 = call i32 @chipio_set_control_param(%struct.hda_codec* %31, i32 %32, i32 0)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %35 = load i32, i32* @MEM_CONNID_MICIN1, align 4
  %36 = load i32, i32* @SR_96_000, align 4
  %37 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %34, i32 %35, i32 %36)
  %38 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %39 = load i32, i32* @MEM_CONNID_MICOUT1, align 4
  %40 = load i32, i32* @SR_96_000, align 4
  %41 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %38, i32 %39, i32 %40)
  %42 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %43 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DIGITAL_MIC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  %48 = load i32, i32* @FLOAT_TWO, align 4
  store i32 %48, i32* %7, align 4
  br label %51

49:                                               ; preds = %30
  %50 = load i32, i32* @FLOAT_ONE, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dspio_set_uint_param(%struct.hda_codec* %52, i32 128, i32 0, i32 %53)
  %55 = load i32, i32* @FLOAT_ZERO, align 4
  store i32 %55, i32* %7, align 4
  %56 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dspio_set_uint_param(%struct.hda_codec* %56, i32 128, i32 5, i32 %57)
  br label %90

59:                                               ; preds = %27
  %60 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %61 = load i32, i32* @MEM_CONNID_MICIN1, align 4
  %62 = load i32, i32* @SR_16_000, align 4
  %63 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %60, i32 %61, i32 %62)
  %64 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %65 = load i32, i32* @MEM_CONNID_MICOUT1, align 4
  %66 = load i32, i32* @SR_16_000, align 4
  %67 = call i32 @chipio_set_conn_rate(%struct.hda_codec* %64, i32 %65, i32 %66)
  %68 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %69 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DIGITAL_MIC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = load i32, i32* @FLOAT_TWO, align 4
  store i32 %74, i32* %7, align 4
  br label %77

75:                                               ; preds = %59
  %76 = load i32, i32* @FLOAT_ONE, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @dspio_set_uint_param(%struct.hda_codec* %78, i32 128, i32 0, i32 %79)
  %81 = load i32, i32* @FLOAT_ONE, align 4
  store i32 %81, i32* %7, align 4
  %82 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @dspio_set_uint_param(%struct.hda_codec* %82, i32 128, i32 5, i32 %83)
  %85 = call i32 @msleep(i32 20)
  %86 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %87 = load i32, i32* @CONTROL_PARAM_VIP_SOURCE, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @chipio_set_control_param(%struct.hda_codec* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %77, %51
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %16
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @chipio_set_control_param(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_set_conn_rate(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @dspio_set_uint_param(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
