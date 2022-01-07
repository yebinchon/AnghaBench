; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wcd9335_codec = type { i32, i32 }

@WCD9335_IRQ_SLIMBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wcd9335_codec_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcd9335_codec_remove(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wcd9335_codec*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.wcd9335_codec* @dev_get_drvdata(i32 %6)
  store %struct.wcd9335_codec* %7, %struct.wcd9335_codec** %3, align 8
  %8 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %9 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @wcd_clsh_ctrl_free(i32 %10)
  %12 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %13 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WCD9335_IRQ_SLIMBUS, align 4
  %16 = call i32 @regmap_irq_get_virq(i32 %14, i32 %15)
  %17 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.wcd9335_codec* %17)
  ret void
}

declare dso_local %struct.wcd9335_codec* @dev_get_drvdata(i32) #1

declare dso_local i32 @wcd_clsh_ctrl_free(i32) #1

declare dso_local i32 @free_irq(i32, %struct.wcd9335_codec*) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
