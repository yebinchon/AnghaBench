; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_patch_stac92hd71bxx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_patch_stac92hd71bxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.TYPE_3__, %struct.sigmatel_spec* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sigmatel_spec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i64, i32*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@stac92hd71bxx_unmute_nids = common dso_local global i64* null, align 8
@AC_WID_VOL_KNB = common dso_local global i64 0, align 8
@stac92hd71bxx_core_init = common dso_local global i32 0, align 4
@AC_WCAP_IN_AMP = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@stac92hd71bxx_loopback = common dso_local global i32 0, align 4
@stac92hd71bxx_pwr_nids = common dso_local global i32 0, align 4
@stac92hd71bxx_models = common dso_local global i32 0, align 4
@stac92hd71bxx_fixup_tbl = common dso_local global i32 0, align 4
@stac92hd71bxx_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@stac92hd7x_proc_hook = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_stac92hd71bxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_stac92hd71bxx(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.sigmatel_spec*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load i64*, i64** @stac92hd71bxx_unmute_nids, align 8
  store i64* %8, i64** %5, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = call i32 @alloc_stac_spec(%struct.hda_codec* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %156

15:                                               ; preds = %1
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 2
  %18 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %17, align 8
  store %struct.sigmatel_spec* %18, %struct.sigmatel_spec** %4, align 8
  %19 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %20 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %19, i32 0, i32 12
  store i64 0, i64* %20, align 8
  %21 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %22 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %25 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %28 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 23, i32* %29, align 4
  %30 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %31 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %33 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %35 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %34, i32 0, i32 2
  store i32 1, i32* %35, align 8
  %36 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %37 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %39 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %80 [
    i32 287143606, label %42
    i32 287143607, label %42
    i32 287143432, label %45
    i32 287143427, label %69
  ]

42:                                               ; preds = %15, %15
  %43 = load i64*, i64** %5, align 8
  %44 = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %44, i64** %5, align 8
  br label %80

45:                                               ; preds = %15
  %46 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %47 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %54 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 15
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %52, %45
  %60 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %61 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %60, i32 0, i32 4
  store i32 40, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i64*, i64** %5, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %5, align 8
  %65 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %66 = call i32 @snd_hda_codec_set_pincfg(%struct.hda_codec* %65, i32 15, i32 1089470704)
  %67 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %68 = call i32 @snd_hda_codec_set_pincfg(%struct.hda_codec* %67, i32 25, i32 1089470707)
  br label %80

69:                                               ; preds = %15
  %70 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %71 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 15
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %78 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %77, i32 0, i32 4
  store i32 40, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %69
  br label %80

80:                                               ; preds = %15, %79, %62, %42
  %81 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %82 = call i32 @get_wcaps(%struct.hda_codec* %81, i32 40)
  %83 = call i64 @get_wcaps_type(i32 %82)
  %84 = load i64, i64* @AC_WID_VOL_KNB, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %88 = load i32, i32* @stac92hd71bxx_core_init, align 4
  %89 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %92 = call i32 @get_wcaps(%struct.hda_codec* %91, i32 10)
  %93 = load i32, i32* @AC_WCAP_IN_AMP, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %90
  %97 = load i64*, i64** %5, align 8
  store i64* %97, i64** %7, align 8
  br label %98

98:                                               ; preds = %108, %96
  %99 = load i64*, i64** %7, align 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %104 = load i64*, i64** %7, align 8
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @HDA_INPUT, align 4
  %107 = call i32 @snd_hda_codec_amp_init_stereo(%struct.hda_codec* %103, i64 %105, i32 %106, i32 0, i32 255, i32 0)
  br label %108

108:                                              ; preds = %102
  %109 = load i64*, i64** %7, align 8
  %110 = getelementptr inbounds i64, i64* %109, i32 1
  store i64* %110, i64** %7, align 8
  br label %98

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111, %90
  %113 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %114 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %113, i32 0, i32 11
  store i32* @stac92hd71bxx_loopback, i32** %114, align 8
  %115 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %116 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %115, i32 0, i32 5
  store i32 80, i32* %116, align 4
  %117 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %118 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %117, i32 0, i32 10
  store i64 0, i64* %118, align 8
  %119 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %120 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %119, i32 0, i32 6
  store i32 1, i32* %120, align 8
  %121 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %122 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %121, i32 0, i32 9
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  store i32 38, i32* %123, align 4
  %124 = load i32, i32* @stac92hd71bxx_pwr_nids, align 4
  %125 = call i32 @ARRAY_SIZE(i32 %124)
  %126 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %127 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* @stac92hd71bxx_pwr_nids, align 4
  %129 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %130 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %129, i32 0, i32 7
  store i32 %128, i32* %130, align 4
  %131 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %132 = load i32, i32* @stac92hd71bxx_models, align 4
  %133 = load i32, i32* @stac92hd71bxx_fixup_tbl, align 4
  %134 = load i32, i32* @stac92hd71bxx_fixups, align 4
  %135 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %131, i32 %132, i32 %133, i32 %134)
  %136 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %137 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %138 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %136, i32 %137)
  %139 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %140 = call i32 @stac_setup_gpio(%struct.hda_codec* %139)
  %141 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %142 = call i32 @stac_parse_auto_config(%struct.hda_codec* %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %112
  %146 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %147 = call i32 @stac_free(%struct.hda_codec* %146)
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %2, align 4
  br label %156

149:                                              ; preds = %112
  %150 = load i32, i32* @stac92hd7x_proc_hook, align 4
  %151 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %152 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %154 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %155 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %153, i32 %154)
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %149, %145, %13
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @alloc_stac_spec(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_set_pincfg(%struct.hda_codec*, i32, i32) #1

declare dso_local i64 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_amp_init_stereo(%struct.hda_codec*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

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
