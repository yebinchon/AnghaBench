; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_hdmi_drv_data = type { i32 }
%struct.hdac_device = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.hdac_hdmi_priv = type { i32, i32, i32, i32, %struct.hdac_hdmi_drv_data*, %struct.hdac_device*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.snd_soc_dai_driver = type { i32 }
%struct.hdac_ext_link = type { i32 }
%struct.hdac_driver = type { i32 }
%struct.hda_device_id = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"hdac link not found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hdac_hdmi_get_chmap = common dso_local global i32 0, align 4
@hdac_hdmi_set_chmap = common dso_local global i32 0, align 4
@is_hdac_hdmi_pcm_attached = common dso_local global i32 0, align 4
@hdac_hdmi_get_spk_alloc = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@intel_drv_data = common dso_local global %struct.hdac_hdmi_drv_data zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed in parse and map nid with err: %d\0A\00", align 1
@hdmi_hda_codec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*)* @hdac_hdmi_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hdmi_dev_probe(%struct.hdac_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdac_device*, align 8
  %4 = alloca %struct.hdac_hdmi_priv*, align 8
  %5 = alloca %struct.snd_soc_dai_driver*, align 8
  %6 = alloca %struct.hdac_ext_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hdac_driver*, align 8
  %10 = alloca %struct.hda_device_id*, align 8
  store %struct.hdac_device* %0, %struct.hdac_device** %3, align 8
  store %struct.hdac_hdmi_priv* null, %struct.hdac_hdmi_priv** %4, align 8
  store %struct.snd_soc_dai_driver* null, %struct.snd_soc_dai_driver** %5, align 8
  store %struct.hdac_ext_link* null, %struct.hdac_ext_link** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %12 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.hdac_driver* @drv_to_hdac_driver(i32 %14)
  store %struct.hdac_driver* %15, %struct.hdac_driver** %9, align 8
  %16 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %17 = load %struct.hdac_driver*, %struct.hdac_driver** %9, align 8
  %18 = call %struct.hda_device_id* @hdac_get_device_id(%struct.hdac_device* %16, %struct.hdac_driver* %17)
  store %struct.hda_device_id* %18, %struct.hda_device_id** %10, align 8
  %19 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %20 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %23 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %22, i32 0, i32 1
  %24 = call i32 @dev_name(%struct.TYPE_10__* %23)
  %25 = call %struct.hdac_ext_link* @snd_hdac_ext_bus_get_link(i32 %21, i32 %24)
  store %struct.hdac_ext_link* %25, %struct.hdac_ext_link** %6, align 8
  %26 = load %struct.hdac_ext_link*, %struct.hdac_ext_link** %6, align 8
  %27 = icmp ne %struct.hdac_ext_link* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %30 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %29, i32 0, i32 1
  %31 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %145

34:                                               ; preds = %1
  %35 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %36 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hdac_ext_link*, %struct.hdac_ext_link** %6, align 8
  %39 = call i32 @snd_hdac_ext_bus_link_get(i32 %37, %struct.hdac_ext_link* %38)
  %40 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %41 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %40, i32 0, i32 1
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.hdac_hdmi_priv* @devm_kzalloc(%struct.TYPE_10__* %41, i32 48, i32 %42)
  store %struct.hdac_hdmi_priv* %43, %struct.hdac_hdmi_priv** %4, align 8
  %44 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %45 = icmp eq %struct.hdac_hdmi_priv* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %145

49:                                               ; preds = %34
  %50 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %51 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %52 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %51, i32 0, i32 6
  %53 = call i32 @snd_hdac_register_chmap_ops(%struct.hdac_device* %50, %struct.TYPE_9__* %52)
  %54 = load i32, i32* @hdac_hdmi_get_chmap, align 4
  %55 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %56 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @hdac_hdmi_set_chmap, align 4
  %60 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %61 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 8
  %64 = load i32, i32* @is_hdac_hdmi_pcm_attached, align 4
  %65 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %66 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @hdac_hdmi_get_spk_alloc, align 4
  %70 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %71 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %75 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %76 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %75, i32 0, i32 5
  store %struct.hdac_device* %74, %struct.hdac_device** %76, align 8
  %77 = load %struct.hda_device_id*, %struct.hda_device_id** %10, align 8
  %78 = icmp ne %struct.hda_device_id* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %49
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %145

82:                                               ; preds = %49
  %83 = load %struct.hda_device_id*, %struct.hda_device_id** %10, align 8
  %84 = getelementptr inbounds %struct.hda_device_id, %struct.hda_device_id* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.hda_device_id*, %struct.hda_device_id** %10, align 8
  %89 = getelementptr inbounds %struct.hda_device_id, %struct.hda_device_id* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.hdac_hdmi_drv_data*
  %92 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %93 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %92, i32 0, i32 4
  store %struct.hdac_hdmi_drv_data* %91, %struct.hdac_hdmi_drv_data** %93, align 8
  br label %97

94:                                               ; preds = %82
  %95 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %96 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %95, i32 0, i32 4
  store %struct.hdac_hdmi_drv_data* @intel_drv_data, %struct.hdac_hdmi_drv_data** %96, align 8
  br label %97

97:                                               ; preds = %94, %87
  %98 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %99 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %98, i32 0, i32 1
  %100 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %101 = call i32 @dev_set_drvdata(%struct.TYPE_10__* %99, %struct.hdac_hdmi_priv* %100)
  %102 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %103 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %102, i32 0, i32 3
  %104 = call i32 @INIT_LIST_HEAD(i32* %103)
  %105 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %106 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %105, i32 0, i32 2
  %107 = call i32 @INIT_LIST_HEAD(i32* %106)
  %108 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %109 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %108, i32 0, i32 1
  %110 = call i32 @INIT_LIST_HEAD(i32* %109)
  %111 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %112 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %111, i32 0, i32 0
  %113 = call i32 @mutex_init(i32* %112)
  %114 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %115 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %118 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @snd_hdac_display_power(i32 %116, i32 %119, i32 1)
  %121 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %122 = call i32 @hdac_hdmi_parse_and_map_nid(%struct.hdac_device* %121, %struct.snd_soc_dai_driver** %5, i32* %7)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %97
  %126 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %127 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %126, i32 0, i32 1
  %128 = load i32, i32* %8, align 4
  %129 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %127, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %2, align 4
  br label %145

131:                                              ; preds = %97
  %132 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %133 = call i32 @snd_hdac_refresh_widgets(%struct.hdac_device* %132)
  %134 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %135 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %134, i32 0, i32 1
  %136 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %5, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @devm_snd_soc_register_component(%struct.TYPE_10__* %135, i32* @hdmi_hda_codec, %struct.snd_soc_dai_driver* %136, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %140 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.hdac_ext_link*, %struct.hdac_ext_link** %6, align 8
  %143 = call i32 @snd_hdac_ext_bus_link_put(i32 %141, %struct.hdac_ext_link* %142)
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %131, %125, %79, %46, %28
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.hdac_driver* @drv_to_hdac_driver(i32) #1

declare dso_local %struct.hda_device_id* @hdac_get_device_id(%struct.hdac_device*, %struct.hdac_driver*) #1

declare dso_local %struct.hdac_ext_link* @snd_hdac_ext_bus_get_link(i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @snd_hdac_ext_bus_link_get(i32, %struct.hdac_ext_link*) #1

declare dso_local %struct.hdac_hdmi_priv* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @snd_hdac_register_chmap_ops(%struct.hdac_device*, %struct.TYPE_9__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_10__*, %struct.hdac_hdmi_priv*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snd_hdac_display_power(i32, i32, i32) #1

declare dso_local i32 @hdac_hdmi_parse_and_map_nid(%struct.hdac_device*, %struct.snd_soc_dai_driver**, i32*) #1

declare dso_local i32 @snd_hdac_refresh_widgets(%struct.hdac_device*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_10__*, i32*, %struct.snd_soc_dai_driver*, i32) #1

declare dso_local i32 @snd_hdac_ext_bus_link_put(i32, %struct.hdac_ext_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
