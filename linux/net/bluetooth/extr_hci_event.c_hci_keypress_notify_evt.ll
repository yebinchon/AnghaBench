; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_keypress_notify_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_keypress_notify_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_keypress_notify = type { i32, i32 }
%struct.hci_conn = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ACL_LINK = common dso_local global i32 0, align 4
@HCI_MGMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_keypress_notify_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_keypress_notify_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_keypress_notify*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hci_ev_keypress_notify*
  store %struct.hci_ev_keypress_notify* %11, %struct.hci_ev_keypress_notify** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %17 = load i32, i32* @ACL_LINK, align 4
  %18 = load %struct.hci_ev_keypress_notify*, %struct.hci_ev_keypress_notify** %5, align 8
  %19 = getelementptr inbounds %struct.hci_ev_keypress_notify, %struct.hci_ev_keypress_notify* %18, i32 0, i32 1
  %20 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %16, i32 %17, i32* %19)
  store %struct.hci_conn* %20, %struct.hci_conn** %6, align 8
  %21 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %22 = icmp ne %struct.hci_conn* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %67

24:                                               ; preds = %2
  %25 = load %struct.hci_ev_keypress_notify*, %struct.hci_ev_keypress_notify** %5, align 8
  %26 = getelementptr inbounds %struct.hci_ev_keypress_notify, %struct.hci_ev_keypress_notify* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %45 [
    i32 128, label %28
    i32 130, label %31
    i32 129, label %36
    i32 132, label %41
    i32 131, label %44
  ]

28:                                               ; preds = %24
  %29 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %30 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %67

31:                                               ; preds = %24
  %32 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %33 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %45

36:                                               ; preds = %24
  %37 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %38 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  br label %45

41:                                               ; preds = %24
  %42 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %43 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  br label %45

44:                                               ; preds = %24
  br label %67

45:                                               ; preds = %24, %41, %36, %31
  %46 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %47 = load i32, i32* @HCI_MGMT, align 4
  %48 = call i64 @hci_dev_test_flag(%struct.hci_dev* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %52 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %53 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %52, i32 0, i32 4
  %54 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %55 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %58 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %61 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %64 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mgmt_user_passkey_notify(%struct.hci_dev* %51, i32* %53, i32 %56, i32 %59, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %23, %28, %44, %50, %45
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_user_passkey_notify(%struct.hci_dev*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
