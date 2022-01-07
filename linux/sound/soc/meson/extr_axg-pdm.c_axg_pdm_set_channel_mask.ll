; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_set_channel_mask.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_set_channel_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axg_pdm = type { i32 }

@PDM_CTRL = common dso_local global i32 0, align 4
@PDM_CTRL_CHAN_RSTN_MASK = common dso_local global i32 0, align 4
@PDM_CTRL_CHAN_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axg_pdm*, i32)* @axg_pdm_set_channel_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axg_pdm_set_channel_mask(%struct.axg_pdm* %0, i32 %1) #0 {
  %3 = alloca %struct.axg_pdm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.axg_pdm* %0, %struct.axg_pdm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sub i32 %6, 1
  %8 = call i32 @GENMASK(i32 %7, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.axg_pdm*, %struct.axg_pdm** %3, align 8
  %10 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PDM_CTRL, align 4
  %13 = load i32, i32* @PDM_CTRL_CHAN_RSTN_MASK, align 4
  %14 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %13, i32 0)
  %15 = load %struct.axg_pdm*, %struct.axg_pdm** %3, align 8
  %16 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PDM_CTRL, align 4
  %19 = load i32, i32* @PDM_CTRL_CHAN_RSTN_MASK, align 4
  %20 = load i32, i32* @PDM_CTRL_CHAN_EN_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @PDM_CTRL_CHAN_RSTN(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @PDM_CTRL_CHAN_EN(i32 %24)
  %26 = or i32 %23, %25
  %27 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %21, i32 %26)
  ret void
}

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @PDM_CTRL_CHAN_RSTN(i32) #1

declare dso_local i32 @PDM_CTRL_CHAN_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
