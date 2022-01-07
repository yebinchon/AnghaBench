; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axg_pdm = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@PDM_CHAN_CTRL_POINTER_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axg_pdm*, i32, i32)* @axg_pdm_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_pdm_set_sysclk(%struct.axg_pdm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.axg_pdm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.axg_pdm* %0, %struct.axg_pdm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = mul i32 %9, 2
  %11 = load i32, i32* %7, align 4
  %12 = mul i32 %10, %11
  %13 = load i32, i32* @PDM_CHAN_CTRL_POINTER_MAX, align 4
  %14 = mul i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.axg_pdm*, %struct.axg_pdm** %5, align 8
  %17 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ult i32 %15, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.axg_pdm*, %struct.axg_pdm** %5, align 8
  %24 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @clk_set_rate(i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %38

28:                                               ; preds = %3
  %29 = load %struct.axg_pdm*, %struct.axg_pdm** %5, align 8
  %30 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.axg_pdm*, %struct.axg_pdm** %5, align 8
  %33 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_set_rate(i32 %31, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %28, %22
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
