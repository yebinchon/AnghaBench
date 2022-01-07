; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_fll_phase_integrator.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_fll_phase_integrator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_fll = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.madera_fll_cfg = type { i64 }

@MADERA_FLL1_PHASE_ENA_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL1_PHASE_GAIN_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL_EFS_2_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_PHASE_ENA_MASK = common dso_local global i32 0, align 4
@MADERA_FLL1_PHASE_GAIN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera_fll*, %struct.madera_fll_cfg*, i32)* @madera_set_fll_phase_integrator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_set_fll_phase_integrator(%struct.madera_fll* %0, %struct.madera_fll_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.madera_fll*, align 8
  %5 = alloca %struct.madera_fll_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.madera_fll* %0, %struct.madera_fll** %4, align 8
  store %struct.madera_fll_cfg* %1, %struct.madera_fll_cfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  %12 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %5, align 8
  %13 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, i32* @MADERA_FLL1_PHASE_ENA_SHIFT, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* @MADERA_FLL1_PHASE_GAIN_SHIFT, align 4
  %20 = shl i32 2, %19
  %21 = or i32 %18, %20
  store i32 %21, i32* %7, align 4
  br label %25

22:                                               ; preds = %11, %3
  %23 = load i32, i32* @MADERA_FLL1_PHASE_GAIN_SHIFT, align 4
  %24 = shl i32 2, %23
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %27 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %32 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MADERA_FLL_EFS_2_OFFS, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* @MADERA_FLL1_PHASE_ENA_MASK, align 4
  %37 = load i32, i32* @MADERA_FLL1_PHASE_GAIN_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @regmap_update_bits_check(i32 %30, i64 %35, i32 %38, i32 %39, i32* %8)
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @regmap_update_bits_check(i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
