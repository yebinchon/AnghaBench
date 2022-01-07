; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt_util.c_mgmt_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt_util.c_mgmt_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mgmt_hdr = type { i8*, i8*, i8* }
%struct.mgmt_ev_cmd_complete = type { i32, i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"sock %p\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MGMT_EV_CMD_COMPLETE = common dso_local global i32 0, align 4
@HCI_CHANNEL_MONITOR = common dso_local global i32 0, align 4
@HCI_SOCK_TRUSTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_cmd_complete(%struct.sock* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.mgmt_hdr*, align 8
  %17 = alloca %struct.mgmt_ev_cmd_complete*, align 8
  %18 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.sock* %19)
  %21 = load i64, i64* %13, align 8
  %22 = add i64 40, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sk_buff* @alloc_skb(i32 %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %14, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %115

31:                                               ; preds = %6
  %32 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %33 = call i8* @skb_put(%struct.sk_buff* %32, i32 24)
  %34 = bitcast i8* %33 to %struct.mgmt_hdr*
  store %struct.mgmt_hdr* %34, %struct.mgmt_hdr** %16, align 8
  %35 = load i32, i32* @MGMT_EV_CMD_COMPLETE, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %16, align 8
  %38 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %16, align 8
  %42 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i64, i64* %13, align 8
  %44 = add i64 16, %43
  %45 = trunc i64 %44 to i32
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %16, align 8
  %48 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %50 = load i64, i64* %13, align 8
  %51 = add i64 16, %50
  %52 = trunc i64 %51 to i32
  %53 = call i8* @skb_put(%struct.sk_buff* %49, i32 %52)
  %54 = bitcast i8* %53 to %struct.mgmt_ev_cmd_complete*
  store %struct.mgmt_ev_cmd_complete* %54, %struct.mgmt_ev_cmd_complete** %17, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.mgmt_ev_cmd_complete*, %struct.mgmt_ev_cmd_complete** %17, align 8
  %58 = getelementptr inbounds %struct.mgmt_ev_cmd_complete, %struct.mgmt_ev_cmd_complete* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.mgmt_ev_cmd_complete*, %struct.mgmt_ev_cmd_complete** %17, align 8
  %61 = getelementptr inbounds %struct.mgmt_ev_cmd_complete, %struct.mgmt_ev_cmd_complete* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %31
  %65 = load %struct.mgmt_ev_cmd_complete*, %struct.mgmt_ev_cmd_complete** %17, align 8
  %66 = getelementptr inbounds %struct.mgmt_ev_cmd_complete, %struct.mgmt_ev_cmd_complete* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = call i32 @memcpy(i32 %67, i8* %68, i64 %69)
  br label %71

71:                                               ; preds = %64, %31
  %72 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %16, align 8
  %73 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.sock*, %struct.sock** %8, align 8
  %76 = call i32 @hci_sock_get_cookie(%struct.sock* %75)
  %77 = load i32, i32* @MGMT_EV_CMD_COMPLETE, align 4
  %78 = load i64, i64* %13, align 8
  %79 = add i64 16, %78
  %80 = trunc i64 %79 to i32
  %81 = load %struct.mgmt_ev_cmd_complete*, %struct.mgmt_ev_cmd_complete** %17, align 8
  %82 = call %struct.sk_buff* @create_monitor_ctrl_event(i8* %74, i32 %76, i32 %77, i32 %80, %struct.mgmt_ev_cmd_complete* %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %15, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %71
  %86 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %94

91:                                               ; preds = %71
  %92 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %93 = call i32 @__net_timestamp(%struct.sk_buff* %92)
  br label %94

94:                                               ; preds = %91, %85
  %95 = load %struct.sock*, %struct.sock** %8, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %97 = call i32 @sock_queue_rcv_skb(%struct.sock* %95, %struct.sk_buff* %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %102 = call i32 @kfree_skb(%struct.sk_buff* %101)
  br label %103

103:                                              ; preds = %100, %94
  %104 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32, i32* @HCI_CHANNEL_MONITOR, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %109 = load i32, i32* @HCI_SOCK_TRUSTED, align 4
  %110 = call i32 @hci_send_to_channel(i32 %107, %struct.sk_buff* %108, i32 %109, i32* null)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %112 = call i32 @kfree_skb(%struct.sk_buff* %111)
  br label %113

113:                                              ; preds = %106, %103
  %114 = load i32, i32* %18, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %113, %28
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local %struct.sk_buff* @create_monitor_ctrl_event(i8*, i32, i32, i32, %struct.mgmt_ev_cmd_complete*) #1

declare dso_local i32 @hci_sock_get_cookie(%struct.sock*) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @hci_send_to_channel(i32, %struct.sk_buff*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
