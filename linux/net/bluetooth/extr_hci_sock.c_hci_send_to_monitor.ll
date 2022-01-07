; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_hci_send_to_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_hci_send_to_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hci_mon_hdr = type { i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@monitor_promisc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"hdev %p len %d\00", align 1
@HCI_MON_COMMAND_PKT = common dso_local global i32 0, align 4
@HCI_MON_EVENT_PKT = common dso_local global i32 0, align 4
@HCI_MON_ACL_RX_PKT = common dso_local global i32 0, align 4
@HCI_MON_ACL_TX_PKT = common dso_local global i32 0, align 4
@HCI_MON_SCO_RX_PKT = common dso_local global i32 0, align 4
@HCI_MON_SCO_TX_PKT = common dso_local global i32 0, align 4
@HCI_MON_VENDOR_DIAG = common dso_local global i32 0, align 4
@HCI_MON_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@HCI_CHANNEL_MONITOR = common dso_local global i32 0, align 4
@HCI_SOCK_TRUSTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_send_to_monitor(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hci_mon_hdr*, align 8
  %7 = alloca i8*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %8 = call i32 @atomic_read(i32* @monitor_promisc)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %88

11:                                               ; preds = %2
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.hci_dev* %12, i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %17)
  switch i32 %18, label %54 [
    i32 131, label %19
    i32 129, label %22
    i32 132, label %25
    i32 128, label %38
    i32 130, label %51
  ]

19:                                               ; preds = %11
  %20 = load i32, i32* @HCI_MON_COMMAND_PKT, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  store i8* %21, i8** %7, align 8
  br label %55

22:                                               ; preds = %11
  %23 = load i32, i32* @HCI_MON_EVENT_PKT, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  store i8* %24, i8** %7, align 8
  br label %55

25:                                               ; preds = %11
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @HCI_MON_ACL_RX_PKT, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  store i8* %33, i8** %7, align 8
  br label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @HCI_MON_ACL_TX_PKT, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  store i8* %36, i8** %7, align 8
  br label %37

37:                                               ; preds = %34, %31
  br label %55

38:                                               ; preds = %11
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @HCI_MON_SCO_RX_PKT, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  store i8* %46, i8** %7, align 8
  br label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @HCI_MON_SCO_TX_PKT, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  store i8* %49, i8** %7, align 8
  br label %50

50:                                               ; preds = %47, %44
  br label %55

51:                                               ; preds = %11
  %52 = load i32, i32* @HCI_MON_VENDOR_DIAG, align 4
  %53 = call i8* @cpu_to_le16(i32 %52)
  store i8* %53, i8** %7, align 8
  br label %55

54:                                               ; preds = %11
  br label %88

55:                                               ; preds = %51, %50, %37, %22, %19
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load i32, i32* @HCI_MON_HDR_SIZE, align 4
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call %struct.sk_buff* @__pskb_copy_fclone(%struct.sk_buff* %56, i32 %57, i32 %58, i32 1)
  store %struct.sk_buff* %59, %struct.sk_buff** %5, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %88

63:                                               ; preds = %55
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = load i32, i32* @HCI_MON_HDR_SIZE, align 4
  %66 = call %struct.hci_mon_hdr* @skb_push(%struct.sk_buff* %64, i32 %65)
  store %struct.hci_mon_hdr* %66, %struct.hci_mon_hdr** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %6, align 8
  %69 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %71 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @cpu_to_le16(i32 %72)
  %74 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %6, align 8
  %75 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @cpu_to_le16(i32 %78)
  %80 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %6, align 8
  %81 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @HCI_CHANNEL_MONITOR, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load i32, i32* @HCI_SOCK_TRUSTED, align 4
  %85 = call i32 @hci_send_to_channel(i32 %82, %struct.sk_buff* %83, i32 %84, i32* null)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i32 @kfree_skb(%struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %63, %62, %54, %10
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_dev*, i32) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @__pskb_copy_fclone(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.hci_mon_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @hci_send_to_channel(i32, %struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
