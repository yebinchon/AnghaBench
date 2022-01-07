; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_sig_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_sig_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i64 }
%struct.sk_buff = type { i64, i64 }
%struct.l2cap_cmd_hdr = type { i32, i32, i32 }
%struct.l2cap_cmd_rej_unk = type { i32 }

@LE_LINK = common dso_local global i64 0, align 8
@L2CAP_CMD_HDR_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"code 0x%2.2x len %d id 0x%2.2x\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"corrupted command\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Wrong link type (%d)\00", align 1
@L2CAP_REJ_NOT_UNDERSTOOD = common dso_local global i32 0, align 4
@L2CAP_COMMAND_REJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, %struct.sk_buff*)* @l2cap_le_sig_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_le_sig_channel(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca %struct.l2cap_cmd_hdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.l2cap_cmd_rej_unk, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %11 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %10, i32 0, i32 0
  %12 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  store %struct.hci_conn* %12, %struct.hci_conn** %5, align 8
  %13 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %14 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LE_LINK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %82

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @L2CAP_CMD_HDR_SIZE, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %82

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.l2cap_cmd_hdr*
  store %struct.l2cap_cmd_hdr* %31, %struct.l2cap_cmd_hdr** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i64, i64* @L2CAP_CMD_HDR_SIZE, align 8
  %34 = call i32 @skb_pull(%struct.sk_buff* %32, i64 %33)
  %35 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %36 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le16_to_cpu(i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %44 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42, i32 %45)
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %26
  %53 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %54 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52, %26
  %58 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %82

59:                                               ; preds = %52
  %60 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %61 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @l2cap_le_sig_cmd(%struct.l2cap_conn* %60, %struct.l2cap_cmd_hdr* %61, i64 %62, i64 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @BT_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @L2CAP_REJ_NOT_UNDERSTOOD, align 4
  %73 = call i32 @cpu_to_le16(i32 %72)
  %74 = getelementptr inbounds %struct.l2cap_cmd_rej_unk, %struct.l2cap_cmd_rej_unk* %9, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %76 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %77 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @L2CAP_COMMAND_REJ, align 4
  %80 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %75, i32 %78, i32 %79, i32 4, %struct.l2cap_cmd_rej_unk* %9)
  br label %81

81:                                               ; preds = %69, %59
  br label %82

82:                                               ; preds = %81, %57, %25, %18
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = call i32 @kfree_skb(%struct.sk_buff* %83)
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @l2cap_le_sig_cmd(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i64, i64) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_cmd_rej_unk*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
