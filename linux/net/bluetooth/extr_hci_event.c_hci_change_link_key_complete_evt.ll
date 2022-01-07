; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_change_link_key_complete_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_change_link_key_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_change_link_key_complete = type { i32, i32 }
%struct.hci_conn = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_CONN_SECURE = common dso_local global i32 0, align 4
@HCI_CONN_AUTH_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_change_link_key_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_change_link_key_complete_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_change_link_key_complete*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hci_ev_change_link_key_complete*
  store %struct.hci_ev_change_link_key_complete* %11, %struct.hci_ev_change_link_key_complete** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hci_ev_change_link_key_complete*, %struct.hci_ev_change_link_key_complete** %5, align 8
  %16 = getelementptr inbounds %struct.hci_ev_change_link_key_complete, %struct.hci_ev_change_link_key_complete* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = call i32 @hci_dev_lock(%struct.hci_dev* %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = load %struct.hci_ev_change_link_key_complete*, %struct.hci_ev_change_link_key_complete** %5, align 8
  %23 = getelementptr inbounds %struct.hci_ev_change_link_key_complete, %struct.hci_ev_change_link_key_complete* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__le16_to_cpu(i32 %24)
  %26 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %21, i32 %25)
  store %struct.hci_conn* %26, %struct.hci_conn** %6, align 8
  %27 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %28 = icmp ne %struct.hci_conn* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %2
  %30 = load %struct.hci_ev_change_link_key_complete*, %struct.hci_ev_change_link_key_complete** %5, align 8
  %31 = getelementptr inbounds %struct.hci_ev_change_link_key_complete, %struct.hci_ev_change_link_key_complete* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @HCI_CONN_SECURE, align 4
  %36 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %37 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %36, i32 0, i32 0
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @HCI_CONN_AUTH_PEND, align 4
  %41 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %42 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %41, i32 0, i32 0
  %43 = call i32 @clear_bit(i32 %40, i32* %42)
  %44 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %45 = load %struct.hci_ev_change_link_key_complete*, %struct.hci_ev_change_link_key_complete** %5, align 8
  %46 = getelementptr inbounds %struct.hci_ev_change_link_key_complete, %struct.hci_ev_change_link_key_complete* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hci_key_change_cfm(%struct.hci_conn* %44, i32 %47)
  br label %49

49:                                               ; preds = %39, %2
  %50 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %51 = call i32 @hci_dev_unlock(%struct.hci_dev* %50)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hci_key_change_cfm(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
