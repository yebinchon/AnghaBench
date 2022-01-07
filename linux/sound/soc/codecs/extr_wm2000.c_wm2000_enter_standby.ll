; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_enter_standby.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_enter_standby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.wm2000_priv = type { i64 }

@ANC_ACTIVE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WM2000_REG_ANA_VMID_PD_TIME = common dso_local global i32 0, align 4
@WM2000_REG_SYS_MODE_CNTRL = common dso_local global i32 0, align 4
@WM2000_MODE_ANA_SEQ_INCLUDE = common dso_local global i32 0, align 4
@WM2000_MODE_THERMAL_ENABLE = common dso_local global i32 0, align 4
@WM2000_MODE_STANDBY_ENTRY = common dso_local global i32 0, align 4
@WM2000_REG_SYS_STATUS = common dso_local global i32 0, align 4
@WM2000_STATUS_ANC_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Timed out waiting for ANC disable after 1ms\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@WM2000_REG_ANC_STAT = common dso_local global i32 0, align 4
@WM2000_ANC_ENG_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Timed out waiting for standby\0A\00", align 1
@WM2000_REG_SYS_CTL1 = common dso_local global i32 0, align 4
@WM2000_SYS_STBY = common dso_local global i32 0, align 4
@WM2000_REG_SYS_CTL2 = common dso_local global i32 0, align 4
@WM2000_RAM_CLR = common dso_local global i32 0, align 4
@ANC_STANDBY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"standby\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Analogue disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @wm2000_enter_standby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2000_enter_standby(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm2000_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = call %struct.wm2000_priv* @dev_get_drvdata(i32* %8)
  store %struct.wm2000_priv* %9, %struct.wm2000_priv** %6, align 8
  %10 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %11 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ANC_ACTIVE, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %89

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* @WM2000_REG_ANA_VMID_PD_TIME, align 4
  %27 = call i32 @wm2000_write(%struct.i2c_client* %25, i32 %26, i32 62)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load i32, i32* @WM2000_REG_SYS_MODE_CNTRL, align 4
  %30 = load i32, i32* @WM2000_MODE_ANA_SEQ_INCLUDE, align 4
  %31 = load i32, i32* @WM2000_MODE_THERMAL_ENABLE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @WM2000_MODE_STANDBY_ENTRY, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @wm2000_write(%struct.i2c_client* %28, i32 %29, i32 %34)
  br label %43

36:                                               ; preds = %21
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @WM2000_REG_SYS_MODE_CNTRL, align 4
  %39 = load i32, i32* @WM2000_MODE_THERMAL_ENABLE, align 4
  %40 = load i32, i32* @WM2000_MODE_STANDBY_ENTRY, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @wm2000_write(%struct.i2c_client* %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %24
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load i32, i32* @WM2000_REG_SYS_STATUS, align 4
  %46 = load i32, i32* @WM2000_STATUS_ANC_DISABLED, align 4
  %47 = call i32 @wm2000_poll_bit(%struct.i2c_client* %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %89

55:                                               ; preds = %43
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = load i32, i32* @WM2000_REG_ANC_STAT, align 4
  %58 = load i32, i32* @WM2000_ANC_ENG_IDLE, align 4
  %59 = call i32 @wm2000_poll_bit(%struct.i2c_client* %56, i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %89

67:                                               ; preds = %55
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load i32, i32* @WM2000_REG_SYS_CTL1, align 4
  %70 = load i32, i32* @WM2000_SYS_STBY, align 4
  %71 = call i32 @wm2000_write(%struct.i2c_client* %68, i32 %69, i32 %70)
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = load i32, i32* @WM2000_REG_SYS_CTL2, align 4
  %74 = load i32, i32* @WM2000_RAM_CLR, align 4
  %75 = call i32 @wm2000_write(%struct.i2c_client* %72, i32 %73, i32 %74)
  %76 = load i64, i64* @ANC_STANDBY, align 8
  %77 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %78 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = call i32 @dev_dbg(i32* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %67
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = call i32 @dev_dbg(i32* %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %84, %67
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %61, %49, %18
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.wm2000_priv* @dev_get_drvdata(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wm2000_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @wm2000_poll_bit(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
