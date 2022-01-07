; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_config_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_config_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8824 = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@NAU8824_REG_CLK_DIVIDER = common dso_local global i32 0, align 4
@NAU8824_CLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8824_CLK_SRC_MCLK = common dso_local global i32 0, align 4
@NAU8824_REG_FLL6 = common dso_local global i32 0, align 4
@NAU8824_DCO_EN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@NAU8824_CLK_SRC_VCO = common dso_local global i32 0, align 4
@NAU8824_REG_FLL3 = common dso_local global i32 0, align 4
@NAU8824_FLL_CLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8824_FLL_CLK_SRC_MCLK = common dso_local global i32 0, align 4
@NAU8824_FLL_CLK_SRC_BLK = common dso_local global i32 0, align 4
@NAU8824_FLL_CLK_SRC_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid clock id (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nau8824*, i32, i32)* @nau8824_config_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8824_config_sysclk(%struct.nau8824* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nau8824*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap*, align 8
  store %struct.nau8824* %0, %struct.nau8824** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %10 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %9, i32 0, i32 1
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %82 [
    i32 133, label %13
    i32 128, label %23
    i32 129, label %38
    i32 130, label %49
    i32 132, label %60
    i32 131, label %71
  ]

13:                                               ; preds = %3
  %14 = load %struct.regmap*, %struct.regmap** %8, align 8
  %15 = load i32, i32* @NAU8824_REG_CLK_DIVIDER, align 4
  %16 = load i32, i32* @NAU8824_CLK_SRC_MASK, align 4
  %17 = load i32, i32* @NAU8824_CLK_SRC_MCLK, align 4
  %18 = call i32 @regmap_update_bits(%struct.regmap* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.regmap*, %struct.regmap** %8, align 8
  %20 = load i32, i32* @NAU8824_REG_FLL6, align 4
  %21 = load i32, i32* @NAU8824_DCO_EN, align 4
  %22 = call i32 @regmap_update_bits(%struct.regmap* %19, i32 %20, i32 %21, i32 0)
  br label %90

23:                                               ; preds = %3
  %24 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %25 = load i32, i32* @HZ, align 4
  %26 = call i32 @nau8824_sema_acquire(%struct.nau8824* %24, i32 %25)
  %27 = load %struct.regmap*, %struct.regmap** %8, align 8
  %28 = load i32, i32* @NAU8824_REG_CLK_DIVIDER, align 4
  %29 = load i32, i32* @NAU8824_CLK_SRC_MASK, align 4
  %30 = load i32, i32* @NAU8824_CLK_SRC_MCLK, align 4
  %31 = call i32 @regmap_update_bits(%struct.regmap* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.regmap*, %struct.regmap** %8, align 8
  %33 = load i32, i32* @NAU8824_REG_FLL6, align 4
  %34 = load i32, i32* @NAU8824_DCO_EN, align 4
  %35 = call i32 @regmap_update_bits(%struct.regmap* %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %37 = call i32 @nau8824_sema_release(%struct.nau8824* %36)
  br label %90

38:                                               ; preds = %3
  %39 = load %struct.regmap*, %struct.regmap** %8, align 8
  %40 = load i32, i32* @NAU8824_REG_FLL6, align 4
  %41 = load i32, i32* @NAU8824_DCO_EN, align 4
  %42 = load i32, i32* @NAU8824_DCO_EN, align 4
  %43 = call i32 @regmap_update_bits(%struct.regmap* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.regmap*, %struct.regmap** %8, align 8
  %45 = load i32, i32* @NAU8824_REG_CLK_DIVIDER, align 4
  %46 = load i32, i32* @NAU8824_CLK_SRC_MASK, align 4
  %47 = load i32, i32* @NAU8824_CLK_SRC_VCO, align 4
  %48 = call i32 @regmap_update_bits(%struct.regmap* %44, i32 %45, i32 %46, i32 %47)
  br label %90

49:                                               ; preds = %3
  %50 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %51 = load i32, i32* @HZ, align 4
  %52 = call i32 @nau8824_sema_acquire(%struct.nau8824* %50, i32 %51)
  %53 = load %struct.regmap*, %struct.regmap** %8, align 8
  %54 = load i32, i32* @NAU8824_REG_FLL3, align 4
  %55 = load i32, i32* @NAU8824_FLL_CLK_SRC_MASK, align 4
  %56 = load i32, i32* @NAU8824_FLL_CLK_SRC_MCLK, align 4
  %57 = call i32 @regmap_update_bits(%struct.regmap* %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %59 = call i32 @nau8824_sema_release(%struct.nau8824* %58)
  br label %90

60:                                               ; preds = %3
  %61 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %62 = load i32, i32* @HZ, align 4
  %63 = call i32 @nau8824_sema_acquire(%struct.nau8824* %61, i32 %62)
  %64 = load %struct.regmap*, %struct.regmap** %8, align 8
  %65 = load i32, i32* @NAU8824_REG_FLL3, align 4
  %66 = load i32, i32* @NAU8824_FLL_CLK_SRC_MASK, align 4
  %67 = load i32, i32* @NAU8824_FLL_CLK_SRC_BLK, align 4
  %68 = call i32 @regmap_update_bits(%struct.regmap* %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %70 = call i32 @nau8824_sema_release(%struct.nau8824* %69)
  br label %90

71:                                               ; preds = %3
  %72 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %73 = load i32, i32* @HZ, align 4
  %74 = call i32 @nau8824_sema_acquire(%struct.nau8824* %72, i32 %73)
  %75 = load %struct.regmap*, %struct.regmap** %8, align 8
  %76 = load i32, i32* @NAU8824_REG_FLL3, align 4
  %77 = load i32, i32* @NAU8824_FLL_CLK_SRC_MASK, align 4
  %78 = load i32, i32* @NAU8824_FLL_CLK_SRC_FS, align 4
  %79 = call i32 @regmap_update_bits(%struct.regmap* %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %81 = call i32 @nau8824_sema_release(%struct.nau8824* %80)
  br label %90

82:                                               ; preds = %3
  %83 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %84 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %97

90:                                               ; preds = %71, %60, %49, %38, %23, %13
  %91 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %92 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @dev_dbg(i32 %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95)
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %90, %82
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @nau8824_sema_acquire(%struct.nau8824*, i32) #1

declare dso_local i32 @nau8824_sema_release(%struct.nau8824*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
