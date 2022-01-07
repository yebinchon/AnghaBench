; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_sdm845.c_sdm845_snd_platform_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_sdm845.c_sdm845_snd_platform_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_card = type { %struct.snd_soc_card* }
%struct.sdm845_snd_data = type { %struct.sdm845_snd_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdm845_snd_platform_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdm845_snd_platform_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.sdm845_snd_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.snd_soc_card* @dev_get_drvdata(i32* %6)
  store %struct.snd_soc_card* %7, %struct.snd_soc_card** %3, align 8
  %8 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %9 = call %struct.snd_soc_card* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %8)
  %10 = bitcast %struct.snd_soc_card* %9 to %struct.sdm845_snd_data*
  store %struct.sdm845_snd_data* %10, %struct.sdm845_snd_data** %4, align 8
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %12 = call i32 @snd_soc_unregister_card(%struct.snd_soc_card* %11)
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %14, align 8
  %16 = call i32 @kfree(%struct.snd_soc_card* %15)
  %17 = load %struct.sdm845_snd_data*, %struct.sdm845_snd_data** %4, align 8
  %18 = bitcast %struct.sdm845_snd_data* %17 to %struct.snd_soc_card*
  %19 = call i32 @kfree(%struct.snd_soc_card* %18)
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %21 = call i32 @kfree(%struct.snd_soc_card* %20)
  ret i32 0
}

declare dso_local %struct.snd_soc_card* @dev_get_drvdata(i32*) #1

declare dso_local %struct.snd_soc_card* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_unregister_card(%struct.snd_soc_card*) #1

declare dso_local i32 @kfree(%struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
