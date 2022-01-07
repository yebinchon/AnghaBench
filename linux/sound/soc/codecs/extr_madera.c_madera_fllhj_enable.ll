; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_fllhj_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_fllhj_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_fll = type { i32, i64, i32, %struct.madera* }
%struct.madera = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Enabling FLL, initially %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@MADERA_FLL_CONTROL_1_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_HOLD_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to set FLL: %d\0A\00", align 1
@CS47L92_FLL1_REFCLK_SRC_MASK = common dso_local global i32 0, align 4
@CS47L92_FLL1_REFCLK_SRC_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL1_ENA_MASK = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_11_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_LOCKDET_MASK = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_2_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_CTRL_UPD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera_fll*)* @madera_fllhj_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_fllhj_enable(%struct.madera_fll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.madera_fll*, align 8
  %4 = alloca %struct.madera*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.madera_fll* %0, %struct.madera_fll** %3, align 8
  %7 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %8 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %7, i32 0, i32 3
  %9 = load %struct.madera*, %struct.madera** %8, align 8
  store %struct.madera* %9, %struct.madera** %4, align 8
  %10 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %11 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %12 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @madera_is_enabled_fll(%struct.madera_fll* %10, i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %124

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.madera*, %struct.madera** %4, align 8
  %24 = getelementptr inbounds %struct.madera, %struct.madera* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pm_runtime_get_sync(i32 %25)
  br label %27

27:                                               ; preds = %22, %19
  %28 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @madera_fll_dbg(%struct.madera_fll* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %35 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %34, i32 0, i32 3
  %36 = load %struct.madera*, %struct.madera** %35, align 8
  %37 = getelementptr inbounds %struct.madera, %struct.madera* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %40 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MADERA_FLL_CONTROL_1_OFFS, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* @MADERA_FLL1_HOLD_MASK, align 4
  %45 = load i32, i32* @MADERA_FLL1_HOLD_MASK, align 4
  %46 = call i32 @regmap_update_bits(i32 %38, i64 %43, i32 %44, i32 %45)
  %47 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %48 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %49 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @madera_fllhj_apply(%struct.madera_fll* %47, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %27
  %55 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @madera_fll_err(%struct.madera_fll* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %85

58:                                               ; preds = %27
  %59 = load %struct.madera*, %struct.madera** %4, align 8
  %60 = getelementptr inbounds %struct.madera, %struct.madera* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %63 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MADERA_FLL_CONTROL_1_OFFS, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i32, i32* @CS47L92_FLL1_REFCLK_SRC_MASK, align 4
  %68 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %69 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CS47L92_FLL1_REFCLK_SRC_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = call i32 @regmap_update_bits(i32 %61, i64 %66, i32 %67, i32 %72)
  %74 = load %struct.madera*, %struct.madera** %4, align 8
  %75 = getelementptr inbounds %struct.madera, %struct.madera* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %78 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MADERA_FLL_CONTROL_1_OFFS, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i32, i32* @MADERA_FLL1_ENA_MASK, align 4
  %83 = load i32, i32* @MADERA_FLL1_ENA_MASK, align 4
  %84 = call i32 @regmap_update_bits(i32 %76, i64 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %58, %54
  %86 = load %struct.madera*, %struct.madera** %4, align 8
  %87 = getelementptr inbounds %struct.madera, %struct.madera* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %90 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MADERA_FLL_CONTROL_11_OFFS, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i32, i32* @MADERA_FLL1_LOCKDET_MASK, align 4
  %95 = load i32, i32* @MADERA_FLL1_LOCKDET_MASK, align 4
  %96 = call i32 @regmap_update_bits(i32 %88, i64 %93, i32 %94, i32 %95)
  %97 = load %struct.madera*, %struct.madera** %4, align 8
  %98 = getelementptr inbounds %struct.madera, %struct.madera* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %101 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MADERA_FLL_CONTROL_2_OFFS, align 8
  %104 = add nsw i64 %102, %103
  %105 = load i32, i32* @MADERA_FLL1_CTRL_UPD_MASK, align 4
  %106 = load i32, i32* @MADERA_FLL1_CTRL_UPD_MASK, align 4
  %107 = call i32 @regmap_update_bits(i32 %99, i64 %104, i32 %105, i32 %106)
  %108 = load %struct.madera*, %struct.madera** %4, align 8
  %109 = getelementptr inbounds %struct.madera, %struct.madera* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %112 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MADERA_FLL_CONTROL_1_OFFS, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i32, i32* @MADERA_FLL1_HOLD_MASK, align 4
  %117 = call i32 @regmap_update_bits(i32 %110, i64 %115, i32 %116, i32 0)
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %85
  %121 = load %struct.madera_fll*, %struct.madera_fll** %3, align 8
  %122 = call i32 @madera_wait_for_fll(%struct.madera_fll* %121, i32 1)
  br label %123

123:                                              ; preds = %120, %85
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %123, %17
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @madera_is_enabled_fll(%struct.madera_fll*, i64) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @madera_fll_dbg(%struct.madera_fll*, i8*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @madera_fllhj_apply(%struct.madera_fll*, i32) #1

declare dso_local i32 @madera_fll_err(%struct.madera_fll*, i8*, i32) #1

declare dso_local i32 @madera_wait_for_fll(%struct.madera_fll*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
