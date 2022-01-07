; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_acldata_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_acldata_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.hci_acl_hdr = type { i32 }
%struct.hci_conn = type { i32 }

@HCI_ACL_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s len %d handle 0x%4.4x flags 0x%4.4x\00", align 1
@BT_POWER_FORCE_ACTIVE_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"ACL packet for unknown connection handle %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_acldata_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_acldata_packet(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_acl_hdr*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.hci_acl_hdr*
  store %struct.hci_acl_hdr* %13, %struct.hci_acl_hdr** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @HCI_ACL_HDR_SIZE, align 4
  %16 = call i32 @skb_pull(%struct.sk_buff* %14, i32 %15)
  %17 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__le16_to_cpu(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @hci_flags(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @hci_handle(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @BT_DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %40 = call i32 @hci_dev_lock(%struct.hci_dev* %39)
  %41 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %41, i32 %42)
  store %struct.hci_conn* %43, %struct.hci_conn** %6, align 8
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = call i32 @hci_dev_unlock(%struct.hci_dev* %44)
  %46 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %47 = icmp ne %struct.hci_conn* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %2
  %49 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %50 = load i32, i32* @BT_POWER_FORCE_ACTIVE_OFF, align 4
  %51 = call i32 @hci_conn_enter_active_mode(%struct.hci_conn* %49, i32 %50)
  %52 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @l2cap_recv_acldata(%struct.hci_conn* %52, %struct.sk_buff* %53, i32 %54)
  br label %63

56:                                               ; preds = %2
  %57 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @bt_dev_err(%struct.hci_dev* %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @kfree_skb(%struct.sk_buff* %61)
  br label %63

63:                                               ; preds = %60, %48
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_flags(i32) #1

declare dso_local i32 @hci_handle(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @hci_conn_enter_active_mode(%struct.hci_conn*, i32) #1

declare dso_local i32 @l2cap_recv_acldata(%struct.hci_conn*, %struct.sk_buff*, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
