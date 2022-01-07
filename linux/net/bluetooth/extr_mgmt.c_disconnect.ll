; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }
%struct.mgmt_cp_disconnect = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.mgmt_rp_disconnect = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_conn = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MGMT_OP_DISCONNECT = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@HCI_UP = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_POWERED = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i64 0, align 8
@ACL_LINK = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i64 0, align 8
@BT_CLOSED = common dso_local global i64 0, align 8
@MGMT_STATUS_NOT_CONNECTED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@generic_cmd_complete = common dso_local global i32 0, align 4
@HCI_ERROR_REMOTE_USER_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disconnect(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_disconnect*, align 8
  %11 = alloca %struct.mgmt_rp_disconnect, align 8
  %12 = alloca %struct.mgmt_pending_cmd*, align 8
  %13 = alloca %struct.hci_conn*, align 8
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.mgmt_cp_disconnect*
  store %struct.mgmt_cp_disconnect* %16, %struct.mgmt_cp_disconnect** %10, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @memset(%struct.mgmt_rp_disconnect* %11, i32 0, i32 16)
  %19 = getelementptr inbounds %struct.mgmt_rp_disconnect, %struct.mgmt_rp_disconnect* %11, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.mgmt_cp_disconnect*, %struct.mgmt_cp_disconnect** %10, align 8
  %22 = getelementptr inbounds %struct.mgmt_cp_disconnect, %struct.mgmt_cp_disconnect* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = call i32 @bacpy(i32* %20, i32* %23)
  %25 = load %struct.mgmt_cp_disconnect*, %struct.mgmt_cp_disconnect** %10, align 8
  %26 = getelementptr inbounds %struct.mgmt_cp_disconnect, %struct.mgmt_cp_disconnect* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.mgmt_rp_disconnect, %struct.mgmt_rp_disconnect* %11, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.mgmt_cp_disconnect*, %struct.mgmt_cp_disconnect** %10, align 8
  %32 = getelementptr inbounds %struct.mgmt_cp_disconnect, %struct.mgmt_cp_disconnect* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @bdaddr_type_is_valid(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %4
  %38 = load %struct.sock*, %struct.sock** %6, align 8
  %39 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MGMT_OP_DISCONNECT, align 4
  %43 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %44 = call i32 @mgmt_cmd_complete(%struct.sock* %38, i32 %41, i32 %42, i32 %43, %struct.mgmt_rp_disconnect* %11, i32 16)
  store i32 %44, i32* %5, align 4
  br label %151

45:                                               ; preds = %4
  %46 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %47 = call i32 @hci_dev_lock(%struct.hci_dev* %46)
  %48 = load i32, i32* @HCI_UP, align 4
  %49 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 1
  %51 = call i32 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %45
  %54 = load %struct.sock*, %struct.sock** %6, align 8
  %55 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %56 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MGMT_OP_DISCONNECT, align 4
  %59 = load i32, i32* @MGMT_STATUS_NOT_POWERED, align 4
  %60 = call i32 @mgmt_cmd_complete(%struct.sock* %54, i32 %57, i32 %58, i32 %59, %struct.mgmt_rp_disconnect* %11, i32 16)
  store i32 %60, i32* %14, align 4
  br label %147

61:                                               ; preds = %45
  %62 = load i32, i32* @MGMT_OP_DISCONNECT, align 4
  %63 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %64 = call i64 @pending_find(i32 %62, %struct.hci_dev* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.sock*, %struct.sock** %6, align 8
  %68 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %69 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MGMT_OP_DISCONNECT, align 4
  %72 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %73 = call i32 @mgmt_cmd_complete(%struct.sock* %67, i32 %70, i32 %71, i32 %72, %struct.mgmt_rp_disconnect* %11, i32 16)
  store i32 %73, i32* %14, align 4
  br label %147

74:                                               ; preds = %61
  %75 = load %struct.mgmt_cp_disconnect*, %struct.mgmt_cp_disconnect** %10, align 8
  %76 = getelementptr inbounds %struct.mgmt_cp_disconnect, %struct.mgmt_cp_disconnect* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BDADDR_BREDR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %83 = load i32, i32* @ACL_LINK, align 4
  %84 = load %struct.mgmt_cp_disconnect*, %struct.mgmt_cp_disconnect** %10, align 8
  %85 = getelementptr inbounds %struct.mgmt_cp_disconnect, %struct.mgmt_cp_disconnect* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %82, i32 %83, i32* %86)
  store %struct.hci_conn* %87, %struct.hci_conn** %13, align 8
  br label %99

88:                                               ; preds = %74
  %89 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %90 = load %struct.mgmt_cp_disconnect*, %struct.mgmt_cp_disconnect** %10, align 8
  %91 = getelementptr inbounds %struct.mgmt_cp_disconnect, %struct.mgmt_cp_disconnect* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load %struct.mgmt_cp_disconnect*, %struct.mgmt_cp_disconnect** %10, align 8
  %94 = getelementptr inbounds %struct.mgmt_cp_disconnect, %struct.mgmt_cp_disconnect* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @le_addr_type(i64 %96)
  %98 = call %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev* %89, i32* %92, i32 %97)
  store %struct.hci_conn* %98, %struct.hci_conn** %13, align 8
  br label %99

99:                                               ; preds = %88, %81
  %100 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %101 = icmp ne %struct.hci_conn* %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %104 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @BT_OPEN, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %110 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @BT_CLOSED, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108, %102, %99
  %115 = load %struct.sock*, %struct.sock** %6, align 8
  %116 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %117 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @MGMT_OP_DISCONNECT, align 4
  %120 = load i32, i32* @MGMT_STATUS_NOT_CONNECTED, align 4
  %121 = call i32 @mgmt_cmd_complete(%struct.sock* %115, i32 %118, i32 %119, i32 %120, %struct.mgmt_rp_disconnect* %11, i32 16)
  store i32 %121, i32* %14, align 4
  br label %147

122:                                              ; preds = %108
  %123 = load %struct.sock*, %struct.sock** %6, align 8
  %124 = load i32, i32* @MGMT_OP_DISCONNECT, align 4
  %125 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %123, i32 %124, %struct.hci_dev* %125, i8* %126, i32 %127)
  store %struct.mgmt_pending_cmd* %128, %struct.mgmt_pending_cmd** %12, align 8
  %129 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %130 = icmp ne %struct.mgmt_pending_cmd* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %122
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %14, align 4
  br label %147

134:                                              ; preds = %122
  %135 = load i32, i32* @generic_cmd_complete, align 4
  %136 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %137 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %139 = load i32, i32* @HCI_ERROR_REMOTE_USER_TERM, align 4
  %140 = call i32 @hci_disconnect(%struct.hci_conn* %138, i32 %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %134
  %144 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %145 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %144)
  br label %146

146:                                              ; preds = %143, %134
  br label %147

147:                                              ; preds = %146, %131, %114, %66, %53
  %148 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %149 = call i32 @hci_dev_unlock(%struct.hci_dev* %148)
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %147, %37
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @memset(%struct.mgmt_rp_disconnect*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @bdaddr_type_is_valid(i64) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_rp_disconnect*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @le_addr_type(i64) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_disconnect(%struct.hci_conn*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
