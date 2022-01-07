; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_abort_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c___hci_abort_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hci_conn = type { i32, %struct.hci_cp_reject_sync_conn_req, i32, i32, i32 }
%struct.hci_cp_reject_sync_conn_req = type { i8*, i32, i32, i32 }
%struct.hci_cp_disconn_phy_link = type { i8*, i32, i32, i32 }
%struct.hci_cp_disconnect = type { i8*, i32, i32, i32 }
%struct.hci_cp_reject_conn_req = type { i8*, i32, i32, i32 }

@AMP_LINK = common dso_local global i32 0, align 4
@HCI_OP_DISCONN_PHY_LINK = common dso_local global i32 0, align 4
@HCI_OP_DISCONNECT = common dso_local global i32 0, align 4
@BT_DISCONN = common dso_local global i32 0, align 4
@LE_LINK = common dso_local global i32 0, align 4
@HCI_CONN_SCANNING = common dso_local global i32 0, align 4
@HCI_OP_LE_CREATE_CONN_CANCEL = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@BLUETOOTH_VER_1_2 = common dso_local global i32 0, align 4
@HCI_OP_CREATE_CONN_CANCEL = common dso_local global i32 0, align 4
@HCI_OP_REJECT_CONN_REQ = common dso_local global i32 0, align 4
@SCO_LINK = common dso_local global i32 0, align 4
@ESCO_LINK = common dso_local global i32 0, align 4
@HCI_ERROR_REJ_LIMITED_RESOURCES = common dso_local global i8* null, align 8
@HCI_OP_REJECT_SYNC_CONN_REQ = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__hci_abort_conn(%struct.hci_request* %0, %struct.hci_conn* %1, i8* %2) #0 {
  %4 = alloca %struct.hci_request*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hci_cp_disconn_phy_link, align 8
  %8 = alloca %struct.hci_cp_disconnect, align 8
  %9 = alloca %struct.hci_cp_reject_conn_req, align 8
  %10 = alloca %struct.hci_cp_reject_sync_conn_req, align 8
  store %struct.hci_request* %0, %struct.hci_request** %4, align 8
  store %struct.hci_conn* %1, %struct.hci_conn** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %12 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %129 [
    i32 128, label %14
    i32 131, label %14
    i32 130, label %48
    i32 129, label %88
  ]

14:                                               ; preds = %3, %3
  %15 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %16 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AMP_LINK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %22 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @HCI_PHY_HANDLE(i32 %23)
  %25 = getelementptr inbounds %struct.hci_cp_disconn_phy_link, %struct.hci_cp_disconn_phy_link* %7, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds %struct.hci_cp_disconn_phy_link, %struct.hci_cp_disconn_phy_link* %7, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %29 = load i32, i32* @HCI_OP_DISCONN_PHY_LINK, align 4
  %30 = bitcast %struct.hci_cp_disconn_phy_link* %7 to %struct.hci_cp_reject_sync_conn_req*
  %31 = call i32 @hci_req_add(%struct.hci_request* %28, i32 %29, i32 24, %struct.hci_cp_reject_sync_conn_req* %30)
  br label %44

32:                                               ; preds = %14
  %33 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %34 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @cpu_to_le16(i32 %35)
  %37 = getelementptr inbounds %struct.hci_cp_disconnect, %struct.hci_cp_disconnect* %8, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds %struct.hci_cp_disconnect, %struct.hci_cp_disconnect* %8, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %41 = load i32, i32* @HCI_OP_DISCONNECT, align 4
  %42 = bitcast %struct.hci_cp_disconnect* %8 to %struct.hci_cp_reject_sync_conn_req*
  %43 = call i32 @hci_req_add(%struct.hci_request* %40, i32 %41, i32 24, %struct.hci_cp_reject_sync_conn_req* %42)
  br label %44

44:                                               ; preds = %32, %20
  %45 = load i32, i32* @BT_DISCONN, align 4
  %46 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %47 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %133

48:                                               ; preds = %3
  %49 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %50 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @LE_LINK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32, i32* @HCI_CONN_SCANNING, align 4
  %56 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %57 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %56, i32 0, i32 3
  %58 = call i32 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %133

61:                                               ; preds = %54
  %62 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %63 = load i32, i32* @HCI_OP_LE_CREATE_CONN_CANCEL, align 4
  %64 = call i32 @hci_req_add(%struct.hci_request* %62, i32 %63, i32 0, %struct.hci_cp_reject_sync_conn_req* null)
  br label %87

65:                                               ; preds = %48
  %66 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %67 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ACL_LINK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %73 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @BLUETOOTH_VER_1_2, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %133

80:                                               ; preds = %71
  %81 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %82 = load i32, i32* @HCI_OP_CREATE_CONN_CANCEL, align 4
  %83 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %84 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %83, i32 0, i32 1
  %85 = call i32 @hci_req_add(%struct.hci_request* %81, i32 %82, i32 6, %struct.hci_cp_reject_sync_conn_req* %84)
  br label %86

86:                                               ; preds = %80, %65
  br label %87

87:                                               ; preds = %86, %61
  br label %133

88:                                               ; preds = %3
  %89 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %90 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ACL_LINK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.hci_cp_reject_conn_req, %struct.hci_cp_reject_conn_req* %9, i32 0, i32 1
  %96 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %97 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %96, i32 0, i32 1
  %98 = call i32 @bacpy(i32* %95, %struct.hci_cp_reject_sync_conn_req* %97)
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds %struct.hci_cp_reject_conn_req, %struct.hci_cp_reject_conn_req* %9, i32 0, i32 0
  store i8* %99, i8** %100, align 8
  %101 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %102 = load i32, i32* @HCI_OP_REJECT_CONN_REQ, align 4
  %103 = bitcast %struct.hci_cp_reject_conn_req* %9 to %struct.hci_cp_reject_sync_conn_req*
  %104 = call i32 @hci_req_add(%struct.hci_request* %101, i32 %102, i32 24, %struct.hci_cp_reject_sync_conn_req* %103)
  br label %128

105:                                              ; preds = %88
  %106 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %107 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SCO_LINK, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %113 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ESCO_LINK, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %111, %105
  %118 = getelementptr inbounds %struct.hci_cp_reject_sync_conn_req, %struct.hci_cp_reject_sync_conn_req* %10, i32 0, i32 1
  %119 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %120 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %119, i32 0, i32 1
  %121 = call i32 @bacpy(i32* %118, %struct.hci_cp_reject_sync_conn_req* %120)
  %122 = load i8*, i8** @HCI_ERROR_REJ_LIMITED_RESOURCES, align 8
  %123 = getelementptr inbounds %struct.hci_cp_reject_sync_conn_req, %struct.hci_cp_reject_sync_conn_req* %10, i32 0, i32 0
  store i8* %122, i8** %123, align 8
  %124 = load %struct.hci_request*, %struct.hci_request** %4, align 8
  %125 = load i32, i32* @HCI_OP_REJECT_SYNC_CONN_REQ, align 4
  %126 = call i32 @hci_req_add(%struct.hci_request* %124, i32 %125, i32 24, %struct.hci_cp_reject_sync_conn_req* %10)
  br label %127

127:                                              ; preds = %117, %111
  br label %128

128:                                              ; preds = %127, %94
  br label %133

129:                                              ; preds = %3
  %130 = load i32, i32* @BT_CLOSED, align 4
  %131 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %132 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %129, %128, %87, %79, %60, %44
  ret void
}

declare dso_local i32 @HCI_PHY_HANDLE(i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_reject_sync_conn_req*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bacpy(i32*, %struct.hci_cp_reject_sync_conn_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
