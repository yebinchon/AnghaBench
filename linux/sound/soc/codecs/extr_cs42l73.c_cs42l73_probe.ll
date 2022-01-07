; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l73.c_cs42l73_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l73.c_cs42l73_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs42l73_private = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CS42L73_CPFCHC = common dso_local global i32 0, align 4
@CS42L73_CHARGEPUMP_MASK = common dso_local global i32 0, align 4
@CS42L73_CLKID_MCLK1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs42l73_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l73_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.cs42l73_private*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.cs42l73_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.cs42l73_private* %5, %struct.cs42l73_private** %3, align 8
  %6 = load %struct.cs42l73_private*, %struct.cs42l73_private** %3, align 8
  %7 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %13 = load i32, i32* @CS42L73_CPFCHC, align 4
  %14 = load i32, i32* @CS42L73_CHARGEPUMP_MASK, align 4
  %15 = load %struct.cs42l73_private*, %struct.cs42l73_private** %3, align 8
  %16 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 4
  %20 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %12, i32 %13, i32 %14, i32 %19)
  br label %21

21:                                               ; preds = %11, %1
  %22 = load i32, i32* @CS42L73_CLKID_MCLK1, align 4
  %23 = load %struct.cs42l73_private*, %struct.cs42l73_private** %3, align 8
  %24 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.cs42l73_private*, %struct.cs42l73_private** %3, align 8
  %26 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  ret i32 0
}

declare dso_local %struct.cs42l73_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
