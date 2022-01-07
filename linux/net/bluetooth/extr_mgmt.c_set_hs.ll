; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_hs.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }
%struct.mgmt_mode = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@MGMT_OP_SET_HS = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i64 0, align 8
@HCI_SSP_ENABLED = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i64 0, align 8
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i64 0, align 8
@MGMT_OP_SET_SSP = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i64 0, align 8
@HCI_HS_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_hs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_hs(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.mgmt_mode*
  store %struct.mgmt_mode* %15, %struct.mgmt_mode** %10, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %21 = call i64 @mgmt_bredr_support(%struct.hci_dev* %20)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MGMT_OP_SET_HS, align 4
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @mgmt_cmd_status(%struct.sock* %25, i32 %28, i32 %29, i64 %30)
  store i32 %31, i32* %5, align 4
  br label %138

32:                                               ; preds = %4
  %33 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %34 = call i32 @lmp_ssp_capable(%struct.hci_dev* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MGMT_OP_SET_HS, align 4
  %42 = load i64, i64* @MGMT_STATUS_NOT_SUPPORTED, align 8
  %43 = call i32 @mgmt_cmd_status(%struct.sock* %37, i32 %40, i32 %41, i64 %42)
  store i32 %43, i32* %5, align 4
  br label %138

44:                                               ; preds = %32
  %45 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %46 = load i32, i32* @HCI_SSP_ENABLED, align 4
  %47 = call i32 @hci_dev_test_flag(%struct.hci_dev* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load %struct.sock*, %struct.sock** %6, align 8
  %51 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MGMT_OP_SET_HS, align 4
  %55 = load i64, i64* @MGMT_STATUS_REJECTED, align 8
  %56 = call i32 @mgmt_cmd_status(%struct.sock* %50, i32 %53, i32 %54, i64 %55)
  store i32 %56, i32* %5, align 4
  br label %138

57:                                               ; preds = %44
  %58 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %59 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %64 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.sock*, %struct.sock** %6, align 8
  %69 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %70 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MGMT_OP_SET_HS, align 4
  %73 = load i64, i64* @MGMT_STATUS_INVALID_PARAMS, align 8
  %74 = call i32 @mgmt_cmd_status(%struct.sock* %68, i32 %71, i32 %72, i64 %73)
  store i32 %74, i32* %5, align 4
  br label %138

75:                                               ; preds = %62, %57
  %76 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %77 = call i32 @hci_dev_lock(%struct.hci_dev* %76)
  %78 = load i32, i32* @MGMT_OP_SET_SSP, align 4
  %79 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %80 = call i64 @pending_find(i32 %78, %struct.hci_dev* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load %struct.sock*, %struct.sock** %6, align 8
  %84 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MGMT_OP_SET_HS, align 4
  %88 = load i64, i64* @MGMT_STATUS_BUSY, align 8
  %89 = call i32 @mgmt_cmd_status(%struct.sock* %83, i32 %86, i32 %87, i64 %88)
  store i32 %89, i32* %13, align 4
  br label %134

90:                                               ; preds = %75
  %91 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %92 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %97 = load i32, i32* @HCI_HS_ENABLED, align 4
  %98 = call i32 @hci_dev_test_and_set_flag(%struct.hci_dev* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %11, align 4
  br label %118

102:                                              ; preds = %90
  %103 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %104 = call i64 @hdev_is_powered(%struct.hci_dev* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load %struct.sock*, %struct.sock** %6, align 8
  %108 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %109 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MGMT_OP_SET_HS, align 4
  %112 = load i64, i64* @MGMT_STATUS_REJECTED, align 8
  %113 = call i32 @mgmt_cmd_status(%struct.sock* %107, i32 %110, i32 %111, i64 %112)
  store i32 %113, i32* %13, align 4
  br label %134

114:                                              ; preds = %102
  %115 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %116 = load i32, i32* @HCI_HS_ENABLED, align 4
  %117 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %115, i32 %116)
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %114, %95
  %119 = load %struct.sock*, %struct.sock** %6, align 8
  %120 = load i32, i32* @MGMT_OP_SET_HS, align 4
  %121 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %122 = call i32 @send_settings_rsp(%struct.sock* %119, i32 %120, %struct.hci_dev* %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %134

126:                                              ; preds = %118
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %131 = load %struct.sock*, %struct.sock** %6, align 8
  %132 = call i32 @new_settings(%struct.hci_dev* %130, %struct.sock* %131)
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %129, %126
  br label %134

134:                                              ; preds = %133, %125, %106, %82
  %135 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %136 = call i32 @hci_dev_unlock(%struct.hci_dev* %135)
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %134, %67, %49, %36, %24
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i64 @mgmt_bredr_support(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i64) #1

declare dso_local i32 @lmp_ssp_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_and_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_and_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
