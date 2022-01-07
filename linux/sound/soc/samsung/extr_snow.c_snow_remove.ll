; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_snow.c_snow_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_snow.c_snow_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snow_priv = type { i32, %struct.snd_soc_dai_link }
%struct.snd_soc_dai_link = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @snow_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snow_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snow_priv*, align 8
  %4 = alloca %struct.snd_soc_dai_link*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.snow_priv* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.snow_priv* %6, %struct.snow_priv** %3, align 8
  %7 = load %struct.snow_priv*, %struct.snow_priv** %3, align 8
  %8 = getelementptr inbounds %struct.snow_priv, %struct.snow_priv* %7, i32 0, i32 1
  store %struct.snd_soc_dai_link* %8, %struct.snd_soc_dai_link** %4, align 8
  %9 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @of_node_put(i32 %13)
  %15 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @of_node_put(i32 %19)
  %21 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %22 = call i32 @snd_soc_of_put_dai_link_codecs(%struct.snd_soc_dai_link* %21)
  %23 = load %struct.snow_priv*, %struct.snow_priv** %3, align 8
  %24 = getelementptr inbounds %struct.snow_priv, %struct.snow_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @clk_put(i32 %25)
  ret i32 0
}

declare dso_local %struct.snow_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @snd_soc_of_put_dai_link_codecs(%struct.snd_soc_dai_link*) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
