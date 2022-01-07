; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_conn_defer_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_conn_defer_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_cp_accept_conn_req = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.hci_cp_accept_sync_conn_req = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@BT_CONFIG = common dso_local global i32 0, align 4
@HCI_OP_ACCEPT_CONN_REQ = common dso_local global i32 0, align 4
@SCO_AIRMODE_MASK = common dso_local global i32 0, align 4
@ESCO_2EV3 = common dso_local global i32 0, align 4
@HCI_OP_ACCEPT_SYNC_CONN_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_conn*, i32)* @sco_conn_defer_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sco_conn_defer_accept(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.hci_cp_accept_conn_req, align 8
  %7 = alloca %struct.hci_cp_accept_sync_conn_req, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %9 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %8, i32 0, i32 3
  %10 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  store %struct.hci_dev* %10, %struct.hci_dev** %5, align 8
  %11 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %11)
  %13 = load i32, i32* @BT_CONFIG, align 4
  %14 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %15 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %17 = call i32 @lmp_esco_capable(%struct.hci_dev* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.hci_cp_accept_conn_req, %struct.hci_cp_accept_conn_req* %6, i32 0, i32 7
  %21 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %22 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %21, i32 0, i32 1
  %23 = call i32 @bacpy(i32* %20, i32* %22)
  %24 = getelementptr inbounds %struct.hci_cp_accept_conn_req, %struct.hci_cp_accept_conn_req* %6, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %26 = load i32, i32* @HCI_OP_ACCEPT_CONN_REQ, align 4
  %27 = bitcast %struct.hci_cp_accept_conn_req* %6 to %struct.hci_cp_accept_sync_conn_req*
  %28 = call i32 @hci_send_cmd(%struct.hci_dev* %25, i32 %26, i32 56, %struct.hci_cp_accept_sync_conn_req* %27)
  br label %72

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %7, i32 0, i32 7
  %31 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %32 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %31, i32 0, i32 1
  %33 = call i32 @bacpy(i32* %30, i32* %32)
  %34 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %35 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %7, i32 0, i32 6
  store i8* %37, i8** %38, align 8
  %39 = call i8* @cpu_to_le32(i32 8000)
  %40 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %7, i32 0, i32 5
  store i8* %39, i8** %40, align 8
  %41 = call i8* @cpu_to_le32(i32 8000)
  %42 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %7, i32 0, i32 4
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %7, i32 0, i32 3
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SCO_AIRMODE_MASK, align 4
  %48 = and i32 %46, %47
  switch i32 %48, label %68 [
    i32 128, label %49
    i32 129, label %64
  ]

49:                                               ; preds = %29
  %50 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %51 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ESCO_2EV3, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = call i8* @cpu_to_le16(i32 8)
  %58 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %7, i32 0, i32 2
  store i8* %57, i8** %58, align 8
  br label %62

59:                                               ; preds = %49
  %60 = call i8* @cpu_to_le16(i32 13)
  %61 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %7, i32 0, i32 2
  store i8* %60, i8** %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %7, i32 0, i32 1
  store i32 2, i32* %63, align 4
  br label %68

64:                                               ; preds = %29
  %65 = call i8* @cpu_to_le16(i32 65535)
  %66 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %7, i32 0, i32 2
  store i8* %65, i8** %66, align 8
  %67 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %7, i32 0, i32 1
  store i32 255, i32* %67, align 4
  br label %68

68:                                               ; preds = %29, %64, %62
  %69 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %70 = load i32, i32* @HCI_OP_ACCEPT_SYNC_CONN_REQ, align 4
  %71 = call i32 @hci_send_cmd(%struct.hci_dev* %69, i32 %70, i32 56, %struct.hci_cp_accept_sync_conn_req* %7)
  br label %72

72:                                               ; preds = %68, %19
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*) #1

declare dso_local i32 @lmp_esco_capable(%struct.hci_dev*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_accept_sync_conn_req*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
