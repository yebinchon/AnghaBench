; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_pin_code_request_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_pin_code_request_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_pin_code_req = type { i32 }
%struct.hci_conn = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ACL_LINK = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@HCI_PAIRING_TIMEOUT = common dso_local global i32 0, align 4
@HCI_BONDABLE = common dso_local global i32 0, align 4
@HCI_CONN_AUTH_INITIATOR = common dso_local global i32 0, align 4
@HCI_OP_PIN_CODE_NEG_REPLY = common dso_local global i32 0, align 4
@HCI_MGMT = common dso_local global i32 0, align 4
@BT_SECURITY_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_pin_code_request_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_pin_code_request_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_pin_code_req*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hci_ev_pin_code_req*
  store %struct.hci_ev_pin_code_req* %12, %struct.hci_ev_pin_code_req** %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = call i32 @hci_dev_lock(%struct.hci_dev* %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = load i32, i32* @ACL_LINK, align 4
  %21 = load %struct.hci_ev_pin_code_req*, %struct.hci_ev_pin_code_req** %5, align 8
  %22 = getelementptr inbounds %struct.hci_ev_pin_code_req, %struct.hci_ev_pin_code_req* %21, i32 0, i32 0
  %23 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %19, i32 %20, i32* %22)
  store %struct.hci_conn* %23, %struct.hci_conn** %6, align 8
  %24 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %25 = icmp ne %struct.hci_conn* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %79

27:                                               ; preds = %2
  %28 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %29 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BT_CONNECTED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %35 = call i32 @hci_conn_hold(%struct.hci_conn* %34)
  %36 = load i32, i32* @HCI_PAIRING_TIMEOUT, align 4
  %37 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %38 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %40 = call i32 @hci_conn_drop(%struct.hci_conn* %39)
  br label %41

41:                                               ; preds = %33, %27
  %42 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %43 = load i32, i32* @HCI_BONDABLE, align 4
  %44 = call i64 @hci_dev_test_flag(%struct.hci_dev* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @HCI_CONN_AUTH_INITIATOR, align 4
  %48 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %49 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %48, i32 0, i32 2
  %50 = call i32 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %54 = load i32, i32* @HCI_OP_PIN_CODE_NEG_REPLY, align 4
  %55 = load %struct.hci_ev_pin_code_req*, %struct.hci_ev_pin_code_req** %5, align 8
  %56 = getelementptr inbounds %struct.hci_ev_pin_code_req, %struct.hci_ev_pin_code_req* %55, i32 0, i32 0
  %57 = call i32 @hci_send_cmd(%struct.hci_dev* %53, i32 %54, i32 4, i32* %56)
  br label %78

58:                                               ; preds = %46, %41
  %59 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %60 = load i32, i32* @HCI_MGMT, align 4
  %61 = call i64 @hci_dev_test_flag(%struct.hci_dev* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %65 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BT_SECURITY_HIGH, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %7, align 4
  br label %71

70:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %73 = load %struct.hci_ev_pin_code_req*, %struct.hci_ev_pin_code_req** %5, align 8
  %74 = getelementptr inbounds %struct.hci_ev_pin_code_req, %struct.hci_ev_pin_code_req* %73, i32 0, i32 0
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @mgmt_pin_code_request(%struct.hci_dev* %72, i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %58
  br label %78

78:                                               ; preds = %77, %52
  br label %79

79:                                               ; preds = %78, %26
  %80 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %81 = call i32 @hci_dev_unlock(%struct.hci_dev* %80)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, i32*) #1

declare dso_local i32 @mgmt_pin_code_request(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
