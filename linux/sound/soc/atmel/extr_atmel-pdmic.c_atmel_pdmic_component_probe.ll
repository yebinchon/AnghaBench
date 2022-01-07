; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pdmic.c_atmel_pdmic_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pdmic.c_atmel_pdmic_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_card = type { i32 }
%struct.atmel_pdmic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PDMIC_DSPR1 = common dso_local global i32 0, align 4
@PDMIC_DSPR1_OFFSET_MASK = common dso_local global i32 0, align 4
@PDMIC_DSPR1_OFFSET_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @atmel_pdmic_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pdmic_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.atmel_pdmic*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.snd_soc_card* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.snd_soc_card* %6, %struct.snd_soc_card** %3, align 8
  %7 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %8 = call %struct.atmel_pdmic* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %7)
  store %struct.atmel_pdmic* %8, %struct.atmel_pdmic** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %10 = load i32, i32* @PDMIC_DSPR1, align 4
  %11 = load i32, i32* @PDMIC_DSPR1_OFFSET_MASK, align 4
  %12 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %4, align 8
  %13 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PDMIC_DSPR1_OFFSET_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %9, i32 %10, i32 %11, i32 %18)
  ret i32 0
}

declare dso_local %struct.snd_soc_card* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.atmel_pdmic* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
