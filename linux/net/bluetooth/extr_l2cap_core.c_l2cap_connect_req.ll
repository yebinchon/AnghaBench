; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_connect_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_connect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@HCI_MGMT = common dso_local global i32 0, align 4
@HCI_CONN_MGMT_CONNECTED = common dso_local global i32 0, align 4
@L2CAP_CONN_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*)* @l2cap_connect_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_connect_req(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca %struct.hci_conn*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %13 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %12, i32 0, i32 0
  %14 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  %15 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %14, i32 0, i32 1
  %16 = load %struct.hci_dev*, %struct.hci_dev** %15, align 8
  store %struct.hci_dev* %16, %struct.hci_dev** %10, align 8
  %17 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %18 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %17, i32 0, i32 0
  %19 = load %struct.hci_conn*, %struct.hci_conn** %18, align 8
  store %struct.hci_conn* %19, %struct.hci_conn** %11, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EPROTO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %51

26:                                               ; preds = %4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %28 = call i32 @hci_dev_lock(%struct.hci_dev* %27)
  %29 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %30 = load i32, i32* @HCI_MGMT, align 4
  %31 = call i64 @hci_dev_test_flag(%struct.hci_dev* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load i32, i32* @HCI_CONN_MGMT_CONNECTED, align 4
  %35 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %36 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %35, i32 0, i32 0
  %37 = call i32 @test_and_set_bit(i32 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %41 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %42 = call i32 @mgmt_device_connected(%struct.hci_dev* %40, %struct.hci_conn* %41, i32 0, i32* null, i32 0)
  br label %43

43:                                               ; preds = %39, %33, %26
  %44 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %45 = call i32 @hci_dev_unlock(%struct.hci_dev* %44)
  %46 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %47 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* @L2CAP_CONN_RSP, align 4
  %50 = call i32 @l2cap_connect(%struct.l2cap_conn* %46, %struct.l2cap_cmd_hdr* %47, i32* %48, i32 %49, i32 0)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %43, %23
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @mgmt_device_connected(%struct.hci_dev*, %struct.hci_conn*, i32, i32*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @l2cap_connect(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
