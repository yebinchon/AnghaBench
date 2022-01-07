; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.wm2000_priv = type { i32, i32 }

@WM2000_REG_ANA_VMID_PD_TIME = common dso_local global i32 0, align 4
@WM2000_REG_SYS_MODE_CNTRL = common dso_local global i32 0, align 4
@WM2000_MODE_ANA_SEQ_INCLUDE = common dso_local global i32 0, align 4
@WM2000_MODE_POWER_DOWN = common dso_local global i32 0, align 4
@WM2000_REG_SYS_STATUS = common dso_local global i32 0, align 4
@WM2000_STATUS_POWER_DOWN_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Timeout waiting for ANC power down\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@WM2000_REG_ANC_STAT = common dso_local global i32 0, align 4
@WM2000_ANC_ENG_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Timeout waiting for ANC engine idle\0A\00", align 1
@WM2000_NUM_SUPPLIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"powered off\0A\00", align 1
@ANC_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @wm2000_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2000_power_down(%struct.i2c_client* %0, i32 %1) #0 {
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
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = load i32, i32* @WM2000_REG_ANA_VMID_PD_TIME, align 4
  %15 = call i32 @wm2000_write(%struct.i2c_client* %13, i32 %14, i32 62)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load i32, i32* @WM2000_REG_SYS_MODE_CNTRL, align 4
  %18 = load i32, i32* @WM2000_MODE_ANA_SEQ_INCLUDE, align 4
  %19 = load i32, i32* @WM2000_MODE_POWER_DOWN, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @wm2000_write(%struct.i2c_client* %16, i32 %17, i32 %20)
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @WM2000_REG_SYS_MODE_CNTRL, align 4
  %25 = load i32, i32* @WM2000_MODE_POWER_DOWN, align 4
  %26 = call i32 @wm2000_write(%struct.i2c_client* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %12
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load i32, i32* @WM2000_REG_SYS_STATUS, align 4
  %30 = load i32, i32* @WM2000_STATUS_POWER_DOWN_COMPLETE, align 4
  %31 = call i32 @wm2000_poll_bit(%struct.i2c_client* %28, i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %63

39:                                               ; preds = %27
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32, i32* @WM2000_REG_ANC_STAT, align 4
  %42 = load i32, i32* @WM2000_ANC_ENG_IDLE, align 4
  %43 = call i32 @wm2000_poll_bit(%struct.i2c_client* %40, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %63

51:                                               ; preds = %39
  %52 = load i32, i32* @WM2000_NUM_SUPPLIES, align 4
  %53 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %54 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @regulator_bulk_disable(i32 %52, i32 %55)
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i32 @dev_dbg(i32* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @ANC_OFF, align 4
  %61 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %62 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %51, %45, %33
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.wm2000_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @wm2000_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @wm2000_poll_bit(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
