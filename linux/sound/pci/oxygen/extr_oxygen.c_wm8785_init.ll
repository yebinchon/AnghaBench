; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen.c_wm8785_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen.c_wm8785_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, %struct.generic_data* }
%struct.generic_data = type { i32* }

@WM8785_MCR_SLAVE = common dso_local global i32 0, align 4
@WM8785_OSR_SINGLE = common dso_local global i32 0, align 4
@WM8785_FORMAT_LJUST = common dso_local global i32 0, align 4
@WM8785_HPFR = common dso_local global i32 0, align 4
@WM8785_HPFL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"WM8785\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @wm8785_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8785_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.generic_data*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 1
  %6 = load %struct.generic_data*, %struct.generic_data** %5, align 8
  store %struct.generic_data* %6, %struct.generic_data** %3, align 8
  %7 = load i32, i32* @WM8785_MCR_SLAVE, align 4
  %8 = load i32, i32* @WM8785_OSR_SINGLE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @WM8785_FORMAT_LJUST, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.generic_data*, %struct.generic_data** %3, align 8
  %13 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* @WM8785_HPFR, align 4
  %17 = load i32, i32* @WM8785_HPFL, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.generic_data*, %struct.generic_data** %3, align 8
  %20 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %18, i32* %22, align 4
  %23 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %24 = call i32 @wm8785_registers_init(%struct.oxygen* %23)
  %25 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %26 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snd_component_add(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wm8785_registers_init(%struct.oxygen*) #1

declare dso_local i32 @snd_component_add(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
