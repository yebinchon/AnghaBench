; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdmi_codec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdmi_codec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.hdac_device* }
%struct.hdac_device = type { i32, i32 }
%struct.snd_soc_component = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.hdac_hdmi_priv = type { i32, %struct.snd_soc_component*, %struct.hdac_device* }
%struct.snd_soc_dapm_context = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.hdac_ext_link = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"hdac link not found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@aops = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"notifier register failed: err: %d\0A\00", align 1
@DL_FLAG_RPM_ACTIVE = common dso_local global i32 0, align 4
@DL_FLAG_AUTOREMOVE_CONSUMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @hdmi_codec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_codec_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.hdac_hdmi_priv*, align 8
  %5 = alloca %struct.hdac_device*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.hdac_ext_link*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.hdac_hdmi_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.hdac_hdmi_priv* %10, %struct.hdac_hdmi_priv** %4, align 8
  %11 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %12 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %11, i32 0, i32 2
  %13 = load %struct.hdac_device*, %struct.hdac_device** %12, align 8
  store %struct.hdac_device* %13, %struct.hdac_device** %5, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %14)
  store %struct.snd_soc_dapm_context* %15, %struct.snd_soc_dapm_context** %6, align 8
  store %struct.hdac_ext_link* null, %struct.hdac_ext_link** %7, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %18 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %17, i32 0, i32 1
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %18, align 8
  %19 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %20 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %23 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %22, i32 0, i32 0
  %24 = call i32 @dev_name(i32* %23)
  %25 = call %struct.hdac_ext_link* @snd_hdac_ext_bus_get_link(i32 %21, i32 %24)
  store %struct.hdac_ext_link* %25, %struct.hdac_ext_link** %7, align 8
  %26 = load %struct.hdac_ext_link*, %struct.hdac_ext_link** %7, align 8
  %27 = icmp ne %struct.hdac_ext_link* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %30 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %29, i32 0, i32 0
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %91

34:                                               ; preds = %1
  %35 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %36 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hdac_ext_link*, %struct.hdac_ext_link** %7, align 8
  %39 = call i32 @snd_hdac_ext_bus_link_get(i32 %37, %struct.hdac_ext_link* %38)
  %40 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %41 = call i32 @create_fill_widget_route_map(%struct.snd_soc_dapm_context* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %91

46:                                               ; preds = %34
  %47 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  store %struct.hdac_device* %47, %struct.hdac_device** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aops, i32 0, i32 0), align 8
  %48 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %49 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @snd_hdac_acomp_register_notifier(i32 %50, %struct.TYPE_7__* @aops)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %56 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %91

60:                                               ; preds = %46
  %61 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %62 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %63 = call i32 @hdac_hdmi_present_sense_all_pins(%struct.hdac_device* %61, %struct.hdac_hdmi_priv* %62, i32 1)
  %64 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %65 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %70 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %72 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %77 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %76, i32 0, i32 0
  %78 = load i32, i32* @DL_FLAG_RPM_ACTIVE, align 4
  %79 = load i32, i32* @DL_FLAG_AUTOREMOVE_CONSUMER, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @device_link_add(i32 %75, i32* %77, i32 %80)
  %82 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %83 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %82, i32 0, i32 0
  %84 = call i32 @pm_runtime_enable(i32* %83)
  %85 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %86 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %85, i32 0, i32 0
  %87 = call i32 @pm_runtime_put(i32* %86)
  %88 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %89 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %88, i32 0, i32 0
  %90 = call i32 @pm_runtime_suspend(i32* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %60, %54, %44, %28
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.hdac_hdmi_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.hdac_ext_link* @snd_hdac_ext_bus_get_link(i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @snd_hdac_ext_bus_link_get(i32, %struct.hdac_ext_link*) #1

declare dso_local i32 @create_fill_widget_route_map(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_hdac_acomp_register_notifier(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @hdac_hdmi_present_sense_all_pins(%struct.hdac_device*, %struct.hdac_hdmi_priv*, i32) #1

declare dso_local i32 @device_link_add(i32, i32*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @pm_runtime_suspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
