; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_patch_stac927x.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_patch_stac927x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_4__*, i32, %struct.sigmatel_spec* }
%struct.TYPE_4__ = type { i32 }
%struct.sigmatel_spec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@stac927x_spdif_labels = common dso_local global i32 0, align 4
@stac927x_loopback = common dso_local global i32 0, align 4
@stac927x_models = common dso_local global i32 0, align 4
@stac927x_fixup_tbl = common dso_local global i32 0, align 4
@stac927x_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@stac927x_core_init = common dso_local global i32 0, align 4
@stac927x_proc_hook = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_stac927x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_stac927x(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.sigmatel_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alloc_stac_spec(%struct.hda_codec* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %81

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 2
  %15 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %14, align 8
  store %struct.sigmatel_spec* %15, %struct.sigmatel_spec** %4, align 8
  %16 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %17 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %19 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %22 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* @stac927x_spdif_labels, align 4
  %24 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %25 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %24, i32 0, i32 12
  store i32 %23, i32* %25, align 8
  %26 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %27 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %26, i32 0, i32 11
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 35, i32* %28, align 4
  %29 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %30 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %29, i32 0, i32 3
  store i32 1, i32* %30, align 4
  %31 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %32 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %31, i32 0, i32 2
  store i32 1, i32* %32, align 8
  %33 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %34 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %33, i32 0, i32 5
  store i32 1, i32* %34, align 4
  %35 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %36 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %35, i32 0, i32 4
  store i32 1, i32* %36, align 8
  %37 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %38 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %37, i32 0, i32 10
  store i32* @stac927x_loopback, i32** %38, align 8
  %39 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %40 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %39, i32 0, i32 6
  store i32 64, i32* %40, align 8
  %41 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %42 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %41, i32 0, i32 9
  store i64 0, i64* %42, align 8
  %43 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %44 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %43, i32 0, i32 7
  store i32 1, i32* %44, align 4
  %45 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %46 = load i32, i32* @stac927x_models, align 4
  %47 = load i32, i32* @stac927x_fixup_tbl, align 4
  %48 = load i32, i32* @stac927x_fixups, align 4
  %49 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %51 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %52 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %50, i32 %51)
  %53 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %54 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %12
  %58 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %59 = load i32, i32* @stac927x_core_init, align 4
  %60 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %12
  %62 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %63 = call i32 @stac_parse_auto_config(%struct.hda_codec* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %68 = call i32 @stac_free(%struct.hda_codec* %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %81

70:                                               ; preds = %61
  %71 = load i32, i32* @stac927x_proc_hook, align 4
  %72 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %73 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %75 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %79 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %80 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %78, i32 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %70, %66, %10
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @alloc_stac_spec(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @stac_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @stac_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
