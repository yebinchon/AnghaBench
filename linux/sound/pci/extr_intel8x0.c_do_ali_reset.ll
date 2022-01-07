; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_do_ali_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_do_ali_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0 = type { i32 }

@ALI_SCR = common dso_local global i32 0, align 4
@ICH_ALI_SC_RESET = common dso_local global i32 0, align 4
@ALI_FIFOCR1 = common dso_local global i32 0, align 4
@ALI_FIFOCR2 = common dso_local global i32 0, align 4
@ALI_FIFOCR3 = common dso_local global i32 0, align 4
@ALI_INTERFACECR = common dso_local global i32 0, align 4
@ICH_ALI_IF_PI = common dso_local global i32 0, align 4
@ICH_ALI_IF_PO = common dso_local global i32 0, align 4
@ALI_INTERRUPTCR = common dso_local global i32 0, align 4
@ALI_INTERRUPTSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel8x0*)* @do_ali_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ali_reset(%struct.intel8x0* %0) #0 {
  %2 = alloca %struct.intel8x0*, align 8
  store %struct.intel8x0* %0, %struct.intel8x0** %2, align 8
  %3 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %4 = load i32, i32* @ALI_SCR, align 4
  %5 = call i32 @ICHREG(i32 %4)
  %6 = load i32, i32* @ICH_ALI_SC_RESET, align 4
  %7 = call i32 @iputdword(%struct.intel8x0* %3, i32 %5, i32 %6)
  %8 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %9 = load i32, i32* @ALI_FIFOCR1, align 4
  %10 = call i32 @ICHREG(i32 %9)
  %11 = call i32 @iputdword(%struct.intel8x0* %8, i32 %10, i32 -2088533117)
  %12 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %13 = load i32, i32* @ALI_FIFOCR2, align 4
  %14 = call i32 @ICHREG(i32 %13)
  %15 = call i32 @iputdword(%struct.intel8x0* %12, i32 %14, i32 -2088533117)
  %16 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %17 = load i32, i32* @ALI_FIFOCR3, align 4
  %18 = call i32 @ICHREG(i32 %17)
  %19 = call i32 @iputdword(%struct.intel8x0* %16, i32 %18, i32 -2088533117)
  %20 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %21 = load i32, i32* @ALI_INTERFACECR, align 4
  %22 = call i32 @ICHREG(i32 %21)
  %23 = load i32, i32* @ICH_ALI_IF_PI, align 4
  %24 = load i32, i32* @ICH_ALI_IF_PO, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @iputdword(%struct.intel8x0* %20, i32 %22, i32 %25)
  %27 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %28 = load i32, i32* @ALI_INTERRUPTCR, align 4
  %29 = call i32 @ICHREG(i32 %28)
  %30 = call i32 @iputdword(%struct.intel8x0* %27, i32 %29, i32 0)
  %31 = load %struct.intel8x0*, %struct.intel8x0** %2, align 8
  %32 = load i32, i32* @ALI_INTERRUPTSR, align 4
  %33 = call i32 @ICHREG(i32 %32)
  %34 = call i32 @iputdword(%struct.intel8x0* %31, i32 %33, i32 0)
  ret void
}

declare dso_local i32 @iputdword(%struct.intel8x0*, i32, i32) #1

declare dso_local i32 @ICHREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
