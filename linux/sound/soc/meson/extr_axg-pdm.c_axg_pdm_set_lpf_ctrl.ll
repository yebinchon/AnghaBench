; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_set_lpf_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_set_lpf_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axg_pdm = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.axg_pdm_lpf* }
%struct.axg_pdm_lpf = type { i32, i32, i32 }

@PDM_F1_CTRL = common dso_local global i32 0, align 4
@PDM_LPF_STAGE_NUM_MASK = common dso_local global i32 0, align 4
@PDM_LPF_DSR_MASK = common dso_local global i32 0, align 4
@PDM_LPF_ROUND_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axg_pdm*, i32)* @axg_pdm_set_lpf_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axg_pdm_set_lpf_ctrl(%struct.axg_pdm* %0, i32 %1) #0 {
  %3 = alloca %struct.axg_pdm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.axg_pdm_lpf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.axg_pdm* %0, %struct.axg_pdm** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.axg_pdm*, %struct.axg_pdm** %3, align 8
  %9 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.axg_pdm_lpf*, %struct.axg_pdm_lpf** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.axg_pdm_lpf, %struct.axg_pdm_lpf* %14, i64 %16
  store %struct.axg_pdm_lpf* %17, %struct.axg_pdm_lpf** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.axg_pdm*, %struct.axg_pdm** %3, align 8
  %20 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @regmap_get_reg_stride(i32 %21)
  %23 = mul i32 %18, %22
  %24 = load i32, i32* @PDM_F1_CTRL, align 4
  %25 = add i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.axg_pdm_lpf*, %struct.axg_pdm_lpf** %5, align 8
  %27 = getelementptr inbounds %struct.axg_pdm_lpf, %struct.axg_pdm_lpf* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PDM_LPF_STAGE_NUM(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.axg_pdm_lpf*, %struct.axg_pdm_lpf** %5, align 8
  %31 = getelementptr inbounds %struct.axg_pdm_lpf, %struct.axg_pdm_lpf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PDM_LPF_DSR(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.axg_pdm_lpf*, %struct.axg_pdm_lpf** %5, align 8
  %37 = getelementptr inbounds %struct.axg_pdm_lpf, %struct.axg_pdm_lpf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PDM_LPF_ROUND_MODE(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.axg_pdm*, %struct.axg_pdm** %3, align 8
  %43 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PDM_LPF_STAGE_NUM_MASK, align 4
  %47 = load i32, i32* @PDM_LPF_DSR_MASK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PDM_LPF_ROUND_MODE_MASK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @regmap_get_reg_stride(i32) #1

declare dso_local i32 @PDM_LPF_STAGE_NUM(i32) #1

declare dso_local i32 @PDM_LPF_DSR(i32) #1

declare dso_local i32 @PDM_LPF_ROUND_MODE(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
