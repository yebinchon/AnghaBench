; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_lola_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_lola_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PLAY = common dso_local global i64 0, align 8
@BAR1 = common dso_local global i32 0, align 4
@DOINTCTL = common dso_local global i32 0, align 4
@CAPT = common dso_local global i64 0, align 8
@DIINTCTL = common dso_local global i32 0, align 4
@LOLA_DINT_GLOBAL = common dso_local global i32 0, align 4
@LOLA_DINT_CTRL = common dso_local global i32 0, align 4
@LOLA_DINT_FIFOERR = common dso_local global i32 0, align 4
@LOLA_DINT_MUERR = common dso_local global i32 0, align 4
@DINTCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lola*)* @lola_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lola_irq_enable(%struct.lola* %0) #0 {
  %2 = alloca %struct.lola*, align 8
  %3 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %2, align 8
  %4 = load %struct.lola*, %struct.lola** %2, align 8
  %5 = getelementptr inbounds %struct.lola, %struct.lola* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = load i64, i64* @PLAY, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 1, %10
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  %13 = load %struct.lola*, %struct.lola** %2, align 8
  %14 = load i32, i32* @BAR1, align 4
  %15 = load i32, i32* @DOINTCTL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @lola_writel(%struct.lola* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.lola*, %struct.lola** %2, align 8
  %19 = getelementptr inbounds %struct.lola, %struct.lola* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* @CAPT, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = load %struct.lola*, %struct.lola** %2, align 8
  %28 = load i32, i32* @BAR1, align 4
  %29 = load i32, i32* @DIINTCTL, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @lola_writel(%struct.lola* %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @LOLA_DINT_GLOBAL, align 4
  %33 = load i32, i32* @LOLA_DINT_CTRL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @LOLA_DINT_FIFOERR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @LOLA_DINT_MUERR, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %3, align 4
  %39 = load %struct.lola*, %struct.lola** %2, align 8
  %40 = load i32, i32* @BAR1, align 4
  %41 = load i32, i32* @DINTCTL, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @lola_writel(%struct.lola* %39, i32 %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @lola_writel(%struct.lola*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
