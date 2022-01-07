; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_patch_stac92hd83xxx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_patch_stac92hd83xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, %struct.sigmatel_spec*, %struct.TYPE_3__ }
%struct.sigmatel_spec = type { i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@AC_PWRST_EPSS = common dso_local global i32 0, align 4
@stac92hd83xxx_pwr_nids = common dso_local global i32 0, align 4
@stac92hd83xxx_core_init = common dso_local global i32 0, align 4
@stac92hd83xxx_models = common dso_local global i32 0, align 4
@stac92hd83xxx_fixup_tbl = common dso_local global i32 0, align 4
@stac92hd83xxx_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@stac92hd_proc_hook = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_stac92hd83xxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_stac92hd83xxx(%struct.hda_codec* %0) #0 {
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
  br label %76

12:                                               ; preds = %1
  %13 = load i32, i32* @AC_PWRST_EPSS, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %14
  store i32 %19, i32* %17, align 8
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 2
  %22 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %21, align 8
  store %struct.sigmatel_spec* %22, %struct.sigmatel_spec** %4, align 8
  %23 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %24 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %26 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %28 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %31 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %34 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 27, i32* %35, align 4
  %36 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %37 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i32 33, i32* %38, align 4
  %39 = load i32, i32* @stac92hd83xxx_pwr_nids, align 4
  %40 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %41 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @stac92hd83xxx_pwr_nids, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %45 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %47 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %46, i32 0, i32 0
  store i32 -1, i32* %47, align 8
  %48 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %49 = load i32, i32* @stac92hd83xxx_core_init, align 4
  %50 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %48, i32 %49)
  %51 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %52 = load i32, i32* @stac92hd83xxx_models, align 4
  %53 = load i32, i32* @stac92hd83xxx_fixup_tbl, align 4
  %54 = load i32, i32* @stac92hd83xxx_fixups, align 4
  %55 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %57 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %58 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %56, i32 %57)
  %59 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %60 = call i32 @stac_setup_gpio(%struct.hda_codec* %59)
  %61 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %62 = call i32 @stac_parse_auto_config(%struct.hda_codec* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %12
  %66 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %67 = call i32 @stac_free(%struct.hda_codec* %66)
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %76

69:                                               ; preds = %12
  %70 = load i32, i32* @stac92hd_proc_hook, align 4
  %71 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %72 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %74 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %75 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %73, i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %69, %65, %10
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @alloc_stac_spec(%struct.hda_codec*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @stac_setup_gpio(%struct.hda_codec*) #1

declare dso_local i32 @stac_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @stac_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
