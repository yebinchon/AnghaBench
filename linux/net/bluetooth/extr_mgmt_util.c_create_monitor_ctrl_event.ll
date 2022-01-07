; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt_util.c_create_monitor_ctrl_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt_util.c_create_monitor_ctrl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.hci_mon_hdr = type { i8*, i32, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@HCI_MON_HDR_SIZE = common dso_local global i64 0, align 8
@HCI_MON_CTRL_EVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i32, i32, i32, i32, i8*)* @create_monitor_ctrl_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @create_monitor_ctrl_event(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hci_mon_hdr*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* %10, align 4
  %15 = add nsw i32 6, %14
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.sk_buff* @bt_skb_alloc(i32 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %13, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %59

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %24 = call i32 @skb_put(%struct.sk_buff* %23, i32 4)
  %25 = call i32 @put_unaligned_le32(i32 %22, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %28 = call i32 @skb_put(%struct.sk_buff* %27, i32 2)
  %29 = call i32 @put_unaligned_le16(i32 %26, i32 %28)
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @skb_put_data(%struct.sk_buff* %33, i8* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %21
  %38 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %39 = call i32 @__net_timestamp(%struct.sk_buff* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %41 = load i64, i64* @HCI_MON_HDR_SIZE, align 8
  %42 = call %struct.hci_mon_hdr* @skb_push(%struct.sk_buff* %40, i64 %41)
  store %struct.hci_mon_hdr* %42, %struct.hci_mon_hdr** %12, align 8
  %43 = load i64, i64* @HCI_MON_CTRL_EVENT, align 8
  %44 = call i8* @cpu_to_le16(i64 %43)
  %45 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %12, align 8
  %46 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %12, align 8
  %49 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HCI_MON_HDR_SIZE, align 8
  %54 = sub nsw i64 %52, %53
  %55 = call i8* @cpu_to_le16(i64 %54)
  %56 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %12, align 8
  %57 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %58, %struct.sk_buff** %6, align 8
  br label %59

59:                                               ; preds = %37, %20
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %60
}

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local %struct.hci_mon_hdr* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
