; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_get_adv_instance_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_get_adv_instance_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.adv_info = type { i32 }

@MGMT_ADV_FLAG_TX_POWER = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_MANAGED_FLAGS = common dso_local global i32 0, align 4
@HCI_ADVERTISING_CONNECTABLE = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_CONNECTABLE = common dso_local global i32 0, align 4
@HCI_LIMITED_DISCOVERABLE = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_LIMITED_DISCOV = common dso_local global i32 0, align 4
@HCI_DISCOVERABLE = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_DISCOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32)* @get_adv_instance_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_adv_instance_flags(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.adv_info*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = load i32, i32* @MGMT_ADV_FLAG_TX_POWER, align 4
  %12 = load i32, i32* @MGMT_ADV_FLAG_MANAGED_FLAGS, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = load i32, i32* @HCI_ADVERTISING_CONNECTABLE, align 4
  %16 = call i64 @hci_dev_test_flag(%struct.hci_dev* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i32, i32* @MGMT_ADV_FLAG_CONNECTABLE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %10
  %23 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %24 = load i32, i32* @HCI_LIMITED_DISCOVERABLE, align 4
  %25 = call i64 @hci_dev_test_flag(%struct.hci_dev* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @MGMT_ADV_FLAG_LIMITED_DISCOV, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %41

31:                                               ; preds = %22
  %32 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %33 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %34 = call i64 @hci_dev_test_flag(%struct.hci_dev* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @MGMT_ADV_FLAG_DISCOV, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %54

43:                                               ; preds = %2
  %44 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev* %44, i32 %45)
  store %struct.adv_info* %46, %struct.adv_info** %7, align 8
  %47 = load %struct.adv_info*, %struct.adv_info** %7, align 8
  %48 = icmp ne %struct.adv_info* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %54

50:                                               ; preds = %43
  %51 = load %struct.adv_info*, %struct.adv_info** %7, align 8
  %52 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %49, %41
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
