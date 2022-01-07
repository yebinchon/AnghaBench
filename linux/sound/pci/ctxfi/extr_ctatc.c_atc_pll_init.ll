; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pll_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32, %struct.hw* }
%struct.hw = type { i32 (%struct.hw*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, i32)* @atc_pll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_pll_init(%struct.ct_atc* %0, i32 %1) #0 {
  %3 = alloca %struct.ct_atc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw*, align 8
  %6 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %8 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %7, i32 0, i32 1
  %9 = load %struct.hw*, %struct.hw** %8, align 8
  store %struct.hw* %9, %struct.hw** %5, align 8
  %10 = load %struct.hw*, %struct.hw** %5, align 8
  %11 = getelementptr inbounds %struct.hw, %struct.hw* %10, i32 0, i32 0
  %12 = load i32 (%struct.hw*, i32)*, i32 (%struct.hw*, i32)** %11, align 8
  %13 = load %struct.hw*, %struct.hw** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 %12(%struct.hw* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 0, %18 ], [ %20, %19 ]
  %23 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %24 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
