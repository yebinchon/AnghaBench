; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_free_overheat.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_free_overheat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_priv = type { %struct.madera* }
%struct.madera = type { i32 }

@MADERA_IRQ_SPK_OVERHEAT_WARN = common dso_local global i32 0, align 4
@MADERA_IRQ_SPK_OVERHEAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_free_overheat(%struct.madera_priv* %0) #0 {
  %2 = alloca %struct.madera_priv*, align 8
  %3 = alloca %struct.madera*, align 8
  store %struct.madera_priv* %0, %struct.madera_priv** %2, align 8
  %4 = load %struct.madera_priv*, %struct.madera_priv** %2, align 8
  %5 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %4, i32 0, i32 0
  %6 = load %struct.madera*, %struct.madera** %5, align 8
  store %struct.madera* %6, %struct.madera** %3, align 8
  %7 = load %struct.madera*, %struct.madera** %3, align 8
  %8 = load i32, i32* @MADERA_IRQ_SPK_OVERHEAT_WARN, align 4
  %9 = load %struct.madera*, %struct.madera** %3, align 8
  %10 = call i32 @madera_free_irq(%struct.madera* %7, i32 %8, %struct.madera* %9)
  %11 = load %struct.madera*, %struct.madera** %3, align 8
  %12 = load i32, i32* @MADERA_IRQ_SPK_OVERHEAT, align 4
  %13 = load %struct.madera*, %struct.madera** %3, align 8
  %14 = call i32 @madera_free_irq(%struct.madera* %11, i32 %12, %struct.madera* %13)
  ret i32 0
}

declare dso_local i32 @madera_free_irq(%struct.madera*, i32, %struct.madera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
