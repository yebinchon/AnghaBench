; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_connectable_update_settings.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_connectable_update_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sock = type { i32 }

@HCI_CONNECTABLE = common dso_local global i32 0, align 4
@HCI_DISCOVERABLE = common dso_local global i32 0, align 4
@MGMT_OP_SET_CONNECTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sock*, i64)* @set_connectable_update_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_connectable_update_settings(%struct.hci_dev* %0, %struct.sock* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %16 = load i32, i32* @HCI_CONNECTABLE, align 4
  %17 = call i32 @hci_dev_test_flag(%struct.hci_dev* %15, i32 %16)
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %25 = load i32, i32* @HCI_CONNECTABLE, align 4
  %26 = call i32 @hci_dev_set_flag(%struct.hci_dev* %24, i32 %25)
  br label %34

27:                                               ; preds = %20
  %28 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %29 = load i32, i32* @HCI_CONNECTABLE, align 4
  %30 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %28, i32 %29)
  %31 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %32 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %33 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %23
  %35 = load %struct.sock*, %struct.sock** %6, align 8
  %36 = load i32, i32* @MGMT_OP_SET_CONNECTABLE, align 4
  %37 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %38 = call i32 @send_settings_rsp(%struct.sock* %35, i32 %36, %struct.hci_dev* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %55

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %48 = call i32 @hci_req_update_scan(%struct.hci_dev* %47)
  %49 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %50 = call i32 @hci_update_background_scan(%struct.hci_dev* %49)
  %51 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %52 = load %struct.sock*, %struct.sock** %6, align 8
  %53 = call i32 @new_settings(%struct.hci_dev* %51, %struct.sock* %52)
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %46, %41
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i32 @hci_req_update_scan(%struct.hci_dev*) #1

declare dso_local i32 @hci_update_background_scan(%struct.hci_dev*) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
