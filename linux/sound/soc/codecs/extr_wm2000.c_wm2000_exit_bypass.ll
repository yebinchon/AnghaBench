; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_exit_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_exit_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.wm2000_priv = type { i64 }

@ANC_BYPASS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WM2000_REG_SYS_CTL1 = common dso_local global i32 0, align 4
@WM2000_REG_SYS_MODE_CNTRL = common dso_local global i32 0, align 4
@WM2000_MODE_ANA_SEQ_INCLUDE = common dso_local global i32 0, align 4
@WM2000_MODE_MOUSE_ENABLE = common dso_local global i32 0, align 4
@WM2000_MODE_THERMAL_ENABLE = common dso_local global i32 0, align 4
@WM2000_REG_SYS_CTL2 = common dso_local global i32 0, align 4
@WM2000_RAM_SET = common dso_local global i32 0, align 4
@WM2000_ANC_INT_N_CLR = common dso_local global i32 0, align 4
@WM2000_REG_SYS_STATUS = common dso_local global i32 0, align 4
@WM2000_STATUS_MOUSE_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Timed out waiting for MOUSE\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ANC_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"MOUSE active\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @wm2000_exit_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2000_exit_bypass(%struct.i2c_client* %0, i32 %1) #0 {
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
  %13 = load i64, i64* @ANC_BYPASS, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %70

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load i32, i32* @WM2000_REG_SYS_CTL1, align 4
  %24 = call i32 @wm2000_write(%struct.i2c_client* %22, i32 %23, i32 0)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load i32, i32* @WM2000_REG_SYS_MODE_CNTRL, align 4
  %30 = load i32, i32* @WM2000_MODE_ANA_SEQ_INCLUDE, align 4
  %31 = load i32, i32* @WM2000_MODE_MOUSE_ENABLE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @WM2000_MODE_THERMAL_ENABLE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @wm2000_write(%struct.i2c_client* %28, i32 %29, i32 %34)
  br label %43

36:                                               ; preds = %21
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @WM2000_REG_SYS_MODE_CNTRL, align 4
  %39 = load i32, i32* @WM2000_MODE_MOUSE_ENABLE, align 4
  %40 = load i32, i32* @WM2000_MODE_THERMAL_ENABLE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @wm2000_write(%struct.i2c_client* %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %27
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load i32, i32* @WM2000_REG_SYS_CTL2, align 4
  %46 = load i32, i32* @WM2000_RAM_SET, align 4
  %47 = call i32 @wm2000_write(%struct.i2c_client* %44, i32 %45, i32 %46)
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load i32, i32* @WM2000_REG_SYS_CTL2, align 4
  %50 = load i32, i32* @WM2000_ANC_INT_N_CLR, align 4
  %51 = call i32 @wm2000_write(%struct.i2c_client* %48, i32 %49, i32 %50)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = load i32, i32* @WM2000_REG_SYS_STATUS, align 4
  %54 = load i32, i32* @WM2000_STATUS_MOUSE_ACTIVE, align 4
  %55 = call i32 @wm2000_poll_bit(%struct.i2c_client* %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %43
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %70

63:                                               ; preds = %43
  %64 = load i64, i64* @ANC_ACTIVE, align 8
  %65 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %66 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = call i32 @dev_dbg(i32* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %63, %57, %18
  %71 = load i32, i32* %3, align 4
  ret i32 %71
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
