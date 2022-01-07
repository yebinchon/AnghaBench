; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_jack_update_power.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_jack_update_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__, %struct.sigmatel_spec* }
%struct.TYPE_2__ = type { i32 }
%struct.sigmatel_spec = type { i32, i32, i64* }
%struct.hda_jack_callback = type { i64 }

@AC_VERB_IDT_SET_POWER_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_jack_callback*)* @jack_update_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jack_update_power(%struct.hda_codec* %0, %struct.hda_jack_callback* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_jack_callback*, align 8
  %5 = alloca %struct.sigmatel_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hda_jack_callback* %1, %struct.hda_jack_callback** %4, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 1
  %10 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  store %struct.sigmatel_spec* %10, %struct.sigmatel_spec** %5, align 8
  %11 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %12 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %4, align 8
  %18 = icmp ne %struct.hda_jack_callback* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %4, align 8
  %21 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %26 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %4, align 8
  %27 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %4, align 8
  %31 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %29, i64 %32)
  %34 = call i32 @stac_toggle_power_map(%struct.hda_codec* %25, i64 %28, i32 %33, i32 1)
  br label %76

35:                                               ; preds = %19, %16
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %62, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %39 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %36
  %43 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %44 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  %50 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @snd_hda_jack_tbl_get(%struct.hda_codec* %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  br label %62

55:                                               ; preds = %42
  %56 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %58, i64 %59)
  %61 = call i32 @stac_toggle_power_map(%struct.hda_codec* %56, i64 %57, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %55, %54
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %36

65:                                               ; preds = %36
  %66 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %67 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %68 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @AC_VERB_IDT_SET_POWER_MAP, align 4
  %72 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %73 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @snd_hda_codec_write(%struct.hda_codec* %66, i32 %70, i32 0, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %65, %24, %15
  ret void
}

declare dso_local i32 @stac_toggle_power_map(%struct.hda_codec*, i64, i32, i32) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_jack_tbl_get(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
