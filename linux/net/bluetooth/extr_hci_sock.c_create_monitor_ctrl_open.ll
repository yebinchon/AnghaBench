; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_create_monitor_ctrl_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_create_monitor_ctrl_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.sock = type { i32 }
%struct.hci_mon_hdr = type { i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i64 }

@BT_SUBSYS_VERSION = common dso_local global i32 0, align 4
@BT_SUBSYS_REVISION = common dso_local global i32 0, align 4
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@HCI_SOCK_TRUSTED = common dso_local global i32 0, align 4
@HCI_MON_HDR_SIZE = common dso_local global i64 0, align 8
@HCI_MON_CTRL_OPEN = common dso_local global i64 0, align 8
@HCI_DEV_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*)* @create_monitor_ctrl_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @create_monitor_ctrl_open(%struct.sock* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.hci_mon_hdr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.TYPE_4__* @hci_pi(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %120

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call %struct.TYPE_4__* @hci_pi(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %37 [
    i32 129, label %20
    i32 128, label %27
    i32 130, label %34
  ]

20:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  %21 = load i32, i32* @BT_SUBSYS_VERSION, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @BT_SUBSYS_REVISION, align 4
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = call i32 @put_unaligned_le16(i32 %23, i32* %25)
  br label %38

27:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  %28 = load i32, i32* @BT_SUBSYS_VERSION, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @BT_SUBSYS_REVISION, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = call i32 @put_unaligned_le16(i32 %30, i32* %32)
  br label %38

34:                                               ; preds = %15
  store i32 2, i32* %6, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %36 = call i32 @mgmt_fill_version_info(i32* %35)
  br label %38

37:                                               ; preds = %15
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %120

38:                                               ; preds = %34, %27, %20
  %39 = load i32, i32* @TASK_COMM_LEN, align 4
  %40 = add nsw i32 14, %39
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call %struct.sk_buff* @bt_skb_alloc(i32 %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %5, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %120

46:                                               ; preds = %38
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = load i32, i32* @HCI_SOCK_TRUSTED, align 4
  %49 = call i64 @hci_sock_test_flag(%struct.sock* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  store i32 %52, i32* %8, align 4
  %53 = load %struct.sock*, %struct.sock** %3, align 8
  %54 = call %struct.TYPE_4__* @hci_pi(%struct.sock* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i32* @skb_put(%struct.sk_buff* %57, i32 4)
  %59 = call i32 @put_unaligned_le32(i32 %56, i32* %58)
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i32* @skb_put(%struct.sk_buff* %61, i32 2)
  %63 = call i32 @put_unaligned_le16(i32 %60, i32* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %66 = call i32 @skb_put_data(%struct.sk_buff* %64, i32* %65, i32 12)
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i32* @skb_put(%struct.sk_buff* %68, i32 4)
  %70 = call i32 @put_unaligned_le32(i32 %67, i32* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load i32, i32* @TASK_COMM_LEN, align 4
  %73 = call i32 @skb_put_u8(%struct.sk_buff* %71, i32 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load %struct.sock*, %struct.sock** %3, align 8
  %76 = call %struct.TYPE_4__* @hci_pi(%struct.sock* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @TASK_COMM_LEN, align 4
  %80 = call i32 @skb_put_data(%struct.sk_buff* %74, i32* %78, i32 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @__net_timestamp(%struct.sk_buff* %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load i64, i64* @HCI_MON_HDR_SIZE, align 8
  %85 = call %struct.hci_mon_hdr* @skb_push(%struct.sk_buff* %83, i64 %84)
  store %struct.hci_mon_hdr* %85, %struct.hci_mon_hdr** %4, align 8
  %86 = load i64, i64* @HCI_MON_CTRL_OPEN, align 8
  %87 = call i8* @cpu_to_le16(i64 %86)
  %88 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %4, align 8
  %89 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.sock*, %struct.sock** %3, align 8
  %91 = call %struct.TYPE_4__* @hci_pi(%struct.sock* %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = icmp ne %struct.TYPE_3__* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %46
  %96 = load %struct.sock*, %struct.sock** %3, align 8
  %97 = call %struct.TYPE_4__* @hci_pi(%struct.sock* %96)
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @cpu_to_le16(i64 %101)
  %103 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %4, align 8
  %104 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %110

105:                                              ; preds = %46
  %106 = load i64, i64* @HCI_DEV_NONE, align 8
  %107 = call i8* @cpu_to_le16(i64 %106)
  %108 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %4, align 8
  %109 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %105, %95
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @HCI_MON_HDR_SIZE, align 8
  %115 = sub nsw i64 %113, %114
  %116 = call i8* @cpu_to_le16(i64 %115)
  %117 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %4, align 8
  %118 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %119, %struct.sk_buff** %2, align 8
  br label %120

120:                                              ; preds = %110, %45, %37, %14
  %121 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %121
}

declare dso_local %struct.TYPE_4__* @hci_pi(%struct.sock*) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @mgmt_fill_version_info(i32*) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i64 @hci_sock_test_flag(%struct.sock*, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local %struct.hci_mon_hdr* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
