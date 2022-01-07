; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/imx/extr_imx8.c_imx8_run.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/imx/extr_imx8.c_imx8_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i64 }
%struct.imx8_priv = type { i32 }

@IMX_SC_R_DSP = common dso_local global i32 0, align 4
@IMX_SC_C_OFS_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error system address offset source select\0A\00", align 1
@IMX_SC_C_OFS_AUDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error system address offset of AUDIO\0A\00", align 1
@IMX_SC_C_OFS_PERIPH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Error system address offset of PERIPH %d\0A\00", align 1
@IMX_SC_C_OFS_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Error system address offset of IRQ\0A\00", align 1
@RESET_VECTOR_VADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*)* @imx8_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx8_run(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca %struct.imx8_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  %6 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %7 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.imx8_priv*
  store %struct.imx8_priv* %9, %struct.imx8_priv** %4, align 8
  %10 = load %struct.imx8_priv*, %struct.imx8_priv** %4, align 8
  %11 = getelementptr inbounds %struct.imx8_priv, %struct.imx8_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IMX_SC_R_DSP, align 4
  %14 = load i32, i32* @IMX_SC_C_OFS_SEL, align 4
  %15 = call i32 @imx_sc_misc_set_control(i32 %12, i32 %13, i32 %14, i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %20 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %77

24:                                               ; preds = %1
  %25 = load %struct.imx8_priv*, %struct.imx8_priv** %4, align 8
  %26 = getelementptr inbounds %struct.imx8_priv, %struct.imx8_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IMX_SC_R_DSP, align 4
  %29 = load i32, i32* @IMX_SC_C_OFS_AUDIO, align 4
  %30 = call i32 @imx_sc_misc_set_control(i32 %27, i32 %28, i32 %29, i32 128)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %35 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %77

39:                                               ; preds = %24
  %40 = load %struct.imx8_priv*, %struct.imx8_priv** %4, align 8
  %41 = getelementptr inbounds %struct.imx8_priv, %struct.imx8_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IMX_SC_R_DSP, align 4
  %44 = load i32, i32* @IMX_SC_C_OFS_PERIPH, align 4
  %45 = call i32 @imx_sc_misc_set_control(i32 %42, i32 %43, i32 %44, i32 90)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %50 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %77

55:                                               ; preds = %39
  %56 = load %struct.imx8_priv*, %struct.imx8_priv** %4, align 8
  %57 = getelementptr inbounds %struct.imx8_priv, %struct.imx8_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IMX_SC_R_DSP, align 4
  %60 = load i32, i32* @IMX_SC_C_OFS_IRQ, align 4
  %61 = call i32 @imx_sc_misc_set_control(i32 %58, i32 %59, i32 %60, i32 81)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %66 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, ...) @dev_err(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %77

70:                                               ; preds = %55
  %71 = load %struct.imx8_priv*, %struct.imx8_priv** %4, align 8
  %72 = getelementptr inbounds %struct.imx8_priv, %struct.imx8_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IMX_SC_R_DSP, align 4
  %75 = load i32, i32* @RESET_VECTOR_VADDR, align 4
  %76 = call i32 @imx_sc_pm_cpu_start(i32 %73, i32 %74, i32 1, i32 %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %70, %64, %48, %33, %18
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @imx_sc_misc_set_control(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @imx_sc_pm_cpu_start(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
