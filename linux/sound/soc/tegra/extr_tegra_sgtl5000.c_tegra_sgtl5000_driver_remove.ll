; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_sgtl5000.c_tegra_sgtl5000_driver_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_sgtl5000.c_tegra_sgtl5000_driver_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.platform_device = type { i32 }
%struct.snd_soc_card = type { i32 }
%struct.tegra_sgtl5000 = type { i32 }

@tegra_sgtl5000_dai = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_sgtl5000_driver_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sgtl5000_driver_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.tegra_sgtl5000*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.snd_soc_card* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.snd_soc_card* %7, %struct.snd_soc_card** %3, align 8
  %8 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %9 = call %struct.tegra_sgtl5000* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %8)
  store %struct.tegra_sgtl5000* %9, %struct.tegra_sgtl5000** %4, align 8
  %10 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %11 = call i32 @snd_soc_unregister_card(%struct.snd_soc_card* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.tegra_sgtl5000*, %struct.tegra_sgtl5000** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_sgtl5000, %struct.tegra_sgtl5000* %12, i32 0, i32 0
  %14 = call i32 @tegra_asoc_utils_fini(i32* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tegra_sgtl5000_dai, i32 0, i32 2), align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @of_node_put(i32* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tegra_sgtl5000_dai, i32 0, i32 2), align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tegra_sgtl5000_dai, i32 0, i32 1), align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tegra_sgtl5000_dai, i32 0, i32 0), align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @of_node_put(i32* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tegra_sgtl5000_dai, i32 0, i32 0), align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.snd_soc_card* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.tegra_sgtl5000* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_unregister_card(%struct.snd_soc_card*) #1

declare dso_local i32 @tegra_asoc_utils_fini(i32*) #1

declare dso_local i32 @of_node_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
