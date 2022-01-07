; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_sig_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_sig_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i64 }
%struct.sk_buff = type { i32, i32* }
%struct.l2cap_cmd_hdr = type { i32, i32, i32 }
%struct.l2cap_cmd_rej_unk = type { i32 }

@ACL_LINK = common dso_local global i64 0, align 8
@L2CAP_CMD_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"code 0x%2.2x len %d id 0x%2.2x\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"corrupted command\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Wrong link type (%d)\00", align 1
@L2CAP_REJ_NOT_UNDERSTOOD = common dso_local global i32 0, align 4
@L2CAP_COMMAND_REJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, %struct.sk_buff*)* @l2cap_sig_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_sig_channel(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.l2cap_cmd_hdr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.l2cap_cmd_rej_unk, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %13 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %12, i32 0, i32 0
  %14 = load %struct.hci_conn*, %struct.hci_conn** %13, align 8
  store %struct.hci_conn* %14, %struct.hci_conn** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @l2cap_raw_recv(%struct.l2cap_conn* %21, %struct.sk_buff* %22)
  %24 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %25 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ACL_LINK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %91

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %82, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @L2CAP_CMD_HDR_SIZE, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %90

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @L2CAP_CMD_HDR_SIZE, align 4
  %38 = call i32 @memcpy(%struct.l2cap_cmd_hdr* %8, i32* %36, i32 %37)
  %39 = load i32, i32* @L2CAP_CMD_HDR_SIZE, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %6, align 8
  %43 = load i32, i32* @L2CAP_CMD_HDR_SIZE, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %8, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %8, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %35
  %59 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58, %35
  %63 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %90

64:                                               ; preds = %58
  %65 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @l2cap_bredr_sig_cmd(%struct.l2cap_conn* %65, %struct.l2cap_cmd_hdr* %8, i32 %66, i32* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @BT_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @L2CAP_REJ_NOT_UNDERSTOOD, align 4
  %75 = call i32 @cpu_to_le16(i32 %74)
  %76 = getelementptr inbounds %struct.l2cap_cmd_rej_unk, %struct.l2cap_cmd_rej_unk* %11, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %78 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %8, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @L2CAP_COMMAND_REJ, align 4
  %81 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %77, i32 %79, i32 %80, i32 4, %struct.l2cap_cmd_rej_unk* %11)
  br label %82

82:                                               ; preds = %71, %64
  %83 = load i32, i32* %10, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %31

90:                                               ; preds = %62, %31
  br label %91

91:                                               ; preds = %90, %29
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call i32 @kfree_skb(%struct.sk_buff* %92)
  ret void
}

declare dso_local i32 @l2cap_raw_recv(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.l2cap_cmd_hdr*, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @l2cap_bredr_sig_cmd(%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*) #1

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
