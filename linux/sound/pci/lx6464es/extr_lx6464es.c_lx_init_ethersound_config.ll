; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_init_ethersound_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_init_ethersound_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@eReg_CONFES = common dso_local global i32 0, align 4
@CONFES_READ_PART_MASK = common dso_local global i32 0, align 4
@IOCR_INPUTS_OFFSET = common dso_local global i32 0, align 4
@IOCR_OUTPUTS_OFFSET = common dso_local global i32 0, align 4
@FREQ_RATIO_SINGLE_MODE = common dso_local global i32 0, align 4
@FREQ_RATIO_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"->lx_init_ethersound\0A\00", align 1
@eReg_CSES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ethersound initialized after %dms\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"ethersound could not be initialized after %dms\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"ethersound initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*)* @lx_init_ethersound_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_init_ethersound_config(%struct.lx6464es* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %3, align 8
  %7 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %8 = load i32, i32* @eReg_CONFES, align 4
  %9 = call i32 @lx_dsp_reg_read(%struct.lx6464es* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @CONFES_READ_PART_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @IOCR_INPUTS_OFFSET, align 4
  %14 = shl i32 64, %13
  %15 = or i32 %12, %14
  %16 = load i32, i32* @IOCR_OUTPUTS_OFFSET, align 4
  %17 = shl i32 64, %16
  %18 = or i32 %15, %17
  %19 = load i32, i32* @FREQ_RATIO_SINGLE_MODE, align 4
  %20 = load i32, i32* @FREQ_RATIO_OFFSET, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %24 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dev_dbg(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @FREQ_RATIO_SINGLE_MODE, align 4
  %30 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %31 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %33 = load i32, i32* @eReg_CONFES, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @lx_dsp_reg_write(%struct.lx6464es* %32, i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %55, %1
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 1000
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %41 = load i32, i32* @eReg_CSES, align 4
  %42 = call i32 @lx_dsp_reg_read(%struct.lx6464es* %40, i32 %41)
  %43 = and i32 %42, 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %47 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %68

53:                                               ; preds = %39
  %54 = call i32 @msleep(i32 1)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %36

58:                                               ; preds = %36
  %59 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %60 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @dev_warn(i32 %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ETIMEDOUT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %75

68:                                               ; preds = %45
  %69 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %70 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @dev_dbg(i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %68, %58
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @lx_dsp_reg_read(%struct.lx6464es*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @lx_dsp_reg_write(%struct.lx6464es*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
