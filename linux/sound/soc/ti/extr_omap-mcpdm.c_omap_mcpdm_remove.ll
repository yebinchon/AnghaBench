; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.omap_mcpdm = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @omap_mcpdm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcpdm_remove(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.omap_mcpdm*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %4 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %5 = call %struct.omap_mcpdm* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %4)
  store %struct.omap_mcpdm* %5, %struct.omap_mcpdm** %3, align 8
  %6 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %7 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %10 = bitcast %struct.omap_mcpdm* %9 to i8*
  %11 = call i32 @free_irq(i32 %8, i8* %10)
  %12 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %13 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pm_runtime_disable(i32 %14)
  %16 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %17 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %16, i32 0, i32 0
  %18 = call i64 @pm_qos_request_active(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %3, align 8
  %22 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %21, i32 0, i32 0
  %23 = call i32 @pm_qos_remove_request(i32* %22)
  br label %24

24:                                               ; preds = %20, %1
  ret i32 0
}

declare dso_local %struct.omap_mcpdm* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i64 @pm_qos_request_active(i32*) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
