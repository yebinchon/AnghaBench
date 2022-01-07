; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32, i32, i32 }
%struct.hdmi_spec_per_pin = type { i32, i32 }

@jack_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @generic_hdmi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_hdmi_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hdmi_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_spec_per_pin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 1
  %10 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  store %struct.hdmi_spec* %10, %struct.hdmi_spec** %3, align 8
  %11 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %12 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %21 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %64, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %25 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %22
  %29 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %29, i32 %30)
  store %struct.hdmi_spec_per_pin* %31, %struct.hdmi_spec_per_pin** %5, align 8
  %32 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %33 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %36 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @snd_hda_set_dev_select(%struct.hda_codec* %38, i32 %39, i32 %40)
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @hdmi_init_pin(%struct.hda_codec* %42, i32 %43)
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = call i64 @codec_has_acomp(%struct.hda_codec* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %28
  br label %64

49:                                               ; preds = %28
  %50 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %51 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @snd_hda_jack_detect_enable(%struct.hda_codec* %55, i32 %56)
  br label %63

58:                                               ; preds = %49
  %59 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @jack_callback, align 4
  %62 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %54
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %22

67:                                               ; preds = %22
  %68 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %69 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %68, i32 0, i32 2
  %70 = call i32 @mutex_unlock(i32* %69)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @snd_hda_set_dev_select(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @hdmi_init_pin(%struct.hda_codec*, i32) #1

declare dso_local i64 @codec_has_acomp(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_jack_detect_enable(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
