; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_conn_ready.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_conn_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i64, i64, i64, i64, i64, i64, i32, i64, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.l2cap_conn_param_update_req = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"%s conn %p\00", align 1
@HCI_ROLE_SLAVE = common dso_local global i64 0, align 8
@L2CAP_CONN_PARAM_UPDATE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*)* @l2cap_le_conn_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_le_conn_ready(%struct.l2cap_conn* %0) #0 {
  %2 = alloca %struct.l2cap_conn*, align 8
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.l2cap_conn_param_update_req, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %2, align 8
  %6 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %7 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %6, i32 0, i32 0
  %8 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  store %struct.hci_conn* %8, %struct.hci_conn** %3, align 8
  %9 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %10 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %9, i32 0, i32 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  store %struct.hci_dev* %11, %struct.hci_dev** %4, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.l2cap_conn* %15)
  %17 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %23 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %24 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @smp_conn_security(%struct.hci_conn* %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %29 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HCI_ROLE_SLAVE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %75

33:                                               ; preds = %27
  %34 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %35 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %38 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %43 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %46 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %41, %33
  %50 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %51 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @cpu_to_le16(i64 %52)
  %54 = getelementptr inbounds %struct.l2cap_conn_param_update_req, %struct.l2cap_conn_param_update_req* %5, i32 0, i32 3
  store i8* %53, i8** %54, align 8
  %55 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %56 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i8* @cpu_to_le16(i64 %57)
  %59 = getelementptr inbounds %struct.l2cap_conn_param_update_req, %struct.l2cap_conn_param_update_req* %5, i32 0, i32 2
  store i8* %58, i8** %59, align 8
  %60 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %61 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @cpu_to_le16(i64 %62)
  %64 = getelementptr inbounds %struct.l2cap_conn_param_update_req, %struct.l2cap_conn_param_update_req* %5, i32 0, i32 1
  store i8* %63, i8** %64, align 8
  %65 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %66 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @cpu_to_le16(i64 %67)
  %69 = getelementptr inbounds %struct.l2cap_conn_param_update_req, %struct.l2cap_conn_param_update_req* %5, i32 0, i32 0
  store i8* %68, i8** %69, align 8
  %70 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %71 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  %72 = call i32 @l2cap_get_ident(%struct.l2cap_conn* %71)
  %73 = load i32, i32* @L2CAP_CONN_PARAM_UPDATE_REQ, align 4
  %74 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %70, i32 %72, i32 %73, i32 32, %struct.l2cap_conn_param_update_req* %5)
  br label %75

75:                                               ; preds = %49, %41, %27
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, %struct.l2cap_conn*) #1

declare dso_local i32 @smp_conn_security(%struct.hci_conn*, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_conn_param_update_req*) #1

declare dso_local i32 @l2cap_get_ident(%struct.l2cap_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
