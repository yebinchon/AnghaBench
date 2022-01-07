; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_supported_adv_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_supported_adv_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32* }

@MGMT_ADV_FLAG_CONNECTABLE = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_DISCOV = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_LIMITED_DISCOV = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_MANAGED_FLAGS = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_APPEARANCE = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_LOCAL_NAME = common dso_local global i32 0, align 4
@HCI_TX_POWER_INVALID = common dso_local global i64 0, align 8
@MGMT_ADV_FLAG_TX_POWER = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_SEC_1M = common dso_local global i32 0, align 4
@HCI_LE_PHY_2M = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_SEC_2M = common dso_local global i32 0, align 4
@HCI_LE_PHY_CODED = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_SEC_CODED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @get_supported_adv_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_supported_adv_flags(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @MGMT_ADV_FLAG_CONNECTABLE, align 4
  %5 = load i32, i32* %3, align 4
  %6 = or i32 %5, %4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MGMT_ADV_FLAG_DISCOV, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @MGMT_ADV_FLAG_LIMITED_DISCOV, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @MGMT_ADV_FLAG_MANAGED_FLAGS, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @MGMT_ADV_FLAG_APPEARANCE, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @MGMT_ADV_FLAG_LOCAL_NAME, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HCI_TX_POWER_INVALID, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %29 = call i64 @ext_adv_capable(%struct.hci_dev* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %1
  %32 = load i32, i32* @MGMT_ADV_FLAG_TX_POWER, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %37 = call i64 @ext_adv_capable(%struct.hci_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = load i32, i32* @MGMT_ADV_FLAG_SEC_1M, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %44 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HCI_LE_PHY_2M, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load i32, i32* @MGMT_ADV_FLAG_SEC_2M, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %39
  %56 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HCI_LE_PHY_CODED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @MGMT_ADV_FLAG_SEC_CODED, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %55
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @ext_adv_capable(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
