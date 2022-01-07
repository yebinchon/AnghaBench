; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_get_pdm_clk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_get_pdm_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_micfil = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@REG_MICFIL_CTRL2 = common dso_local global i32 0, align 4
@MICFIL_CTRL2_CICOSR_MASK = common dso_local global i32 0, align 4
@MICFIL_CTRL2_CICOSR_SHIFT = common dso_local global i32 0, align 4
@MICFIL_CTRL2_QSEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Please make sure you select a valid quality.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_micfil*, i32)* @get_pdm_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pdm_clk(%struct.fsl_micfil* %0, i32 %1) #0 {
  %3 = alloca %struct.fsl_micfil*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fsl_micfil* %0, %struct.fsl_micfil** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fsl_micfil*, %struct.fsl_micfil** %3, align 8
  %10 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @REG_MICFIL_CTRL2, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MICFIL_CTRL2_CICOSR_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @MICFIL_CTRL2_CICOSR_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = sub nsw i32 16, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.fsl_micfil*, %struct.fsl_micfil** %3, align 8
  %21 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @REG_MICFIL_CTRL2, align 4
  %24 = call i32 @regmap_read(i32 %22, i32 %23, i32* %5)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MICFIL_CTRL2_QSEL_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %52 [
    i32 133, label %29
    i32 131, label %35
    i32 130, label %35
    i32 132, label %41
    i32 129, label %41
    i32 128, label %47
  ]

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = mul i32 %30, 8
  %32 = load i32, i32* %7, align 4
  %33 = mul i32 %31, %32
  %34 = udiv i32 %33, 2
  store i32 %34, i32* %8, align 4
  br label %58

35:                                               ; preds = %2, %2
  %36 = load i32, i32* %4, align 4
  %37 = mul i32 %36, 4
  %38 = load i32, i32* %7, align 4
  %39 = mul i32 %37, %38
  %40 = mul i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %58

41:                                               ; preds = %2, %2
  %42 = load i32, i32* %4, align 4
  %43 = mul i32 %42, 2
  %44 = load i32, i32* %7, align 4
  %45 = mul i32 %43, %44
  %46 = mul i32 %45, 2
  store i32 %46, i32* %8, align 4
  br label %58

47:                                               ; preds = %2
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = mul i32 %48, %49
  %51 = mul i32 %50, 4
  store i32 %51, i32* %8, align 4
  br label %58

52:                                               ; preds = %2
  %53 = load %struct.fsl_micfil*, %struct.fsl_micfil** %3, align 8
  %54 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %58

58:                                               ; preds = %52, %47, %41, %35, %29
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
