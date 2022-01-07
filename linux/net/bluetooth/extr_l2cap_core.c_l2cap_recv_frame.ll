; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_recv_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_recv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, %struct.hci_conn* }
%struct.hci_conn = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.l2cap_hdr = type { i32, i32 }

@BT_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"queueing pending rx skb\00", align 1
@L2CAP_HDR_SIZE = common dso_local global i32 0, align 4
@LE_LINK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"len %d, cid 0x%4.4x\00", align 1
@L2CAP_PSMLEN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, %struct.sk_buff*)* @l2cap_recv_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_recv_frame(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.l2cap_hdr*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.l2cap_hdr*
  store %struct.l2cap_hdr* %14, %struct.l2cap_hdr** %5, align 8
  %15 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %16 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %15, i32 0, i32 1
  %17 = load %struct.hci_conn*, %struct.hci_conn** %16, align 8
  store %struct.hci_conn* %17, %struct.hci_conn** %6, align 8
  %18 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %19 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BT_CONNECTED, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %26 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %25, i32 0, i32 0
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @skb_queue_tail(i32* %26, %struct.sk_buff* %27)
  br label %100

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @L2CAP_HDR_SIZE, align 4
  %32 = call i32 @skb_pull(%struct.sk_buff* %30, i32 %31)
  %33 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %5, align 8
  %34 = getelementptr inbounds %struct.l2cap_hdr, %struct.l2cap_hdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @__le16_to_cpu(i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.l2cap_hdr, %struct.l2cap_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @__le16_to_cpu(i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %29
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @kfree_skb(%struct.sk_buff* %47)
  br label %100

49:                                               ; preds = %29
  %50 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %51 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LE_LINK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %57 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %61 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %60, i32 0, i32 2
  %62 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %63 = call i32 @bdaddr_dst_type(%struct.hci_conn* %62)
  %64 = call i64 @hci_bdaddr_list_lookup(i32* %59, i32* %61, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  br label %100

69:                                               ; preds = %55, %49
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %70, i64 %71)
  %73 = load i64, i64* %7, align 8
  switch i64 %73, label %95 [
    i64 128, label %74
    i64 130, label %78
    i64 129, label %91
  ]

74:                                               ; preds = %69
  %75 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call i32 @l2cap_sig_channel(%struct.l2cap_conn* %75, %struct.sk_buff* %76)
  br label %100

78:                                               ; preds = %69
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = call i32 @get_unaligned(i32* %82)
  store i32 %83, i32* %9, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = load i32, i32* @L2CAP_PSMLEN_SIZE, align 4
  %86 = call i32 @skb_pull(%struct.sk_buff* %84, i32 %85)
  %87 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = call i32 @l2cap_conless_channel(%struct.l2cap_conn* %87, i32 %88, %struct.sk_buff* %89)
  br label %100

91:                                               ; preds = %69
  %92 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = call i32 @l2cap_le_sig_channel(%struct.l2cap_conn* %92, %struct.sk_buff* %93)
  br label %100

95:                                               ; preds = %69
  %96 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call i32 @l2cap_data_channel(%struct.l2cap_conn* %96, i64 %97, %struct.sk_buff* %98)
  br label %100

100:                                              ; preds = %23, %46, %66, %95, %91, %78, %74
  ret void
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @hci_bdaddr_list_lookup(i32*, i32*, i32) #1

declare dso_local i32 @bdaddr_dst_type(%struct.hci_conn*) #1

declare dso_local i32 @l2cap_sig_channel(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @l2cap_conless_channel(%struct.l2cap_conn*, i32, %struct.sk_buff*) #1

declare dso_local i32 @l2cap_le_sig_channel(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @l2cap_data_channel(%struct.l2cap_conn*, i64, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
