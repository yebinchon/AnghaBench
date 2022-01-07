; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_tlv_data_max_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_tlv_data_max_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }

@HCI_MAX_AD_LENGTH = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_DISCOV = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_LIMITED_DISCOV = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_MANAGED_FLAGS = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_TX_POWER = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_LOCAL_NAME = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_APPEARANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32, i32)* @tlv_data_max_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlv_data_max_len(%struct.hci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @HCI_MAX_AD_LENGTH, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MGMT_ADV_FLAG_DISCOV, align 4
  %14 = load i32, i32* @MGMT_ADV_FLAG_LIMITED_DISCOV, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MGMT_ADV_FLAG_MANAGED_FLAGS, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %12, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 3
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %11
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MGMT_ADV_FLAG_TX_POWER, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 3
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %23
  br label %53

32:                                               ; preds = %3
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MGMT_ADV_FLAG_LOCAL_NAME, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %39 = call i64 @calculate_name_len(%struct.hci_dev* %38)
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = sub nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @MGMT_ADV_FLAG_APPEARANCE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i64 @calculate_name_len(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
