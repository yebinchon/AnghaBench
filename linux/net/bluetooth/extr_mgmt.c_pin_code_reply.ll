; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_pin_code_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_pin_code_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32 }
%struct.hci_conn = type { i64 }
%struct.mgmt_cp_pin_code_reply = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hci_cp_pin_code_reply = type { i32, i32*, i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.mgmt_cp_pin_code_neg_reply = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MGMT_OP_PIN_CODE_REPLY = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_POWERED = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_CONNECTED = common dso_local global i32 0, align 4
@BT_SECURITY_HIGH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"PIN code is not 16 bytes long\00", align 1
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@addr_cmd_complete = common dso_local global i32 0, align 4
@HCI_OP_PIN_CODE_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @pin_code_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pin_code_reply(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hci_conn*, align 8
  %10 = alloca %struct.mgmt_cp_pin_code_reply*, align 8
  %11 = alloca %struct.hci_cp_pin_code_reply, align 8
  %12 = alloca %struct.mgmt_pending_cmd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mgmt_cp_pin_code_neg_reply, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.mgmt_cp_pin_code_reply*
  store %struct.mgmt_cp_pin_code_reply* %16, %struct.mgmt_cp_pin_code_reply** %10, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %19 = call i32 @hci_dev_lock(%struct.hci_dev* %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %21 = call i32 @hdev_is_powered(%struct.hci_dev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %4
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MGMT_OP_PIN_CODE_REPLY, align 4
  %29 = load i32, i32* @MGMT_STATUS_NOT_POWERED, align 4
  %30 = call i32 @mgmt_cmd_status(%struct.sock* %24, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %13, align 4
  br label %120

31:                                               ; preds = %4
  %32 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %33 = load i32, i32* @ACL_LINK, align 4
  %34 = load %struct.mgmt_cp_pin_code_reply*, %struct.mgmt_cp_pin_code_reply** %10, align 8
  %35 = getelementptr inbounds %struct.mgmt_cp_pin_code_reply, %struct.mgmt_cp_pin_code_reply* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %32, i32 %33, i32* %36)
  store %struct.hci_conn* %37, %struct.hci_conn** %9, align 8
  %38 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %39 = icmp ne %struct.hci_conn* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %31
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MGMT_OP_PIN_CODE_REPLY, align 4
  %46 = load i32, i32* @MGMT_STATUS_NOT_CONNECTED, align 4
  %47 = call i32 @mgmt_cmd_status(%struct.sock* %41, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %13, align 4
  br label %120

48:                                               ; preds = %31
  %49 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %50 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BT_SECURITY_HIGH, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %48
  %55 = load %struct.mgmt_cp_pin_code_reply*, %struct.mgmt_cp_pin_code_reply** %10, align 8
  %56 = getelementptr inbounds %struct.mgmt_cp_pin_code_reply, %struct.mgmt_cp_pin_code_reply* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 16
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.mgmt_cp_pin_code_neg_reply, %struct.mgmt_cp_pin_code_neg_reply* %14, i32 0, i32 0
  %61 = load %struct.mgmt_cp_pin_code_reply*, %struct.mgmt_cp_pin_code_reply** %10, align 8
  %62 = getelementptr inbounds %struct.mgmt_cp_pin_code_reply, %struct.mgmt_cp_pin_code_reply* %61, i32 0, i32 2
  %63 = call i32 @memcpy(i32* %60, %struct.TYPE_2__* %62, i32 4)
  %64 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %65 = call i32 @bt_dev_err(%struct.hci_dev* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.sock*, %struct.sock** %5, align 8
  %67 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %68 = call i32 @send_pin_code_neg_reply(%struct.sock* %66, %struct.hci_dev* %67, %struct.mgmt_cp_pin_code_neg_reply* %14)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %59
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %74 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MGMT_OP_PIN_CODE_REPLY, align 4
  %77 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %78 = call i32 @mgmt_cmd_status(%struct.sock* %72, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %71, %59
  br label %120

80:                                               ; preds = %54, %48
  %81 = load %struct.sock*, %struct.sock** %5, align 8
  %82 = load i32, i32* @MGMT_OP_PIN_CODE_REPLY, align 4
  %83 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %81, i32 %82, %struct.hci_dev* %83, i8* %84, i32 %85)
  store %struct.mgmt_pending_cmd* %86, %struct.mgmt_pending_cmd** %12, align 8
  %87 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %88 = icmp ne %struct.mgmt_pending_cmd* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %13, align 4
  br label %120

92:                                               ; preds = %80
  %93 = load i32, i32* @addr_cmd_complete, align 4
  %94 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %95 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds %struct.hci_cp_pin_code_reply, %struct.hci_cp_pin_code_reply* %11, i32 0, i32 2
  %97 = load %struct.mgmt_cp_pin_code_reply*, %struct.mgmt_cp_pin_code_reply** %10, align 8
  %98 = getelementptr inbounds %struct.mgmt_cp_pin_code_reply, %struct.mgmt_cp_pin_code_reply* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = call i32 @bacpy(i32* %96, i32* %99)
  %101 = load %struct.mgmt_cp_pin_code_reply*, %struct.mgmt_cp_pin_code_reply** %10, align 8
  %102 = getelementptr inbounds %struct.mgmt_cp_pin_code_reply, %struct.mgmt_cp_pin_code_reply* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.hci_cp_pin_code_reply, %struct.hci_cp_pin_code_reply* %11, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = getelementptr inbounds %struct.hci_cp_pin_code_reply, %struct.hci_cp_pin_code_reply* %11, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.mgmt_cp_pin_code_reply*, %struct.mgmt_cp_pin_code_reply** %10, align 8
  %108 = getelementptr inbounds %struct.mgmt_cp_pin_code_reply, %struct.mgmt_cp_pin_code_reply* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = call i32 @memcpy(i32* %106, %struct.TYPE_2__* %109, i32 8)
  %111 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %112 = load i32, i32* @HCI_OP_PIN_CODE_REPLY, align 4
  %113 = call i32 @hci_send_cmd(%struct.hci_dev* %111, i32 %112, i32 24, %struct.hci_cp_pin_code_reply* %11)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %92
  %117 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %118 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %117)
  br label %119

119:                                              ; preds = %116, %92
  br label %120

120:                                              ; preds = %119, %89, %79, %40, %23
  %121 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %122 = call i32 @hci_dev_unlock(%struct.hci_dev* %121)
  %123 = load i32, i32* %13, align 4
  ret i32 %123
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i32 @send_pin_code_neg_reply(%struct.sock*, %struct.hci_dev*, %struct.mgmt_cp_pin_code_neg_reply*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_pin_code_reply*) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
