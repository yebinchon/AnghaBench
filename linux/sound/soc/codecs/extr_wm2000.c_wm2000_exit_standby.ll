; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_exit_standby.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_exit_standby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.wm2000_priv = type { i64 }

@ANC_STANDBY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WM2000_REG_SYS_CTL1 = common dso_local global i32 0, align 4
@WM2000_REG_ANA_VMID_PU_TIME = common dso_local global i32 0, align 4
@WM2000_REG_SYS_MODE_CNTRL = common dso_local global i32 0, align 4
@WM2000_MODE_ANA_SEQ_INCLUDE = common dso_local global i32 0, align 4
@WM2000_MODE_THERMAL_ENABLE = common dso_local global i32 0, align 4
@WM2000_MODE_MOUSE_ENABLE = common dso_local global i32 0, align 4
@WM2000_REG_SYS_CTL2 = common dso_local global i32 0, align 4
@WM2000_RAM_SET = common dso_local global i32 0, align 4
@WM2000_ANC_INT_N_CLR = common dso_local global i32 0, align 4
@WM2000_REG_SYS_STATUS = common dso_local global i32 0, align 4
@WM2000_STATUS_MOUSE_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Timed out waiting for MOUSE\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ANC_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"MOUSE active\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Analogue enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @wm2000_exit_standby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2000_exit_standby(%struct.i2c_client* %0, i32 %1) #0 {
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
  %13 = load i64, i64* @ANC_STANDBY, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %80

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load i32, i32* @WM2000_REG_SYS_CTL1, align 4
  %24 = call i32 @wm2000_write(%struct.i2c_client* %22, i32 %23, i32 0)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load i32, i32* @WM2000_REG_ANA_VMID_PU_TIME, align 4
  %30 = call i32 @wm2000_write(%struct.i2c_client* %28, i32 %29, i32 62)
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load i32, i32* @WM2000_REG_SYS_MODE_CNTRL, align 4
  %33 = load i32, i32* @WM2000_MODE_ANA_SEQ_INCLUDE, align 4
  %34 = load i32, i32* @WM2000_MODE_THERMAL_ENABLE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @WM2000_MODE_MOUSE_ENABLE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @wm2000_write(%struct.i2c_client* %31, i32 %32, i32 %37)
  br label %46

39:                                               ; preds = %21
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32, i32* @WM2000_REG_SYS_MODE_CNTRL, align 4
  %42 = load i32, i32* @WM2000_MODE_THERMAL_ENABLE, align 4
  %43 = load i32, i32* @WM2000_MODE_MOUSE_ENABLE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @wm2000_write(%struct.i2c_client* %40, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %39, %27
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load i32, i32* @WM2000_REG_SYS_CTL2, align 4
  %49 = load i32, i32* @WM2000_RAM_SET, align 4
  %50 = call i32 @wm2000_write(%struct.i2c_client* %47, i32 %48, i32 %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load i32, i32* @WM2000_REG_SYS_CTL2, align 4
  %53 = load i32, i32* @WM2000_ANC_INT_N_CLR, align 4
  %54 = call i32 @wm2000_write(%struct.i2c_client* %51, i32 %52, i32 %53)
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = load i32, i32* @WM2000_REG_SYS_STATUS, align 4
  %57 = load i32, i32* @WM2000_STATUS_MOUSE_ACTIVE, align 4
  %58 = call i32 @wm2000_poll_bit(%struct.i2c_client* %55, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %46
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %80

66:                                               ; preds = %46
  %67 = load i64, i64* @ANC_ACTIVE, align 8
  %68 = load %struct.wm2000_priv*, %struct.wm2000_priv** %6, align 8
  %69 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = call i32 @dev_dbg(i32* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = call i32 @dev_dbg(i32* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %66
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %60, %18
  %81 = load i32, i32* %3, align 4
  ret i32 %81
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
