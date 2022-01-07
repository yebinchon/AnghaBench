; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_free_spk_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_free_spk_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32 }

@ARIZONA_IRQ_SPK_OVERHEAT_WARN = common dso_local global i32 0, align 4
@ARIZONA_IRQ_SPK_OVERHEAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_free_spk_irqs(%struct.arizona* %0) #0 {
  %2 = alloca %struct.arizona*, align 8
  store %struct.arizona* %0, %struct.arizona** %2, align 8
  %3 = load %struct.arizona*, %struct.arizona** %2, align 8
  %4 = load i32, i32* @ARIZONA_IRQ_SPK_OVERHEAT_WARN, align 4
  %5 = load %struct.arizona*, %struct.arizona** %2, align 8
  %6 = call i32 @arizona_free_irq(%struct.arizona* %3, i32 %4, %struct.arizona* %5)
  %7 = load %struct.arizona*, %struct.arizona** %2, align 8
  %8 = load i32, i32* @ARIZONA_IRQ_SPK_OVERHEAT, align 4
  %9 = load %struct.arizona*, %struct.arizona** %2, align 8
  %10 = call i32 @arizona_free_irq(%struct.arizona* %7, i32 %8, %struct.arizona* %9)
  ret i32 0
}

declare dso_local i32 @arizona_free_irq(%struct.arizona*, i32, %struct.arizona*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
