; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt_util.c_mgmt_cmd_status.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt_util.c_mgmt_cmd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mgmt_hdr = type { i8*, i8*, i8* }
%struct.mgmt_ev_cmd_status = type { i8*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"sock %p, index %u, cmd %u, status %u\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MGMT_EV_CMD_STATUS = common dso_local global i32 0, align 4
@HCI_CHANNEL_MONITOR = common dso_local global i32 0, align 4
@HCI_SOCK_TRUSTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_cmd_status(%struct.sock* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.mgmt_hdr*, align 8
  %13 = alloca %struct.mgmt_ev_cmd_status*, align 8
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.sock* %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sk_buff* @alloc_skb(i32 40, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %92

27:                                               ; preds = %4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = call i8* @skb_put(%struct.sk_buff* %28, i32 24)
  %30 = bitcast i8* %29 to %struct.mgmt_hdr*
  store %struct.mgmt_hdr* %30, %struct.mgmt_hdr** %12, align 8
  %31 = load i32, i32* @MGMT_EV_CMD_STATUS, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %12, align 8
  %34 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %12, align 8
  %38 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = call i8* @cpu_to_le16(i32 16)
  %40 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %12, align 8
  %41 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = call i8* @skb_put(%struct.sk_buff* %42, i32 16)
  %44 = bitcast i8* %43 to %struct.mgmt_ev_cmd_status*
  store %struct.mgmt_ev_cmd_status* %44, %struct.mgmt_ev_cmd_status** %13, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.mgmt_ev_cmd_status*, %struct.mgmt_ev_cmd_status** %13, align 8
  %47 = getelementptr inbounds %struct.mgmt_ev_cmd_status, %struct.mgmt_ev_cmd_status* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = load %struct.mgmt_ev_cmd_status*, %struct.mgmt_ev_cmd_status** %13, align 8
  %51 = getelementptr inbounds %struct.mgmt_ev_cmd_status, %struct.mgmt_ev_cmd_status* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %12, align 8
  %53 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = call i32 @hci_sock_get_cookie(%struct.sock* %55)
  %57 = load i32, i32* @MGMT_EV_CMD_STATUS, align 4
  %58 = load %struct.mgmt_ev_cmd_status*, %struct.mgmt_ev_cmd_status** %13, align 8
  %59 = call %struct.sk_buff* @create_monitor_ctrl_event(i8* %54, i32 %56, i32 %57, i32 16, %struct.mgmt_ev_cmd_status* %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %11, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %27
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %71

68:                                               ; preds = %27
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = call i32 @__net_timestamp(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.sock*, %struct.sock** %6, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %74 = call i32 @sock_queue_rcv_skb(%struct.sock* %72, %struct.sk_buff* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  br label %80

80:                                               ; preds = %77, %71
  %81 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %82 = icmp ne %struct.sk_buff* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* @HCI_CHANNEL_MONITOR, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %86 = load i32, i32* @HCI_SOCK_TRUSTED, align 4
  %87 = call i32 @hci_send_to_channel(i32 %84, %struct.sk_buff* %85, i32 %86, i32* null)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %89 = call i32 @kfree_skb(%struct.sk_buff* %88)
  br label %90

90:                                               ; preds = %83, %80
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %24
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.sk_buff* @create_monitor_ctrl_event(i8*, i32, i32, i32, %struct.mgmt_ev_cmd_status*) #1

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
