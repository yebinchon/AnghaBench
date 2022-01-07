; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_disable_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_disable_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_fll = type { i32, %struct.madera* }
%struct.madera = type { i32, i32, i32 }

@CS47L35_FLL_SYNCHRONISER_OFFS = common dso_local global i32 0, align 4
@MADERA_FLL_SYNCHRONISER_OFFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Disabling FLL\0A\00", align 1
@MADERA_FLL_CONTROL_1_OFFS = common dso_local global i32 0, align 4
@MADERA_FLL1_FREERUN = common dso_local global i32 0, align 4
@MADERA_FLL1_ENA = common dso_local global i32 0, align 4
@MADERA_FLL_SYNCHRONISER_1_OFFS = common dso_local global i32 0, align 4
@MADERA_FLL1_SYNC_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.madera_fll*)* @madera_disable_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @madera_disable_fll(%struct.madera_fll* %0) #0 {
  %2 = alloca %struct.madera_fll*, align 8
  %3 = alloca %struct.madera*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.madera_fll* %0, %struct.madera_fll** %2, align 8
  %6 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %7 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %6, i32 0, i32 1
  %8 = load %struct.madera*, %struct.madera** %7, align 8
  store %struct.madera* %8, %struct.madera** %3, align 8
  %9 = load %struct.madera*, %struct.madera** %3, align 8
  %10 = getelementptr inbounds %struct.madera, %struct.madera* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %18 [
    i32 128, label %12
  ]

12:                                               ; preds = %1
  %13 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %14 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CS47L35_FLL_SYNCHRONISER_OFFS, align 4
  %17 = add i32 %15, %16
  store i32 %17, i32* %4, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %20 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MADERA_FLL_SYNCHRONISER_OFFS, align 4
  %23 = add i32 %21, %22
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %26 = call i32 @madera_fll_dbg(%struct.madera_fll* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.madera*, %struct.madera** %3, align 8
  %28 = getelementptr inbounds %struct.madera, %struct.madera* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %31 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MADERA_FLL_CONTROL_1_OFFS, align 4
  %34 = add i32 %32, %33
  %35 = load i32, i32* @MADERA_FLL1_FREERUN, align 4
  %36 = load i32, i32* @MADERA_FLL1_FREERUN, align 4
  %37 = call i32 @regmap_update_bits(i32 %29, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.madera*, %struct.madera** %3, align 8
  %39 = getelementptr inbounds %struct.madera, %struct.madera* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %42 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MADERA_FLL_CONTROL_1_OFFS, align 4
  %45 = add i32 %43, %44
  %46 = load i32, i32* @MADERA_FLL1_ENA, align 4
  %47 = call i32 @regmap_update_bits_check(i32 %40, i32 %45, i32 %46, i32 0, i32* %5)
  %48 = load %struct.madera*, %struct.madera** %3, align 8
  %49 = getelementptr inbounds %struct.madera, %struct.madera* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @MADERA_FLL_SYNCHRONISER_1_OFFS, align 4
  %53 = add i32 %51, %52
  %54 = load i32, i32* @MADERA_FLL1_SYNC_ENA, align 4
  %55 = call i32 @regmap_update_bits(i32 %50, i32 %53, i32 %54, i32 0)
  %56 = load %struct.madera*, %struct.madera** %3, align 8
  %57 = getelementptr inbounds %struct.madera, %struct.madera* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %60 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MADERA_FLL_CONTROL_1_OFFS, align 4
  %63 = add i32 %61, %62
  %64 = load i32, i32* @MADERA_FLL1_FREERUN, align 4
  %65 = call i32 @regmap_update_bits(i32 %58, i32 %63, i32 %64, i32 0)
  %66 = load %struct.madera_fll*, %struct.madera_fll** %2, align 8
  %67 = call i32 @madera_wait_for_fll(%struct.madera_fll* %66, i32 0)
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %24
  %71 = load %struct.madera*, %struct.madera** %3, align 8
  %72 = getelementptr inbounds %struct.madera, %struct.madera* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pm_runtime_put_autosuspend(i32 %73)
  br label %75

75:                                               ; preds = %70, %24
  ret void
}

declare dso_local i32 @madera_fll_dbg(%struct.madera_fll*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits_check(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @madera_wait_for_fll(%struct.madera_fll*, i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
