; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_intel_hsw_common_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_intel_hsw_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, i32, i64, %struct.TYPE_3__, %struct.hdmi_spec* }
%struct.TYPE_3__ = type { i32 }
%struct.hdmi_spec = type { i32, i32*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@haswell_set_power_state = common dso_local global i32 0, align 4
@i915_hsw_setup_stream = common dso_local global i32 0, align 4
@i915_pin_cvt_fixup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32*, i32)* @intel_hsw_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hsw_common_init(%struct.hda_codec* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hdmi_spec*, align 8
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = call i32 @alloc_intel_hdmi(%struct.hda_codec* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %5, align 4
  br label %59

18:                                               ; preds = %4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 5
  %21 = load %struct.hdmi_spec*, %struct.hdmi_spec** %20, align 8
  store %struct.hdmi_spec* %21, %struct.hdmi_spec** %10, align 8
  %22 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %23 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  %25 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  %28 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  %31 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  %34 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %36 = call i32 @intel_haswell_enable_all_pins(%struct.hda_codec* %35, i32 1)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %38 = call i32 @intel_haswell_fixup_enable_dp12(%struct.hda_codec* %37)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %40 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* @haswell_set_power_state, align 4
  %42 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %43 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %46 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %48 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %47, i32 0, i32 2
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* @i915_hsw_setup_stream, align 4
  %50 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  %51 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @i915_pin_cvt_fixup, align 4
  %54 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  %55 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %58 = call i32 @parse_intel_hdmi(%struct.hda_codec* %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %18, %16
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @alloc_intel_hdmi(%struct.hda_codec*) #1

declare dso_local i32 @intel_haswell_enable_all_pins(%struct.hda_codec*, i32) #1

declare dso_local i32 @intel_haswell_fixup_enable_dp12(%struct.hda_codec*) #1

declare dso_local i32 @parse_intel_hdmi(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
