; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_create_monitor_ctrl_command.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_create_monitor_ctrl_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.sock = type { i32 }
%struct.hci_mon_hdr = type { i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@HCI_MON_HDR_SIZE = common dso_local global i64 0, align 8
@HCI_MON_CTRL_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, i64, i64, i64, i8*)* @create_monitor_ctrl_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @create_monitor_ctrl_command(%struct.sock* %0, i64 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hci_mon_hdr*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i64, i64* %10, align 8
  %15 = add nsw i64 6, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sk_buff* @bt_skb_alloc(i32 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %13, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %64

22:                                               ; preds = %5
  %23 = load %struct.sock*, %struct.sock** %7, align 8
  %24 = call %struct.TYPE_2__* @hci_pi(%struct.sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %28 = call i32 @skb_put(%struct.sk_buff* %27, i32 4)
  %29 = call i32 @put_unaligned_le32(i32 %26, i32 %28)
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %32 = call i32 @skb_put(%struct.sk_buff* %31, i32 2)
  %33 = call i32 @put_unaligned_le16(i64 %30, i32 %32)
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %22
  %37 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @skb_put_data(%struct.sk_buff* %37, i8* %38, i64 %39)
  br label %41

41:                                               ; preds = %36, %22
  %42 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %43 = call i32 @__net_timestamp(%struct.sk_buff* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %45 = load i64, i64* @HCI_MON_HDR_SIZE, align 8
  %46 = call %struct.hci_mon_hdr* @skb_push(%struct.sk_buff* %44, i64 %45)
  store %struct.hci_mon_hdr* %46, %struct.hci_mon_hdr** %12, align 8
  %47 = load i64, i64* @HCI_MON_CTRL_COMMAND, align 8
  %48 = call i8* @cpu_to_le16(i64 %47)
  %49 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %12, align 8
  %50 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i8* @cpu_to_le16(i64 %51)
  %53 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %12, align 8
  %54 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @HCI_MON_HDR_SIZE, align 8
  %59 = sub nsw i64 %57, %58
  %60 = call i8* @cpu_to_le16(i64 %59)
  %61 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %12, align 8
  %62 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %63, %struct.sk_buff** %6, align 8
  br label %64

64:                                               ; preds = %41, %21
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %65
}

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

declare dso_local %struct.TYPE_2__* @hci_pi(%struct.sock*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned_le16(i64, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i64) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local %struct.hci_mon_hdr* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
