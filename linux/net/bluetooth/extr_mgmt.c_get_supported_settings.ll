; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_supported_settings.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_supported_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i64, i32 }

@MGMT_SETTING_POWERED = common dso_local global i32 0, align 4
@MGMT_SETTING_BONDABLE = common dso_local global i32 0, align 4
@MGMT_SETTING_DEBUG_KEYS = common dso_local global i32 0, align 4
@MGMT_SETTING_CONNECTABLE = common dso_local global i32 0, align 4
@MGMT_SETTING_DISCOVERABLE = common dso_local global i32 0, align 4
@BLUETOOTH_VER_1_2 = common dso_local global i64 0, align 8
@MGMT_SETTING_FAST_CONNECTABLE = common dso_local global i32 0, align 4
@MGMT_SETTING_BREDR = common dso_local global i32 0, align 4
@MGMT_SETTING_LINK_SECURITY = common dso_local global i32 0, align 4
@MGMT_SETTING_SSP = common dso_local global i32 0, align 4
@MGMT_SETTING_HS = common dso_local global i32 0, align 4
@MGMT_SETTING_SECURE_CONN = common dso_local global i32 0, align 4
@MGMT_SETTING_LE = common dso_local global i32 0, align 4
@MGMT_SETTING_ADVERTISING = common dso_local global i32 0, align 4
@MGMT_SETTING_PRIVACY = common dso_local global i32 0, align 4
@MGMT_SETTING_STATIC_ADDRESS = common dso_local global i32 0, align 4
@HCI_QUIRK_EXTERNAL_CONFIG = common dso_local global i32 0, align 4
@MGMT_SETTING_CONFIGURATION = common dso_local global i32 0, align 4
@MGMT_SETTING_PHY_CONFIGURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @get_supported_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_supported_settings(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @MGMT_SETTING_POWERED, align 4
  %5 = load i32, i32* %3, align 4
  %6 = or i32 %5, %4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MGMT_SETTING_BONDABLE, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @MGMT_SETTING_DEBUG_KEYS, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @MGMT_SETTING_CONNECTABLE, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @MGMT_SETTING_DISCOVERABLE, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %20 = call i64 @lmp_bredr_capable(%struct.hci_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %1
  %23 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BLUETOOTH_VER_1_2, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @MGMT_SETTING_FAST_CONNECTABLE, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* @MGMT_SETTING_BREDR, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @MGMT_SETTING_LINK_SECURITY, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %40 = call i64 @lmp_ssp_capable(%struct.hci_dev* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load i32, i32* @MGMT_SETTING_SSP, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @MGMT_SETTING_HS, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %32
  %50 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %51 = call i64 @lmp_sc_capable(%struct.hci_dev* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @MGMT_SETTING_SECURE_CONN, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %1
  %59 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %60 = call i64 @lmp_le_capable(%struct.hci_dev* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i32, i32* @MGMT_SETTING_LE, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @MGMT_SETTING_ADVERTISING, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* @MGMT_SETTING_SECURE_CONN, align 4
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @MGMT_SETTING_PRIVACY, align 4
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* @MGMT_SETTING_STATIC_ADDRESS, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %62, %58
  %79 = load i32, i32* @HCI_QUIRK_EXTERNAL_CONFIG, align 4
  %80 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %81 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %80, i32 0, i32 2
  %82 = call i64 @test_bit(i32 %79, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %86 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84, %78
  %90 = load i32, i32* @MGMT_SETTING_CONFIGURATION, align 4
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* @MGMT_SETTING_PHY_CONFIGURATION, align 4
  %95 = load i32, i32* %3, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @lmp_bredr_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_ssp_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_sc_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
