; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_mclk_clkdiv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_mclk_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8810 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"Make mclk div configuration fail because of invalid system clock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@nau8810_mclk_scaler = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"master clock prescaler %x for fs %d\0A\00", align 1
@NAU8810_REG_CLOCK = common dso_local global i32 0, align 4
@NAU8810_MCLKSEL_MASK = common dso_local global i32 0, align 4
@NAU8810_MCLKSEL_SFT = common dso_local global i32 0, align 4
@NAU8810_CLKM_MASK = common dso_local global i32 0, align 4
@NAU8810_CLKM_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nau8810*, i32)* @nau8810_mclk_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8810_mclk_clkdiv(%struct.nau8810* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nau8810*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nau8810* %0, %struct.nau8810** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 %10, 256
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.nau8810*, %struct.nau8810** %4, align 8
  %13 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.nau8810*, %struct.nau8810** %4, align 8
  %18 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %72

23:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** @nau8810_mclk_scaler, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load %struct.nau8810*, %struct.nau8810** %4, align 8
  %31 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 10
  %34 = load i32*, i32** @nau8810_mclk_scaler, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %33, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %49

44:                                               ; preds = %29
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %24

49:                                               ; preds = %43, %24
  %50 = load %struct.nau8810*, %struct.nau8810** %4, align 8
  %51 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load %struct.nau8810*, %struct.nau8810** %4, align 8
  %57 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NAU8810_REG_CLOCK, align 4
  %60 = load i32, i32* @NAU8810_MCLKSEL_MASK, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @NAU8810_MCLKSEL_SFT, align 4
  %63 = shl i32 %61, %62
  %64 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %60, i32 %63)
  %65 = load %struct.nau8810*, %struct.nau8810** %4, align 8
  %66 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NAU8810_REG_CLOCK, align 4
  %69 = load i32, i32* @NAU8810_CLKM_MASK, align 4
  %70 = load i32, i32* @NAU8810_CLKM_MCLK, align 4
  %71 = call i32 @regmap_update_bits(i32 %67, i32 %68, i32 %69, i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %49, %16
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
