; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_patch_stac92hd73xx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_patch_stac92hd73xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, %struct.TYPE_3__, %struct.sigmatel_spec* }
%struct.TYPE_3__ = type { i32 }
%struct.sigmatel_spec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"Could not determine number of channels defaulting to DAC count\0A\00", align 1
@stac92hd73xx_6ch_loopback = common dso_local global i32 0, align 4
@stac92hd73xx_8ch_loopback = common dso_local global i32 0, align 4
@stac92hd73xx_10ch_loopback = common dso_local global i32 0, align 4
@stac92hd73xx_pwr_nids = common dso_local global i32 0, align 4
@stac92hd73xx_models = common dso_local global i32 0, align 4
@stac92hd73xx_fixup_tbl = common dso_local global i32 0, align 4
@stac92hd73xx_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@stac92hd73xx_core_init = common dso_local global i32 0, align 4
@stac92hd7x_proc_hook = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_stac92hd73xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_stac92hd73xx(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.sigmatel_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = call i32 @alloc_stac_spec(%struct.hda_codec* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %131

13:                                               ; preds = %1
  %14 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 3
  %16 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %15, align 8
  store %struct.sigmatel_spec* %16, %struct.sigmatel_spec** %4, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, -16
  %22 = icmp ne i32 %21, 287143536
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %13
  %27 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %28 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %27, i32 0, i32 13
  store i64 0, i64* %28, align 8
  %29 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %30 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 29, i32* %31, align 4
  %32 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %33 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %35 = call i32 @snd_hda_get_num_conns(%struct.hda_codec* %34, i32 10)
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 5
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %26
  %43 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %44 = call i32 @codec_warn(%struct.hda_codec* %43, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 5, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %56 [
    i32 3, label %47
    i32 4, label %50
    i32 5, label %53
  ]

47:                                               ; preds = %45
  %48 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %49 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %48, i32 0, i32 12
  store i32* @stac92hd73xx_6ch_loopback, i32** %49, align 8
  br label %56

50:                                               ; preds = %45
  %51 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %52 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %51, i32 0, i32 12
  store i32* @stac92hd73xx_8ch_loopback, i32** %52, align 8
  br label %56

53:                                               ; preds = %45
  %54 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %55 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %54, i32 0, i32 12
  store i32* @stac92hd73xx_10ch_loopback, i32** %55, align 8
  br label %56

56:                                               ; preds = %45, %53, %50, %47
  %57 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %58 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %60 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %59, i32 0, i32 2
  store i32 8, i32* %60, align 8
  %61 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %62 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %61, i32 0, i32 9
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 28, i32* %63, align 4
  %64 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %65 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %64, i32 0, i32 5
  store i32 1, i32* %65, align 4
  %66 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %67 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %66, i32 0, i32 4
  store i32 1, i32* %67, align 8
  %68 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %69 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %68, i32 0, i32 3
  store i32 1, i32* %69, align 4
  %70 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %71 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %70, i32 0, i32 6
  store i32 1, i32* %71, align 8
  %72 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %73 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %72, i32 0, i32 7
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* @stac92hd73xx_pwr_nids, align 4
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %77 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %76, i32 0, i32 11
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @stac92hd73xx_pwr_nids, align 4
  %79 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %80 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %79, i32 0, i32 10
  store i32 %78, i32* %80, align 4
  %81 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %82 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %81, i32 0, i32 9
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i32 1, i32* %83, align 4
  %84 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %85 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %84, i32 0, i32 9
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  store i32 1, i32* %86, align 4
  %87 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %88 = load i32, i32* @stac92hd73xx_models, align 4
  %89 = load i32, i32* @stac92hd73xx_fixup_tbl, align 4
  %90 = load i32, i32* @stac92hd73xx_fixups, align 4
  %91 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %93 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %94 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %92, i32 %93)
  %95 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %96 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %56
  %100 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %101 = load i32, i32* @stac92hd73xx_core_init, align 4
  %102 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %56
  %104 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %105 = call i32 @stac_parse_auto_config(%struct.hda_codec* %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %110 = call i32 @stac_free(%struct.hda_codec* %109)
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %131

112:                                              ; preds = %103
  %113 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %114 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %119 = call i32 @has_builtin_speaker(%struct.hda_codec* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %123 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %122, i32 0, i32 7
  store i32 0, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %117, %112
  %125 = load i32, i32* @stac92hd7x_proc_hook, align 4
  %126 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %127 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %129 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %130 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %128, i32 %129)
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %124, %108, %11
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @alloc_stac_spec(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_get_num_conns(%struct.hda_codec*, i32) #1

declare dso_local i32 @codec_warn(%struct.hda_codec*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @stac_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @stac_free(%struct.hda_codec*) #1

declare dso_local i32 @has_builtin_speaker(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
