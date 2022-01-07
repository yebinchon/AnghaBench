; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_user_pairing_resp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_user_pairing_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32 }
%struct.mgmt_addr_info = type { i64, %struct.hci_cp_user_passkey_reply }
%struct.hci_cp_user_passkey_reply = type { i32, i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_conn = type { i32 }

@MGMT_STATUS_NOT_POWERED = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i64 0, align 8
@ACL_LINK = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_CONNECTED = common dso_local global i32 0, align 4
@BDADDR_LE_PUBLIC = common dso_local global i64 0, align 8
@BDADDR_LE_RANDOM = common dso_local global i64 0, align 8
@MGMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@MGMT_STATUS_FAILED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@addr_cmd_complete = common dso_local global i32 0, align 4
@HCI_OP_USER_PASSKEY_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, %struct.mgmt_addr_info*, i32, i32, i32)* @user_pairing_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_pairing_resp(%struct.sock* %0, %struct.hci_dev* %1, %struct.mgmt_addr_info* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.hci_dev*, align 8
  %9 = alloca %struct.mgmt_addr_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mgmt_pending_cmd*, align 8
  %14 = alloca %struct.hci_conn*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hci_cp_user_passkey_reply, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %8, align 8
  store %struct.mgmt_addr_info* %2, %struct.mgmt_addr_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %18 = call i32 @hci_dev_lock(%struct.hci_dev* %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %20 = call i32 @hdev_is_powered(%struct.hci_dev* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %6
  %23 = load %struct.sock*, %struct.sock** %7, align 8
  %24 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @MGMT_STATUS_NOT_POWERED, align 4
  %29 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %30 = call i32 @mgmt_cmd_complete(%struct.sock* %23, i32 %26, i32 %27, i32 %28, %struct.mgmt_addr_info* %29, i32 16)
  store i32 %30, i32* %15, align 4
  br label %143

31:                                               ; preds = %6
  %32 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %33 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BDADDR_BREDR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %39 = load i32, i32* @ACL_LINK, align 4
  %40 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %41 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %40, i32 0, i32 1
  %42 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %38, i32 %39, %struct.hci_cp_user_passkey_reply* %41)
  store %struct.hci_conn* %42, %struct.hci_conn** %14, align 8
  br label %52

43:                                               ; preds = %31
  %44 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %45 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %46 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %45, i32 0, i32 1
  %47 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %48 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @le_addr_type(i64 %49)
  %51 = call %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev* %44, %struct.hci_cp_user_passkey_reply* %46, i32 %50)
  store %struct.hci_conn* %51, %struct.hci_conn** %14, align 8
  br label %52

52:                                               ; preds = %43, %37
  %53 = load %struct.hci_conn*, %struct.hci_conn** %14, align 8
  %54 = icmp ne %struct.hci_conn* %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = load %struct.sock*, %struct.sock** %7, align 8
  %57 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @MGMT_STATUS_NOT_CONNECTED, align 4
  %62 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %63 = call i32 @mgmt_cmd_complete(%struct.sock* %56, i32 %59, i32 %60, i32 %61, %struct.mgmt_addr_info* %62, i32 16)
  store i32 %63, i32* %15, align 4
  br label %143

64:                                               ; preds = %52
  %65 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %66 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @BDADDR_LE_PUBLIC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %72 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @BDADDR_LE_RANDOM, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %102

76:                                               ; preds = %70, %64
  %77 = load %struct.hci_conn*, %struct.hci_conn** %14, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @smp_user_confirm_reply(%struct.hci_conn* %77, i32 %78, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %76
  %84 = load %struct.sock*, %struct.sock** %7, align 8
  %85 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %86 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  %90 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %91 = call i32 @mgmt_cmd_complete(%struct.sock* %84, i32 %87, i32 %88, i32 %89, %struct.mgmt_addr_info* %90, i32 16)
  store i32 %91, i32* %15, align 4
  br label %101

92:                                               ; preds = %76
  %93 = load %struct.sock*, %struct.sock** %7, align 8
  %94 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %95 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @MGMT_STATUS_FAILED, align 4
  %99 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %100 = call i32 @mgmt_cmd_complete(%struct.sock* %93, i32 %96, i32 %97, i32 %98, %struct.mgmt_addr_info* %99, i32 16)
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %92, %83
  br label %143

102:                                              ; preds = %70
  %103 = load %struct.sock*, %struct.sock** %7, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %106 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %107 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %103, i32 %104, %struct.hci_dev* %105, %struct.mgmt_addr_info* %106, i32 16)
  store %struct.mgmt_pending_cmd* %107, %struct.mgmt_pending_cmd** %13, align 8
  %108 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %109 = icmp ne %struct.mgmt_pending_cmd* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %15, align 4
  br label %143

113:                                              ; preds = %102
  %114 = load i32, i32* @addr_cmd_complete, align 4
  %115 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %116 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @HCI_OP_USER_PASSKEY_REPLY, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.hci_cp_user_passkey_reply, %struct.hci_cp_user_passkey_reply* %16, i32 0, i32 1
  %122 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %123 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %122, i32 0, i32 1
  %124 = call i32 @bacpy(i32* %121, %struct.hci_cp_user_passkey_reply* %123)
  %125 = load i32, i32* %12, align 4
  %126 = getelementptr inbounds %struct.hci_cp_user_passkey_reply, %struct.hci_cp_user_passkey_reply* %16, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @hci_send_cmd(%struct.hci_dev* %127, i32 %128, i32 8, %struct.hci_cp_user_passkey_reply* %16)
  store i32 %129, i32* %15, align 4
  br label %136

130:                                              ; preds = %113
  %131 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.mgmt_addr_info*, %struct.mgmt_addr_info** %9, align 8
  %134 = getelementptr inbounds %struct.mgmt_addr_info, %struct.mgmt_addr_info* %133, i32 0, i32 1
  %135 = call i32 @hci_send_cmd(%struct.hci_dev* %131, i32 %132, i32 8, %struct.hci_cp_user_passkey_reply* %134)
  store i32 %135, i32* %15, align 4
  br label %136

136:                                              ; preds = %130, %120
  %137 = load i32, i32* %15, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %13, align 8
  %141 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %140)
  br label %142

142:                                              ; preds = %139, %136
  br label %143

143:                                              ; preds = %142, %110, %101, %55, %22
  %144 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %145 = call i32 @hci_dev_unlock(%struct.hci_dev* %144)
  %146 = load i32, i32* %15, align 4
  ret i32 %146
}

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_addr_info*, i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, %struct.hci_cp_user_passkey_reply*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev*, %struct.hci_cp_user_passkey_reply*, i32) #1

declare dso_local i32 @le_addr_type(i64) #1

declare dso_local i32 @smp_user_confirm_reply(%struct.hci_conn*, i32, i32) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, %struct.mgmt_addr_info*, i32) #1

declare dso_local i32 @bacpy(i32*, %struct.hci_cp_user_passkey_reply*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_user_passkey_reply*) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
