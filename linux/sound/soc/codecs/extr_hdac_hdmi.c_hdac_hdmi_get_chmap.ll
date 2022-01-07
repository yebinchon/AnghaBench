; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_get_chmap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_get_chmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }
%struct.hdac_hdmi_priv = type { i32 }
%struct.hdac_hdmi_pcm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_device*, i32, i8*)* @hdac_hdmi_get_chmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_hdmi_get_chmap(%struct.hdac_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.hdac_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hdac_hdmi_priv*, align 8
  %8 = alloca %struct.hdac_hdmi_pcm*, align 8
  store %struct.hdac_device* %0, %struct.hdac_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %10 = call %struct.hdac_hdmi_priv* @hdev_to_hdmi_priv(%struct.hdac_device* %9)
  store %struct.hdac_hdmi_priv* %10, %struct.hdac_hdmi_priv** %7, align 8
  %11 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.hdac_hdmi_pcm* @get_hdmi_pcm_from_id(%struct.hdac_hdmi_priv* %11, i32 %12)
  store %struct.hdac_hdmi_pcm* %13, %struct.hdac_hdmi_pcm** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %8, align 8
  %16 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %8, align 8
  %19 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @memcpy(i8* %14, i32 %17, i32 %21)
  ret void
}

declare dso_local %struct.hdac_hdmi_priv* @hdev_to_hdmi_priv(%struct.hdac_device*) #1

declare dso_local %struct.hdac_hdmi_pcm* @get_hdmi_pcm_from_id(%struct.hdac_hdmi_priv*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
