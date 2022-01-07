; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_micfil_err_isr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_micfil.c_micfil_err_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_micfil = type { i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@REG_MICFIL_STAT = common dso_local global i32 0, align 4
@MICFIL_STAT_BSY_FIL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"isr: Decimation Filter is running\0A\00", align 1
@MICFIL_STAT_FIR_RDY_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"isr: FIR Filter Data ready\0A\00", align 1
@MICFIL_STAT_LOWFREQF_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"isr: ipg_clk_app is too low\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @micfil_err_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micfil_err_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsl_micfil*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.fsl_micfil*
  store %struct.fsl_micfil* %9, %struct.fsl_micfil** %5, align 8
  %10 = load %struct.fsl_micfil*, %struct.fsl_micfil** %5, align 8
  %11 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %10, i32 0, i32 1
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  store %struct.platform_device* %12, %struct.platform_device** %6, align 8
  %13 = load %struct.fsl_micfil*, %struct.fsl_micfil** %5, align 8
  %14 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @REG_MICFIL_STAT, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %7)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MICFIL_STAT_BSY_FIL_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MICFIL_STAT_FIR_RDY_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MICFIL_STAT_LOWFREQF_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.fsl_micfil*, %struct.fsl_micfil** %5, align 8
  %45 = getelementptr inbounds %struct.fsl_micfil, %struct.fsl_micfil* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @REG_MICFIL_STAT, align 4
  %48 = load i32, i32* @MICFIL_STAT_LOWFREQF_MASK, align 4
  %49 = call i32 @regmap_write_bits(i32 %46, i32 %47, i32 %48, i32 1)
  br label %50

50:                                               ; preds = %40, %35
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %51
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
