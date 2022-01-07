; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_fsl_esai_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_esai = type { i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@REG_ESAI_ECR = common dso_local global i32 0, align 4
@ESAI_ECR_ESAIEN_MASK = common dso_local global i32 0, align 4
@ESAI_ECR_ERST_MASK = common dso_local global i32 0, align 4
@ESAI_ECR_ESAIEN = common dso_local global i32 0, align 4
@ESAI_ECR_ERST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to reset ESAI: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to enable ESAI: %d\0A\00", align 1
@REG_ESAI_PRRC = common dso_local global i32 0, align 4
@ESAI_PRRC_PDC_MASK = common dso_local global i32 0, align 4
@REG_ESAI_PCRC = common dso_local global i32 0, align 4
@ESAI_PCRC_PC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_esai*)* @fsl_esai_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_esai_hw_init(%struct.fsl_esai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_esai*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  store %struct.fsl_esai* %0, %struct.fsl_esai** %3, align 8
  %6 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %7 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %6, i32 0, i32 1
  %8 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  store %struct.platform_device* %8, %struct.platform_device** %4, align 8
  %9 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %10 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @REG_ESAI_ECR, align 4
  %13 = load i32, i32* @ESAI_ECR_ESAIEN_MASK, align 4
  %14 = load i32, i32* @ESAI_ECR_ERST_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @ESAI_ECR_ESAIEN, align 4
  %17 = load i32, i32* @ESAI_ECR_ERST, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %15, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %59

28:                                               ; preds = %1
  %29 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %30 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @REG_ESAI_ECR, align 4
  %33 = load i32, i32* @ESAI_ECR_ESAIEN_MASK, align 4
  %34 = load i32, i32* @ESAI_ECR_ERST_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ESAI_ECR_ESAIEN, align 4
  %37 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %59

46:                                               ; preds = %28
  %47 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %48 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @REG_ESAI_PRRC, align 4
  %51 = load i32, i32* @ESAI_PRRC_PDC_MASK, align 4
  %52 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %51, i32 0)
  %53 = load %struct.fsl_esai*, %struct.fsl_esai** %3, align 8
  %54 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @REG_ESAI_PCRC, align 4
  %57 = load i32, i32* @ESAI_PCRC_PC_MASK, align 4
  %58 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %57, i32 0)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %46, %40, %22
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
