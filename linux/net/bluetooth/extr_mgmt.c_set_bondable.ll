; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_bondable.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_bondable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32 }
%struct.mgmt_mode = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@MGMT_OP_SET_BONDABLE = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@HCI_BONDABLE = common dso_local global i32 0, align 4
@HCI_ADVERTISING = common dso_local global i32 0, align 4
@HCI_DISCOVERABLE = common dso_local global i32 0, align 4
@HCI_LIMITED_PRIVACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_bondable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_bondable(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.mgmt_mode*
  store %struct.mgmt_mode* %14, %struct.mgmt_mode** %10, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %20 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %25 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %31 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MGMT_OP_SET_BONDABLE, align 4
  %34 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %35 = call i32 @mgmt_cmd_status(%struct.sock* %29, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %100

36:                                               ; preds = %23, %4
  %37 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %38 = call i32 @hci_dev_lock(%struct.hci_dev* %37)
  %39 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %40 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %45 = load i32, i32* @HCI_BONDABLE, align 4
  %46 = call i32 @hci_dev_test_and_set_flag(%struct.hci_dev* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %11, align 4
  br label %54

50:                                               ; preds = %36
  %51 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %52 = load i32, i32* @HCI_BONDABLE, align 4
  %53 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = load i32, i32* @MGMT_OP_SET_BONDABLE, align 4
  %57 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %58 = call i32 @send_settings_rsp(%struct.sock* %55, i32 %56, %struct.hci_dev* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %96

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %62
  %66 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %67 = call i64 @hdev_is_powered(%struct.hci_dev* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %71 = load i32, i32* @HCI_ADVERTISING, align 4
  %72 = call i64 @hci_dev_test_flag(%struct.hci_dev* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %69
  %75 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %76 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %77 = call i64 @hci_dev_test_flag(%struct.hci_dev* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %81 = load i32, i32* @HCI_LIMITED_PRIVACY, align 4
  %82 = call i64 @hci_dev_test_flag(%struct.hci_dev* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %86 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %89 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %88, i32 0, i32 0
  %90 = call i32 @queue_work(i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %84, %79, %74, %69, %65
  %92 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %93 = load %struct.sock*, %struct.sock** %6, align 8
  %94 = call i32 @new_settings(%struct.hci_dev* %92, %struct.sock* %93)
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %91, %62
  br label %96

96:                                               ; preds = %95, %61
  %97 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %98 = call i32 @hci_dev_unlock(%struct.hci_dev* %97)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %28
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_and_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_test_and_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i64 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
