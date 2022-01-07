; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_fsl_set_clock_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_fsl_set_clock_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsl_micfil = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"failed to set mclk[%lu] to rate %u\0A\00", align 1
@REG_MICFIL_CTRL2 = common dso_local global i32 0, align 4
@MICFIL_CTRL2_CICOSR_MASK = common dso_local global i32 0, align 4
@MICFIL_CTRL2_OSR_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to set CICOSR in reg 0x%X\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MICFIL_CTRL2_CLKDIV_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to set CLKDIV in reg 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @fsl_set_clock_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_set_clock_params(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_micfil*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.fsl_micfil* @dev_get_drvdata(%struct.device* %8)
  store %struct.fsl_micfil* %9, %struct.fsl_micfil** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.fsl_micfil*, %struct.fsl_micfil** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @fsl_micfil_set_mclk_rate(%struct.fsl_micfil* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.fsl_micfil*, %struct.fsl_micfil** %5, align 8
  %18 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_get_rate(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %15, %2
  %24 = load %struct.fsl_micfil*, %struct.fsl_micfil** %5, align 8
  %25 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @REG_MICFIL_CTRL2, align 4
  %28 = load i32, i32* @MICFIL_CTRL2_CICOSR_MASK, align 4
  %29 = load i32, i32* @MICFIL_CTRL2_OSR_DEFAULT, align 4
  %30 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = load i32, i32* @REG_MICFIL_CTRL2, align 4
  %38 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %23
  %40 = load %struct.fsl_micfil*, %struct.fsl_micfil** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @get_clk_div(%struct.fsl_micfil* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = load %struct.fsl_micfil*, %struct.fsl_micfil** %5, align 8
  %50 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @REG_MICFIL_CTRL2, align 4
  %53 = load i32, i32* @MICFIL_CTRL2_CLKDIV_MASK, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load %struct.device*, %struct.device** %3, align 8
  %62 = load i32, i32* @REG_MICFIL_CTRL2, align 4
  %63 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %48
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local %struct.fsl_micfil* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @fsl_micfil_set_mclk_rate(%struct.fsl_micfil*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @get_clk_div(%struct.fsl_micfil*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
