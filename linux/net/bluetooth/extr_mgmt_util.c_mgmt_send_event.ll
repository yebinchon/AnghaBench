; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt_util.c_mgmt_send_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt_util.c_mgmt_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mgmt_hdr = type { i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MGMT_INDEX_NONE = common dso_local global i64 0, align 8
@HCI_CHANNEL_CONTROL = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_send_event(i64 %0, %struct.hci_dev* %1, i16 zeroext %2, i8* %3, i64 %4, i32 %5, %struct.sock* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sock*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.mgmt_hdr*, align 8
  store i64 %0, i64* %9, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %10, align 8
  store i16 %2, i16* %11, align 2
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.sock* %6, %struct.sock** %15, align 8
  %18 = load i64, i64* %13, align 8
  %19 = add i64 24, %18
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sk_buff* @alloc_skb(i64 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %16, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %86

27:                                               ; preds = %7
  %28 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %29 = call %struct.mgmt_hdr* @skb_put(%struct.sk_buff* %28, i32 24)
  store %struct.mgmt_hdr* %29, %struct.mgmt_hdr** %17, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i8* @cpu_to_le16(i64 %30)
  %32 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %17, align 8
  %33 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %35 = icmp ne %struct.hci_dev* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i8* @cpu_to_le16(i64 %39)
  %41 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %17, align 8
  %42 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %48

43:                                               ; preds = %27
  %44 = load i64, i64* @MGMT_INDEX_NONE, align 8
  %45 = call i8* @cpu_to_le16(i64 %44)
  %46 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %17, align 8
  %47 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %43, %36
  %49 = load i64, i64* %13, align 8
  %50 = call i8* @cpu_to_le16(i64 %49)
  %51 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %17, align 8
  %52 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @skb_put_data(%struct.sk_buff* %56, i8* %57, i64 %58)
  br label %60

60:                                               ; preds = %55, %48
  %61 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %62 = call i32 @__net_timestamp(%struct.sk_buff* %61)
  %63 = load i16, i16* %11, align 2
  %64 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.sock*, %struct.sock** %15, align 8
  %67 = call i32 @hci_send_to_channel(i16 zeroext %63, %struct.sk_buff* %64, i32 %65, %struct.sock* %66)
  %68 = load i16, i16* %11, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* @HCI_CHANNEL_CONTROL, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %60
  %74 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %79 = call i32 @skb_get_ktime(%struct.sk_buff* %78)
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.sock*, %struct.sock** %15, align 8
  %82 = call i32 @hci_send_monitor_ctrl_event(%struct.hci_dev* %74, i64 %75, i8* %76, i64 %77, i32 %79, i32 %80, %struct.sock* %81)
  br label %83

83:                                               ; preds = %73, %60
  %84 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %85 = call i32 @kfree_skb(%struct.sk_buff* %84)
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %24
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local %struct.mgmt_hdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i64) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @hci_send_to_channel(i16 zeroext, %struct.sk_buff*, i32, %struct.sock*) #1

declare dso_local i32 @hci_send_monitor_ctrl_event(%struct.hci_dev*, i64, i8*, i64, i32, i32, %struct.sock*) #1

declare dso_local i32 @skb_get_ktime(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
