; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_setup_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_setup_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@stac_vref_led_power_filter = common dso_local global i32 0, align 4
@stac_capture_led_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @stac_setup_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac_setup_gpio(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.sigmatel_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 1
  %6 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  store %struct.sigmatel_spec* %6, %struct.sigmatel_spec** %3, align 8
  %7 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %8 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %11 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %15 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %1
  %19 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %20 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %18
  %24 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %25 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %28 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %32 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %35 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %39 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %42 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %49

45:                                               ; preds = %18
  %46 = load i32, i32* @stac_vref_led_power_filter, align 4
  %47 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %48 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %23
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %52 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %50
  %56 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %57 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %60 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %64 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %67 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %71 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %70, i32 0, i32 6
  store i64 0, i64* %71, align 8
  %72 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %73 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %76 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %80 = load i32, i32* @stac_capture_led_update, align 4
  %81 = call i32 @snd_hda_gen_add_micmute_led(%struct.hda_codec* %79, i32 %80)
  br label %82

82:                                               ; preds = %55, %50
  ret void
}

declare dso_local i32 @snd_hda_gen_add_micmute_led(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
