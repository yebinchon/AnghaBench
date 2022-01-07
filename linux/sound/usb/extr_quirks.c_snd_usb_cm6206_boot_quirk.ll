; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_cm6206_boot_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_cm6206_boot_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@CM6206_REG0_SPDIFO_RATE_48K = common dso_local global i32 0, align 4
@CM6206_REG0_SPDIFO_COPYRIGHT_NA = common dso_local global i32 0, align 4
@CM6206_REG1_PLLBIN_EN = common dso_local global i32 0, align 4
@CM6206_REG1_SOFT_MUTE_EN = common dso_local global i32 0, align 4
@CM6206_REG2_DRIVER_ON = common dso_local global i32 0, align 4
@CM6206_REG2_HEADP_SEL_FRONT_CHANNELS = common dso_local global i32 0, align 4
@CM6206_REG2_MUTE_HEADPHONE_RIGHT = common dso_local global i32 0, align 4
@CM6206_REG2_MUTE_HEADPHONE_LEFT = common dso_local global i32 0, align 4
@CM6206_REG3_FLYSPEED_DEFAULT = common dso_local global i32 0, align 4
@CM6206_REG3_VRAP25EN = common dso_local global i32 0, align 4
@CM6206_REG3_FOE = common dso_local global i32 0, align 4
@CM6206_REG3_ROE = common dso_local global i32 0, align 4
@CM6206_REG3_CBOE = common dso_local global i32 0, align 4
@CM6206_REG3_LOSE = common dso_local global i32 0, align 4
@CM6206_REG3_HPOE = common dso_local global i32 0, align 4
@CM6206_REG3_SPDIFI_CANREC = common dso_local global i32 0, align 4
@CM6206_REG5_DA_RSTN = common dso_local global i32 0, align 4
@CM6206_REG5_AD_RSTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @snd_usb_cm6206_boot_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_cm6206_boot_quirk(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [6 x i32], align 16
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %8 = load i32, i32* @CM6206_REG0_SPDIFO_RATE_48K, align 4
  %9 = load i32, i32* @CM6206_REG0_SPDIFO_COPYRIGHT_NA, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds i32, i32* %7, i64 1
  %12 = load i32, i32* @CM6206_REG1_PLLBIN_EN, align 4
  %13 = load i32, i32* @CM6206_REG1_SOFT_MUTE_EN, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds i32, i32* %11, i64 1
  %16 = load i32, i32* @CM6206_REG2_DRIVER_ON, align 4
  %17 = load i32, i32* @CM6206_REG2_HEADP_SEL_FRONT_CHANNELS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CM6206_REG2_MUTE_HEADPHONE_RIGHT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CM6206_REG2_MUTE_HEADPHONE_LEFT, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %15, align 4
  %23 = getelementptr inbounds i32, i32* %15, i64 1
  %24 = load i32, i32* @CM6206_REG3_FLYSPEED_DEFAULT, align 4
  %25 = load i32, i32* @CM6206_REG3_VRAP25EN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CM6206_REG3_FOE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CM6206_REG3_ROE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CM6206_REG3_CBOE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CM6206_REG3_LOSE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CM6206_REG3_HPOE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CM6206_REG3_SPDIFI_CANREC, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %23, align 4
  %39 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* @CM6206_REG5_DA_RSTN, align 4
  %42 = load i32, i32* @CM6206_REG5_AD_RSTN, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %40, align 4
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %62, %1
  %45 = load i32, i32* %5, align 4
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @snd_usb_cm106_write_int_reg(%struct.usb_device* %50, i32 %51, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %67

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %44

65:                                               ; preds = %44
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %59
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_usb_cm106_write_int_reg(%struct.usb_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
