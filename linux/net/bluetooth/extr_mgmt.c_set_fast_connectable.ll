; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_fast_connectable.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_fast_connectable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i64, i32, i32 }
%struct.mgmt_mode = type { i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@BLUETOOTH_VER_1_2 = common dso_local global i64 0, align 8
@MGMT_OP_SET_FAST_CONNECTABLE = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@HCI_FAST_CONNECTABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fast_connectable_complete = common dso_local global i32 0, align 4
@MGMT_STATUS_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_fast_connectable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_fast_connectable(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_mode*, align 8
  %11 = alloca %struct.mgmt_pending_cmd*, align 8
  %12 = alloca %struct.hci_request, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.mgmt_mode*
  store %struct.mgmt_mode* %15, %struct.mgmt_mode** %10, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %21 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %22 = call i32 @hci_dev_test_flag(%struct.hci_dev* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BLUETOOTH_VER_1_2, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24, %4
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MGMT_OP_SET_FAST_CONNECTABLE, align 4
  %36 = load i32, i32* @MGMT_STATUS_NOT_SUPPORTED, align 4
  %37 = call i32 @mgmt_cmd_status(%struct.sock* %31, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %141

38:                                               ; preds = %24
  %39 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %40 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %45 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.sock*, %struct.sock** %6, align 8
  %50 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MGMT_OP_SET_FAST_CONNECTABLE, align 4
  %54 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %55 = call i32 @mgmt_cmd_status(%struct.sock* %49, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %141

56:                                               ; preds = %43, %38
  %57 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %58 = call i32 @hci_dev_lock(%struct.hci_dev* %57)
  %59 = load i32, i32* @MGMT_OP_SET_FAST_CONNECTABLE, align 4
  %60 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %61 = call i64 @pending_find(i32 %59, %struct.hci_dev* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.sock*, %struct.sock** %6, align 8
  %65 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %66 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MGMT_OP_SET_FAST_CONNECTABLE, align 4
  %69 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %70 = call i32 @mgmt_cmd_status(%struct.sock* %64, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %13, align 4
  br label %137

71:                                               ; preds = %56
  %72 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %73 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %80 = load i32, i32* @HCI_FAST_CONNECTABLE, align 4
  %81 = call i32 @hci_dev_test_flag(%struct.hci_dev* %79, i32 %80)
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %71
  %84 = load %struct.sock*, %struct.sock** %6, align 8
  %85 = load i32, i32* @MGMT_OP_SET_FAST_CONNECTABLE, align 4
  %86 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %87 = call i32 @send_settings_rsp(%struct.sock* %84, i32 %85, %struct.hci_dev* %86)
  store i32 %87, i32* %13, align 4
  br label %137

88:                                               ; preds = %71
  %89 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %90 = call i32 @hdev_is_powered(%struct.hci_dev* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %88
  %93 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %94 = load i32, i32* @HCI_FAST_CONNECTABLE, align 4
  %95 = call i32 @hci_dev_change_flag(%struct.hci_dev* %93, i32 %94)
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  %97 = load i32, i32* @MGMT_OP_SET_FAST_CONNECTABLE, align 4
  %98 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %99 = call i32 @send_settings_rsp(%struct.sock* %96, i32 %97, %struct.hci_dev* %98)
  store i32 %99, i32* %13, align 4
  %100 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %101 = load %struct.sock*, %struct.sock** %6, align 8
  %102 = call i32 @new_settings(%struct.hci_dev* %100, %struct.sock* %101)
  br label %137

103:                                              ; preds = %88
  %104 = load %struct.sock*, %struct.sock** %6, align 8
  %105 = load i32, i32* @MGMT_OP_SET_FAST_CONNECTABLE, align 4
  %106 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %104, i32 %105, %struct.hci_dev* %106, i8* %107, i32 %108)
  store %struct.mgmt_pending_cmd* %109, %struct.mgmt_pending_cmd** %11, align 8
  %110 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %111 = icmp ne %struct.mgmt_pending_cmd* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %103
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %13, align 4
  br label %137

115:                                              ; preds = %103
  %116 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %117 = call i32 @hci_req_init(%struct.hci_request* %12, %struct.hci_dev* %116)
  %118 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %119 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @__hci_req_write_fast_connectable(%struct.hci_request* %12, i32 %120)
  %122 = load i32, i32* @fast_connectable_complete, align 4
  %123 = call i32 @hci_req_run(%struct.hci_request* %12, i32 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %115
  %127 = load %struct.sock*, %struct.sock** %6, align 8
  %128 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %129 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @MGMT_OP_SET_FAST_CONNECTABLE, align 4
  %132 = load i32, i32* @MGMT_STATUS_FAILED, align 4
  %133 = call i32 @mgmt_cmd_status(%struct.sock* %127, i32 %130, i32 %131, i32 %132)
  store i32 %133, i32* %13, align 4
  %134 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %135 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %134)
  br label %136

136:                                              ; preds = %126, %115
  br label %137

137:                                              ; preds = %136, %112, %92, %83, %63
  %138 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %139 = call i32 @hci_dev_unlock(%struct.hci_dev* %138)
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %137, %48, %30
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_change_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, %struct.sock*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @__hci_req_write_fast_connectable(%struct.hci_request*, i32) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
