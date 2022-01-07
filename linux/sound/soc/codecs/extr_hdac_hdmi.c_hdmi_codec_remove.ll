; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdmi_codec_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdmi_codec_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.hdac_hdmi_priv = type { %struct.hdac_device* }
%struct.hdac_device = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"notifier unregister failed: err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @hdmi_codec_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_codec_remove(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.hdac_hdmi_priv*, align 8
  %4 = alloca %struct.hdac_device*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = call %struct.hdac_hdmi_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.hdac_hdmi_priv* %7, %struct.hdac_hdmi_priv** %3, align 8
  %8 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %3, align 8
  %9 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %8, i32 0, i32 0
  %10 = load %struct.hdac_device*, %struct.hdac_device** %9, align 8
  store %struct.hdac_device* %10, %struct.hdac_device** %4, align 8
  %11 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %12 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @snd_hdac_acomp_register_notifier(i32 %13, i32* null)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %19 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %24 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %23, i32 0, i32 0
  %25 = call i32 @pm_runtime_disable(i32* %24)
  ret void
}

declare dso_local %struct.hdac_hdmi_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_hdac_acomp_register_notifier(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
