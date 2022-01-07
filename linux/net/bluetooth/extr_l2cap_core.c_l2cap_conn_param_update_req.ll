; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_conn_param_update_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_conn_param_update_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i64, i32, i32, i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_conn_param_update_req = type { i32, i32, i32, i32 }
%struct.l2cap_conn_param_update_rsp = type { i8* }

@HCI_ROLE_MASTER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"min 0x%4.4x max 0x%4.4x latency: 0x%4.4x Timeout: 0x%4.4x\00", align 1
@L2CAP_CONN_PARAM_REJECTED = common dso_local global i32 0, align 4
@L2CAP_CONN_PARAM_ACCEPTED = common dso_local global i32 0, align 4
@L2CAP_CONN_PARAM_UPDATE_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*)* @l2cap_conn_param_update_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_conn_param_update_req(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hci_conn*, align 8
  %11 = alloca %struct.l2cap_conn_param_update_req*, align 8
  %12 = alloca %struct.l2cap_conn_param_update_rsp, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %20 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %19, i32 0, i32 0
  %21 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  store %struct.hci_conn* %21, %struct.hci_conn** %10, align 8
  %22 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %23 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HCI_ROLE_MASTER, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %108

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 16
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EPROTO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %108

37:                                               ; preds = %30
  %38 = load i32*, i32** %9, align 8
  %39 = bitcast i32* %38 to %struct.l2cap_conn_param_update_req*
  store %struct.l2cap_conn_param_update_req* %39, %struct.l2cap_conn_param_update_req** %11, align 8
  %40 = load %struct.l2cap_conn_param_update_req*, %struct.l2cap_conn_param_update_req** %11, align 8
  %41 = getelementptr inbounds %struct.l2cap_conn_param_update_req, %struct.l2cap_conn_param_update_req* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__le16_to_cpu(i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.l2cap_conn_param_update_req*, %struct.l2cap_conn_param_update_req** %11, align 8
  %45 = getelementptr inbounds %struct.l2cap_conn_param_update_req, %struct.l2cap_conn_param_update_req* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__le16_to_cpu(i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load %struct.l2cap_conn_param_update_req*, %struct.l2cap_conn_param_update_req** %11, align 8
  %49 = getelementptr inbounds %struct.l2cap_conn_param_update_req, %struct.l2cap_conn_param_update_req* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @__le16_to_cpu(i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load %struct.l2cap_conn_param_update_req*, %struct.l2cap_conn_param_update_req** %11, align 8
  %53 = getelementptr inbounds %struct.l2cap_conn_param_update_req, %struct.l2cap_conn_param_update_req* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @__le16_to_cpu(i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @BT_DBG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = call i32 @memset(%struct.l2cap_conn_param_update_rsp* %12, i32 0, i32 8)
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @hci_check_conn_params(i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %37
  %70 = load i32, i32* @L2CAP_CONN_PARAM_REJECTED, align 4
  %71 = call i8* @cpu_to_le16(i32 %70)
  %72 = getelementptr inbounds %struct.l2cap_conn_param_update_rsp, %struct.l2cap_conn_param_update_rsp* %12, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  br label %77

73:                                               ; preds = %37
  %74 = load i32, i32* @L2CAP_CONN_PARAM_ACCEPTED, align 4
  %75 = call i8* @cpu_to_le16(i32 %74)
  %76 = getelementptr inbounds %struct.l2cap_conn_param_update_rsp, %struct.l2cap_conn_param_update_rsp* %12, i32 0, i32 0
  store i8* %75, i8** %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %79 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %80 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @L2CAP_CONN_PARAM_UPDATE_RSP, align 4
  %83 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %78, i32 %81, i32 %82, i32 8, %struct.l2cap_conn_param_update_rsp* %12)
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %107, label %86

86:                                               ; preds = %77
  %87 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @hci_le_conn_update(%struct.hci_conn* %87, i32 %88, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %18, align 4
  %93 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %94 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %97 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %96, i32 0, i32 2
  %98 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %99 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @mgmt_new_conn_param(i32 %95, i32* %97, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %86, %77
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %34, %27
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.l2cap_conn_param_update_rsp*, i32, i32) #1

declare dso_local i32 @hci_check_conn_params(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_conn_param_update_rsp*) #1

declare dso_local i32 @hci_le_conn_update(%struct.hci_conn*, i32, i32, i32, i32) #1

declare dso_local i32 @mgmt_new_conn_param(i32, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
