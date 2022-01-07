; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_get_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_get_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.hci_ev_cmd_complete = type { i32 }
%struct.hci_event_hdr = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"too short HCI event\00", align 1
@HCI_EVENT_HDR_SIZE = common dso_local global i32 0, align 4
@HCI_EV_CMD_STATUS = common dso_local global i64 0, align 8
@HCI_EV_CMD_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"last event is not cmd complete (0x%2.2x)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"too short cmd_complete event\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"opcode doesn't match (0x%2.2x != 0x%2.2x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i64, i64, %struct.sk_buff*)* @hci_get_cmd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_get_cmd_complete(%struct.hci_dev* %0, i64 %1, i64 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.hci_ev_cmd_complete*, align 8
  %11 = alloca %struct.hci_event_hdr*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %93

15:                                               ; preds = %4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 8
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %23 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %93

24:                                               ; preds = %15
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.hci_event_hdr*
  store %struct.hci_event_hdr* %29, %struct.hci_event_hdr** %11, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = load i32, i32* @HCI_EVENT_HDR_SIZE, align 4
  %32 = call i32 @skb_pull(%struct.sk_buff* %30, i32 %31)
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  %36 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %11, align 8
  %37 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %93

42:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %93

43:                                               ; preds = %24
  %44 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %11, align 8
  %45 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HCI_EV_CMD_STATUS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %93

50:                                               ; preds = %43
  %51 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %11, align 8
  %52 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HCI_EV_CMD_COMPLETE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %58 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %11, align 8
  %59 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  store i32 0, i32* %5, align 4
  br label %93

62:                                               ; preds = %50
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 4
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %70 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %93

71:                                               ; preds = %62
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = bitcast i8* %75 to %struct.hci_ev_cmd_complete*
  store %struct.hci_ev_cmd_complete* %76, %struct.hci_ev_cmd_complete** %10, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = call i32 @skb_pull(%struct.sk_buff* %77, i32 4)
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.hci_ev_cmd_complete*, %struct.hci_ev_cmd_complete** %10, align 8
  %81 = getelementptr inbounds %struct.hci_ev_cmd_complete, %struct.hci_ev_cmd_complete* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @__le16_to_cpu(i32 %82)
  %84 = icmp ne i64 %79, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %71
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.hci_ev_cmd_complete*, %struct.hci_ev_cmd_complete** %10, align 8
  %88 = getelementptr inbounds %struct.hci_ev_cmd_complete, %struct.hci_ev_cmd_complete* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @__le16_to_cpu(i32 %89)
  %91 = call i32 @BT_DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %86, i64 %90)
  store i32 0, i32* %5, align 4
  br label %93

92:                                               ; preds = %71
  store i32 1, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %85, %68, %56, %49, %42, %41, %21, %14
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
