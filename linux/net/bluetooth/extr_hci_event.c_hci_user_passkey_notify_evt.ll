; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_user_passkey_notify_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_user_passkey_notify_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_user_passkey_notify = type { i32, i32 }
%struct.hci_conn = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ACL_LINK = common dso_local global i32 0, align 4
@HCI_MGMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_user_passkey_notify_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_user_passkey_notify_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_user_passkey_notify*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hci_ev_user_passkey_notify*
  store %struct.hci_ev_user_passkey_notify* %11, %struct.hci_ev_user_passkey_notify** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %17 = load i32, i32* @ACL_LINK, align 4
  %18 = load %struct.hci_ev_user_passkey_notify*, %struct.hci_ev_user_passkey_notify** %5, align 8
  %19 = getelementptr inbounds %struct.hci_ev_user_passkey_notify, %struct.hci_ev_user_passkey_notify* %18, i32 0, i32 1
  %20 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %16, i32 %17, i32* %19)
  store %struct.hci_conn* %20, %struct.hci_conn** %6, align 8
  %21 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %22 = icmp ne %struct.hci_conn* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %54

24:                                               ; preds = %2
  %25 = load %struct.hci_ev_user_passkey_notify*, %struct.hci_ev_user_passkey_notify** %5, align 8
  %26 = getelementptr inbounds %struct.hci_ev_user_passkey_notify, %struct.hci_ev_user_passkey_notify* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__le32_to_cpu(i32 %27)
  %29 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %30 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %32 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = load i32, i32* @HCI_MGMT, align 4
  %35 = call i64 @hci_dev_test_flag(%struct.hci_dev* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %24
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %40 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %39, i32 0, i32 4
  %41 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %42 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %45 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %48 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %51 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @mgmt_user_passkey_notify(%struct.hci_dev* %38, i32* %40, i32 %43, i32 %46, i32 %49, i64 %52)
  br label %54

54:                                               ; preds = %23, %37, %24
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_user_passkey_notify(%struct.hci_dev*, i32*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
