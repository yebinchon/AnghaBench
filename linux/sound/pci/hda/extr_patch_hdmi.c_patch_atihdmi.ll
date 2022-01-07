; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_patch_atihdmi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_patch_atihdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hdmi_spec*, %struct.TYPE_5__ }
%struct.hdmi_spec = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hdmi_spec_per_cvt = type { i8*, i32, i32, i8* }

@atihdmi_init = common dso_local global i32 0, align 4
@atihdmi_pin_get_eld = common dso_local global i32 0, align 4
@atihdmi_pin_setup_infoframe = common dso_local global i32 0, align 4
@atihdmi_pin_hbr_setup = common dso_local global i32 0, align 4
@atihdmi_setup_stream = common dso_local global i32 0, align 4
@atihdmi_pin_get_slot_channel = common dso_local global i32 0, align 4
@atihdmi_pin_set_slot_channel = common dso_local global i32 0, align 4
@atihdmi_paired_chmap_cea_alloc_validate_get_type = common dso_local global i32 0, align 4
@atihdmi_paired_cea_alloc_to_tlv_chmap = common dso_local global i32 0, align 4
@atihdmi_paired_chmap_validate = common dso_local global i32 0, align 4
@SUPPORTED_RATES = common dso_local global i32 0, align 4
@SUPPORTED_FORMATS = common dso_local global i32 0, align 4
@atihdmi_audio_ops = common dso_local global i32 0, align 4
@atihdmi_port2pin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_atihdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_atihdmi(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hdmi_spec*, align 8
  %5 = alloca %struct.hdmi_spec_per_cvt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = call i32 @patch_generic_hdmi(%struct.hda_codec* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %117

14:                                               ; preds = %1
  %15 = load i32, i32* @atihdmi_init, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 1
  %21 = load %struct.hdmi_spec*, %struct.hdmi_spec** %20, align 8
  store %struct.hdmi_spec* %21, %struct.hdmi_spec** %4, align 8
  %22 = load i32, i32* @atihdmi_pin_get_eld, align 4
  %23 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %24 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @atihdmi_pin_setup_infoframe, align 4
  %27 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %28 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @atihdmi_pin_hbr_setup, align 4
  %31 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %32 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @atihdmi_setup_stream, align 4
  %35 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %36 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @atihdmi_pin_get_slot_channel, align 4
  %39 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %40 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  store i32 %38, i32* %42, align 8
  %43 = load i32, i32* @atihdmi_pin_set_slot_channel, align 4
  %44 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %45 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  store i32 %43, i32* %47, align 4
  %48 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %49 = call i32 @has_amd_full_remap_support(%struct.hda_codec* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %14
  %52 = load i32, i32* @atihdmi_paired_chmap_cea_alloc_validate_get_type, align 4
  %53 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %54 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store i32 %52, i32* %56, align 8
  %57 = load i32, i32* @atihdmi_paired_cea_alloc_to_tlv_chmap, align 4
  %58 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %59 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* @atihdmi_paired_chmap_validate, align 4
  %63 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %64 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  br label %67

67:                                               ; preds = %51, %14
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %100, %67
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %71 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %68
  %75 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec* %75, i32 %76)
  store %struct.hdmi_spec_per_cvt* %77, %struct.hdmi_spec_per_cvt** %5, align 8
  %78 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %5, align 8
  %79 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @max(i8* %80, i32 8)
  %82 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %5, align 8
  %83 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @SUPPORTED_RATES, align 4
  %85 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %5, align 8
  %86 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @SUPPORTED_FORMATS, align 4
  %90 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %5, align 8
  %91 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %5, align 8
  %95 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @max(i8* %96, i32 24)
  %98 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %5, align 8
  %99 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %74
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %68

103:                                              ; preds = %68
  %104 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %105 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @max(i8* %107, i32 8)
  %109 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %110 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  %112 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %113 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %115 = load i32, i32* @atihdmi_port2pin, align 4
  %116 = call i32 @generic_acomp_init(%struct.hda_codec* %114, i32* @atihdmi_audio_ops, i32 %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %103, %12
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @patch_generic_hdmi(%struct.hda_codec*) #1

declare dso_local i32 @has_amd_full_remap_support(%struct.hda_codec*) #1

declare dso_local %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec*, i32) #1

declare dso_local i8* @max(i8*, i32) #1

declare dso_local i32 @generic_acomp_init(%struct.hda_codec*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
