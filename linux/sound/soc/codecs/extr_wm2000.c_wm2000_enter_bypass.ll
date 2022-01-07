; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_enter_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_enter_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.wm2000_priv = type { i64 }

@ANC_ACTIVE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WM2000_REG_SYS_MODE_CNTRL = common dso_local global i32 0, align 4
@WM2000_MODE_ANA_SEQ_INCLUDE = common dso_local global i32 0, align 4
@WM2000_MODE_THERMAL_ENABLE = common dso_local global i32 0, align 4
@WM2000_MODE_BYPASS_ENTRY = common dso_local global i32 0, align 4
@WM2000_REG_SYS_STATUS = common dso_local global i32 0, align 4
@WM2000_STATUS_ANC_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Timeout waiting for ANC disable\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@WM2000_REG_ANC_STAT = common dso_local global i32 0, align 4
@WM2000_ANC_ENG_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Timeout waiting for ANC engine idle\0A\00", align 1
@WM2000_REG_SYS_CTL1 = common dso_local global i32 0, align 4
@WM2000_SYS_STBY = common dso_local global i32 0, align 4
@WM2000_REG_SYS_CTL2 = common dso_local global i32 0, align 4
@WM2000_RAM_CLR = common dso_local global i32 0, align 4
@ANC_BYPASS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"bypass enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @wm2000_enter_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2000_enter_bypass(%struct.i2c_client* %0, i32 %1) #0 {
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
  br label %79

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* @WM2000_REG_SYS_MODE_CNTRL, align 4
  %27 = load i32, i32* @WM2000_MODE_ANA_SEQ_INCLUDE, align 4
  %28 = load i32, i32* @WM2000_MODE_THERMAL_ENABLE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @WM2000_MODE_BYPASS_ENTRY, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @wm2000_write(%struct.i2c_client* %25, i32 %26, i32 %31)
  br label %40

33:                                               ; preds = %21
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* @WM2000_REG_SYS_MODE_CNTRL, align 4
  %36 = load i32, i32* @WM2000_MODE_THERMAL_ENABLE, align 4
  %37 = load i32, i32* @WM2000_MODE_BYPASS_ENTRY, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @wm2000_write(%struct.i2c_client* %34, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %33, %24
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* @WM2000_REG_SYS_STATUS, align 4
  %43 = load i32, i32* @WM2000_STATUS_ANC_DISABLED, align 4
  %44 = call i32 @wm2000_poll_bit(%struct.i2c_client* %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %79

52:                                               ; preds = %40
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load i32, i32* @WM2000_REG_ANC_STAT, align 4
  %55 = load i32, i32* @WM2000_ANC_ENG_IDLE, align 4
  %56 = call i32 @wm2000_poll_bit(%struct.i2c_client* %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %79

64:                                               ; preds = %52
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load i32, i32* @WM2000_REG_SYS_CTL1, align 4
  %67 = load i32, i32* @WM2000_SYS_STBY, align 4
  %68 = call i32 @wm2000_write(%struct.i2c_client* %65, i32 %66, i32 %67)
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = load i32, i32* @WM2000_REG_SYS_CTL2, align 4
  %71 = load i32, i32* @WM2000_RAM_CLR, align 4
  %72 = call i32 @wm2000_write(%struct.i2c_client* %69, i32 %70, i32 %71)
  %73 = load i64, i64* @ANC_BYPASS, align 8
  %74 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %75 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = call i32 @dev_dbg(i32* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %64, %58, %46, %18
  %80 = load i32, i32* %3, align 4
  ret i32 %80
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
