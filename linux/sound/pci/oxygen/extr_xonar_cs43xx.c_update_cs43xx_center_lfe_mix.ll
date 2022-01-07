; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_cs43xx.c_update_cs43xx_center_lfe_mix.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_cs43xx.c_update_cs43xx_center_lfe_mix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_cs43xx* }
%struct.xonar_cs43xx = type { i32* }

@CS4362A_ATAPI_MASK = common dso_local global i32 0, align 4
@CS4362A_ATAPI_B_LR = common dso_local global i32 0, align 4
@CS4362A_ATAPI_A_LR = common dso_local global i32 0, align 4
@CS4362A_ATAPI_B_R = common dso_local global i32 0, align 4
@CS4362A_ATAPI_A_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, i32)* @update_cs43xx_center_lfe_mix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cs43xx_center_lfe_mix(%struct.oxygen* %0, i32 %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xonar_cs43xx*, align 8
  %6 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %8 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %7, i32 0, i32 0
  %9 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %8, align 8
  store %struct.xonar_cs43xx* %9, %struct.xonar_cs43xx** %5, align 8
  %10 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %5, align 8
  %11 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 9
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CS4362A_ATAPI_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @CS4362A_ATAPI_B_LR, align 4
  %22 = load i32, i32* @CS4362A_ATAPI_A_LR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @CS4362A_ATAPI_B_R, align 4
  %28 = load i32, i32* @CS4362A_ATAPI_A_L, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @cs4362a_write_cached(%struct.oxygen* %33, i32 9, i32 %34)
  ret void
}

declare dso_local i32 @cs4362a_write_cached(%struct.oxygen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
