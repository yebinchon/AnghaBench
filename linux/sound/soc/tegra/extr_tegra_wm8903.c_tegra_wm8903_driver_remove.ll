; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_wm8903.c_tegra_wm8903_driver_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_wm8903.c_tegra_wm8903_driver_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_card = type { i32 }
%struct.tegra_wm8903 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_wm8903_driver_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_wm8903_driver_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.tegra_wm8903*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.snd_soc_card* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.snd_soc_card* %6, %struct.snd_soc_card** %3, align 8
  %7 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %8 = call %struct.tegra_wm8903* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %7)
  store %struct.tegra_wm8903* %8, %struct.tegra_wm8903** %4, align 8
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %10 = call i32 @snd_soc_unregister_card(%struct.snd_soc_card* %9)
  %11 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %11, i32 0, i32 0
  %13 = call i32 @tegra_asoc_utils_fini(i32* %12)
  ret i32 0
}

declare dso_local %struct.snd_soc_card* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.tegra_wm8903* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_unregister_card(%struct.snd_soc_card*) #1

declare dso_local i32 @tegra_asoc_utils_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
