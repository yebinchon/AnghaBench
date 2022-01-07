; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_debug_keys.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_debug_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }
%struct.mgmt_mode = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@MGMT_OP_SET_DEBUG_KEYS = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@HCI_KEEP_DEBUG_KEYS = common dso_local global i32 0, align 4
@HCI_USE_DEBUG_KEYS = common dso_local global i32 0, align 4
@HCI_SSP_ENABLED = common dso_local global i32 0, align 4
@HCI_OP_WRITE_SSP_DEBUG_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_debug_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_debug_keys(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.mgmt_mode*
  store %struct.mgmt_mode* %16, %struct.mgmt_mode** %10, align 8
  %17 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %22 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  %26 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %27 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %32 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 2
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.sock*, %struct.sock** %6, align 8
  %37 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MGMT_OP_SET_DEBUG_KEYS, align 4
  %41 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %42 = call i32 @mgmt_cmd_status(%struct.sock* %36, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %119

43:                                               ; preds = %30, %25, %4
  %44 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %45 = call i32 @hci_dev_lock(%struct.hci_dev* %44)
  %46 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %47 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %52 = load i32, i32* @HCI_KEEP_DEBUG_KEYS, align 4
  %53 = call i32 @hci_dev_test_and_set_flag(%struct.hci_dev* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %11, align 4
  br label %61

57:                                               ; preds = %43
  %58 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %59 = load i32, i32* @HCI_KEEP_DEBUG_KEYS, align 4
  %60 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %58, i32 %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %63 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %68 = load i32, i32* @HCI_USE_DEBUG_KEYS, align 4
  %69 = call i32 @hci_dev_test_and_set_flag(%struct.hci_dev* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %12, align 4
  br label %77

73:                                               ; preds = %61
  %74 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %75 = load i32, i32* @HCI_USE_DEBUG_KEYS, align 4
  %76 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %74, i32 %75)
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %79 = call i64 @hdev_is_powered(%struct.hci_dev* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %86 = load i32, i32* @HCI_SSP_ENABLED, align 4
  %87 = call i64 @hci_dev_test_flag(%struct.hci_dev* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %91 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 2
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 0
  store i32 %95, i32* %14, align 4
  %96 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %97 = load i32, i32* @HCI_OP_WRITE_SSP_DEBUG_MODE, align 4
  %98 = call i32 @hci_send_cmd(%struct.hci_dev* %96, i32 %97, i32 4, i32* %14)
  br label %99

99:                                               ; preds = %89, %84, %81, %77
  %100 = load %struct.sock*, %struct.sock** %6, align 8
  %101 = load i32, i32* @MGMT_OP_SET_DEBUG_KEYS, align 4
  %102 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %103 = call i32 @send_settings_rsp(%struct.sock* %100, i32 %101, %struct.hci_dev* %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %115

107:                                              ; preds = %99
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %112 = load %struct.sock*, %struct.sock** %6, align 8
  %113 = call i32 @new_settings(%struct.hci_dev* %111, %struct.sock* %112)
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %110, %107
  br label %115

115:                                              ; preds = %114, %106
  %116 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %117 = call i32 @hci_dev_unlock(%struct.hci_dev* %116)
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %35
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_and_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_test_and_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, i32*) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
