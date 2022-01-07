; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_fllhj_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_fllhj_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_fll = type { i64, %struct.madera* }
%struct.madera = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Disabling FLL\0A\00", align 1
@MADERA_FLL_CONTROL_11_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_LOCKDET_MASK = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_1_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_HOLD_MASK = common dso_local global i32 0, align 4
@MADERA_FLL1_ENA_MASK = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_2_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_CTRL_UPD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera_fll*)* @madera_fllhj_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_fllhj_disable(%struct.madera_fll* %0) #0 {
  %2 = alloca %struct.madera_fll*, align 8
  %3 = alloca %struct.madera*, align 8
  %4 = alloca i32, align 4
  store %struct.madera_fll* %0, %struct.madera_fll** %2, align 8
  %5 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %6 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %5, i32 0, i32 1
  %7 = load %struct.madera*, %struct.madera** %6, align 8
  store %struct.madera* %7, %struct.madera** %3, align 8
  %8 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %9 = call i32 @madera_fll_dbg(%struct.madera_fll* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.madera*, %struct.madera** %3, align 8
  %11 = getelementptr inbounds %struct.madera, %struct.madera* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %14 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MADERA_FLL_CONTROL_11_OFFS, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* @MADERA_FLL1_LOCKDET_MASK, align 4
  %19 = call i32 @regmap_update_bits(i32 %12, i64 %17, i32 %18, i32 0)
  %20 = load %struct.madera*, %struct.madera** %3, align 8
  %21 = getelementptr inbounds %struct.madera, %struct.madera* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %24 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MADERA_FLL_CONTROL_1_OFFS, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @MADERA_FLL1_HOLD_MASK, align 4
  %29 = load i32, i32* @MADERA_FLL1_HOLD_MASK, align 4
  %30 = call i32 @regmap_update_bits(i32 %22, i64 %27, i32 %28, i32 %29)
  %31 = load %struct.madera*, %struct.madera** %3, align 8
  %32 = getelementptr inbounds %struct.madera, %struct.madera* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %35 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MADERA_FLL_CONTROL_1_OFFS, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* @MADERA_FLL1_ENA_MASK, align 4
  %40 = call i32 @regmap_update_bits_check(i32 %33, i64 %38, i32 %39, i32 0, i32* %4)
  %41 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %42 = call i32 @madera_wait_for_fll(%struct.madera_fll* %41, i32 0)
  %43 = load %struct.madera*, %struct.madera** %3, align 8
  %44 = getelementptr inbounds %struct.madera, %struct.madera* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %47 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MADERA_FLL_CONTROL_2_OFFS, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* @MADERA_FLL1_CTRL_UPD_MASK, align 4
  %52 = call i32 @regmap_update_bits(i32 %45, i64 %50, i32 %51, i32 0)
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %1
  %56 = load %struct.madera*, %struct.madera** %3, align 8
  %57 = getelementptr inbounds %struct.madera, %struct.madera* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pm_runtime_put_autosuspend(i32 %58)
  br label %60

60:                                               ; preds = %55, %1
  ret i32 0
}

declare dso_local i32 @madera_fll_dbg(%struct.madera_fll*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_update_bits_check(i32, i64, i32, i32, i32*) #1

declare dso_local i32 @madera_wait_for_fll(%struct.madera_fll*, i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
