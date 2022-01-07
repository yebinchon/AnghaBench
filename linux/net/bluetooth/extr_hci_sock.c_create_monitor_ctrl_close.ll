; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_create_monitor_ctrl_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_create_monitor_ctrl_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.sock = type { i32 }
%struct.hci_mon_hdr = type { i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@HCI_MON_HDR_SIZE = common dso_local global i64 0, align 8
@HCI_MON_CTRL_CLOSE = common dso_local global i64 0, align 8
@HCI_DEV_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*)* @create_monitor_ctrl_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @create_monitor_ctrl_close(%struct.sock* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.hci_mon_hdr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.TYPE_4__* @hci_pi(%struct.sock* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %72

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.TYPE_4__* @hci_pi(%struct.sock* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %18 [
    i32 129, label %17
    i32 128, label %17
    i32 130, label %17
  ]

17:                                               ; preds = %12, %12, %12
  br label %19

18:                                               ; preds = %12
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %72

19:                                               ; preds = %17
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.sk_buff* @bt_skb_alloc(i32 4, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %72

25:                                               ; preds = %19
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call %struct.TYPE_4__* @hci_pi(%struct.sock* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @skb_put(%struct.sk_buff* %30, i32 4)
  %32 = call i32 @put_unaligned_le32(i32 %29, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @__net_timestamp(%struct.sk_buff* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load i64, i64* @HCI_MON_HDR_SIZE, align 8
  %37 = call %struct.hci_mon_hdr* @skb_push(%struct.sk_buff* %35, i64 %36)
  store %struct.hci_mon_hdr* %37, %struct.hci_mon_hdr** %4, align 8
  %38 = load i64, i64* @HCI_MON_CTRL_CLOSE, align 8
  %39 = call i8* @cpu_to_le16(i64 %38)
  %40 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %4, align 8
  %41 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = call %struct.TYPE_4__* @hci_pi(%struct.sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = icmp ne %struct.TYPE_3__* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %25
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = call %struct.TYPE_4__* @hci_pi(%struct.sock* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @cpu_to_le16(i64 %53)
  %55 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %4, align 8
  %56 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %62

57:                                               ; preds = %25
  %58 = load i64, i64* @HCI_DEV_NONE, align 8
  %59 = call i8* @cpu_to_le16(i64 %58)
  %60 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %4, align 8
  %61 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %57, %47
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HCI_MON_HDR_SIZE, align 8
  %67 = sub nsw i64 %65, %66
  %68 = call i8* @cpu_to_le16(i64 %67)
  %69 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %4, align 8
  %70 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %71, %struct.sk_buff** %2, align 8
  br label %72

72:                                               ; preds = %62, %24, %18, %11
  %73 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %73
}

declare dso_local %struct.TYPE_4__* @hci_pi(%struct.sock*) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local %struct.hci_mon_hdr* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
