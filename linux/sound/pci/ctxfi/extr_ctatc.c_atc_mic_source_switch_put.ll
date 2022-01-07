; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_mic_source_switch_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_mic_source_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { %struct.hw* }
%struct.hw = type { i32 (%struct.hw*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, i32)* @atc_mic_source_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_mic_source_switch_put(%struct.ct_atc* %0, i32 %1) #0 {
  %3 = alloca %struct.ct_atc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw*, align 8
  store %struct.ct_atc* %0, %struct.ct_atc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %7 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %6, i32 0, i32 0
  %8 = load %struct.hw*, %struct.hw** %7, align 8
  store %struct.hw* %8, %struct.hw** %5, align 8
  %9 = load %struct.hw*, %struct.hw** %5, align 8
  %10 = getelementptr inbounds %struct.hw, %struct.hw* %9, i32 0, i32 0
  %11 = load i32 (%struct.hw*, i32)*, i32 (%struct.hw*, i32)** %10, align 8
  %12 = load %struct.hw*, %struct.hw** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 %11(%struct.hw* %12, i32 %13)
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
