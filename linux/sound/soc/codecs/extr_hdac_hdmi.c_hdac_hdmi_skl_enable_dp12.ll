; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_skl_enable_dp12.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_skl_enable_dp12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }
%struct.hdac_hdmi_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INTEL_GET_VENDOR_VERB = common dso_local global i32 0, align 4
@INTEL_EN_DP12 = common dso_local global i32 0, align 4
@INTEL_SET_VENDOR_VERB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_device*)* @hdac_hdmi_skl_enable_dp12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_hdmi_skl_enable_dp12(%struct.hdac_device* %0) #0 {
  %2 = alloca %struct.hdac_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_hdmi_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %2, align 8
  %6 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %7 = call %struct.hdac_hdmi_priv* @hdev_to_hdmi_priv(%struct.hdac_device* %6)
  store %struct.hdac_hdmi_priv* %7, %struct.hdac_hdmi_priv** %4, align 8
  %8 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %4, align 8
  %9 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @INTEL_GET_VENDOR_VERB, align 4
  %16 = call i32 @snd_hdac_codec_read(%struct.hdac_device* %13, i32 %14, i32 0, i32 %15, i32 0)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @INTEL_EN_DP12, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %1
  br label %37

25:                                               ; preds = %19
  %26 = load i32, i32* @INTEL_EN_DP12, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @INTEL_SET_VENDOR_VERB, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @snd_hdac_codec_read(%struct.hdac_device* %29, i32 %30, i32 0, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %24, %36, %25
  ret void
}

declare dso_local %struct.hdac_hdmi_priv* @hdev_to_hdmi_priv(%struct.hdac_device*) #1

declare dso_local i32 @snd_hdac_codec_read(%struct.hdac_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
