; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_filters_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_filters_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@PDM_FILTER_EN = common dso_local global i32 0, align 4
@PDM_HCIC_CTRL1 = common dso_local global i32 0, align 4
@PDM_F1_CTRL = common dso_local global i32 0, align 4
@PDM_F2_CTRL = common dso_local global i32 0, align 4
@PDM_F3_CTRL = common dso_local global i32 0, align 4
@PDM_HPF_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regmap*, i32)* @axg_pdm_filters_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axg_pdm_filters_enable(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @PDM_FILTER_EN, align 4
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 0, %10 ]
  store i32 %12, i32* %5, align 4
  %13 = load %struct.regmap*, %struct.regmap** %3, align 8
  %14 = load i32, i32* @PDM_HCIC_CTRL1, align 4
  %15 = load i32, i32* @PDM_FILTER_EN, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @regmap_update_bits(%struct.regmap* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.regmap*, %struct.regmap** %3, align 8
  %19 = load i32, i32* @PDM_F1_CTRL, align 4
  %20 = load i32, i32* @PDM_FILTER_EN, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @regmap_update_bits(%struct.regmap* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.regmap*, %struct.regmap** %3, align 8
  %24 = load i32, i32* @PDM_F2_CTRL, align 4
  %25 = load i32, i32* @PDM_FILTER_EN, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @regmap_update_bits(%struct.regmap* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.regmap*, %struct.regmap** %3, align 8
  %29 = load i32, i32* @PDM_F3_CTRL, align 4
  %30 = load i32, i32* @PDM_FILTER_EN, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @regmap_update_bits(%struct.regmap* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.regmap*, %struct.regmap** %3, align 8
  %34 = load i32, i32* @PDM_HPF_CTRL, align 4
  %35 = load i32, i32* @PDM_FILTER_EN, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @regmap_update_bits(%struct.regmap* %33, i32 %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
