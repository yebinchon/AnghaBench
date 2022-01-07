; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_tristate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_tristate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32 }

@HDSPM_WR_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*, i32, i32)* @hdspm_set_tristate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspm_set_tristate(%struct.hdspm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hdspm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdspm* %0, %struct.hdspm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = mul nsw i32 %7, 3
  %9 = xor i32 %8, -1
  %10 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %11 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %18 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %22 = load i32, i32* @HDSPM_WR_SETTINGS, align 4
  %23 = load %struct.hdspm*, %struct.hdspm** %4, align 8
  %24 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @hdspm_write(%struct.hdspm* %21, i32 %22, i32 %25)
  ret i32 0
}

declare dso_local i32 @hdspm_write(%struct.hdspm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
