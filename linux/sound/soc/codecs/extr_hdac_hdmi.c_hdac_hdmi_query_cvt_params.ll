; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_query_cvt_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_query_cvt_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }
%struct.hdac_hdmi_cvt = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.hdac_hdmi_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Failed to query pcm params for nid %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*, %struct.hdac_hdmi_cvt*)* @hdac_hdmi_query_cvt_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hdmi_query_cvt_params(%struct.hdac_device* %0, %struct.hdac_hdmi_cvt* %1) #0 {
  %3 = alloca %struct.hdac_device*, align 8
  %4 = alloca %struct.hdac_hdmi_cvt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_hdmi_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %3, align 8
  store %struct.hdac_hdmi_cvt* %1, %struct.hdac_hdmi_cvt** %4, align 8
  %8 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %9 = call %struct.hdac_hdmi_priv* @hdev_to_hdmi_priv(%struct.hdac_device* %8)
  store %struct.hdac_hdmi_priv* %9, %struct.hdac_hdmi_priv** %6, align 8
  %10 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %11 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %4, align 8
  %12 = getelementptr inbounds %struct.hdac_hdmi_cvt, %struct.hdac_hdmi_cvt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @get_wcaps(%struct.hdac_device* %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @get_wcaps_channels(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %4, align 8
  %18 = getelementptr inbounds %struct.hdac_hdmi_cvt, %struct.hdac_hdmi_cvt* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 2, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %4, align 8
  %22 = getelementptr inbounds %struct.hdac_hdmi_cvt, %struct.hdac_hdmi_cvt* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %6, align 8
  %26 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ugt i32 %24, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %6, align 8
  %33 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %37 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %4, align 8
  %38 = getelementptr inbounds %struct.hdac_hdmi_cvt, %struct.hdac_hdmi_cvt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %4, align 8
  %41 = getelementptr inbounds %struct.hdac_hdmi_cvt, %struct.hdac_hdmi_cvt* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %4, align 8
  %44 = getelementptr inbounds %struct.hdac_hdmi_cvt, %struct.hdac_hdmi_cvt* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %4, align 8
  %47 = getelementptr inbounds %struct.hdac_hdmi_cvt, %struct.hdac_hdmi_cvt* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = call i32 @snd_hdac_query_supported_pcm(%struct.hdac_device* %36, i32 %39, i32* %42, i32* %45, i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %35
  %53 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %54 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %53, i32 0, i32 0
  %55 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %4, align 8
  %56 = getelementptr inbounds %struct.hdac_hdmi_cvt, %struct.hdac_hdmi_cvt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %52, %35
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local %struct.hdac_hdmi_priv* @hdev_to_hdmi_priv(%struct.hdac_device*) #1

declare dso_local i32 @get_wcaps(%struct.hdac_device*, i32) #1

declare dso_local i32 @get_wcaps_channels(i32) #1

declare dso_local i32 @snd_hdac_query_supported_pcm(%struct.hdac_device*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
