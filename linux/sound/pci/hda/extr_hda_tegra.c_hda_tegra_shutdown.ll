; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_tegra.c_hda_tegra_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_tegra.c_hda_tegra_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_card = type { %struct.azx* }
%struct.azx = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @hda_tegra_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_tegra_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.azx*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.snd_card* @dev_get_drvdata(i32* %6)
  store %struct.snd_card* %7, %struct.snd_card** %3, align 8
  %8 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %9 = icmp ne %struct.snd_card* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %13 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %12, i32 0, i32 0
  %14 = load %struct.azx*, %struct.azx** %13, align 8
  store %struct.azx* %14, %struct.azx** %4, align 8
  %15 = load %struct.azx*, %struct.azx** %4, align 8
  %16 = icmp ne %struct.azx* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.azx*, %struct.azx** %4, align 8
  %19 = getelementptr inbounds %struct.azx, %struct.azx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.azx*, %struct.azx** %4, align 8
  %24 = call i32 @azx_stop_chip(%struct.azx* %23)
  br label %25

25:                                               ; preds = %10, %22, %17, %11
  ret void
}

declare dso_local %struct.snd_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @azx_stop_chip(%struct.azx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
