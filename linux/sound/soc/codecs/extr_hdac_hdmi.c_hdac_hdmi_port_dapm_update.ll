; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_port_dapm_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_port_dapm_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_hdmi_port = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_hdmi_port*)* @hdac_hdmi_port_dapm_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_hdmi_port_dapm_update(%struct.hdac_hdmi_port* %0) #0 {
  %2 = alloca %struct.hdac_hdmi_port*, align 8
  store %struct.hdac_hdmi_port* %0, %struct.hdac_hdmi_port** %2, align 8
  %3 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %2, align 8
  %4 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %2, align 8
  %9 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %2, align 8
  %12 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @snd_soc_dapm_enable_pin(i32 %10, i32 %13)
  br label %23

15:                                               ; preds = %1
  %16 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %2, align 8
  %17 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %2, align 8
  %20 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_soc_dapm_disable_pin(i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %15, %7
  %24 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %2, align 8
  %25 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @snd_soc_dapm_sync(i32 %26)
  ret void
}

declare dso_local i32 @snd_soc_dapm_enable_pin(i32, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(i32, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
