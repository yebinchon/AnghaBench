; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_create_monitor_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_create_monitor_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.hci_mon_hdr = type { i8*, i8*, i8* }
%struct.hci_mon_new_index = type { i32, i32, i32, i32 }
%struct.hci_mon_index_info = type { i8*, i32 }

@HCI_MON_NEW_INDEX_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@HCI_MON_NEW_INDEX = common dso_local global i32 0, align 4
@HCI_MON_DEL_INDEX = common dso_local global i32 0, align 4
@HCI_MON_INDEX_INFO_SIZE = common dso_local global i32 0, align 4
@HCI_MON_INDEX_INFO = common dso_local global i32 0, align 4
@HCI_MON_OPEN_INDEX = common dso_local global i32 0, align 4
@HCI_MON_CLOSE_INDEX = common dso_local global i32 0, align 4
@HCI_MON_HDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hci_dev*, i32)* @create_monitor_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @create_monitor_event(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_mon_hdr*, align 8
  %7 = alloca %struct.hci_mon_new_index*, align 8
  %8 = alloca %struct.hci_mon_index_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %107 [
    i32 131, label %12
    i32 129, label %48
    i32 130, label %57
    i32 128, label %64
    i32 132, label %89
    i32 133, label %98
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @HCI_MON_NEW_INDEX_SIZE, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @bt_skb_alloc(i32 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %132

19:                                               ; preds = %12
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = load i32, i32* @HCI_MON_NEW_INDEX_SIZE, align 4
  %22 = call i8* @skb_put(%struct.sk_buff* %20, i32 %21)
  %23 = bitcast i8* %22 to %struct.hci_mon_new_index*
  store %struct.hci_mon_new_index* %23, %struct.hci_mon_new_index** %7, align 8
  %24 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hci_mon_new_index*, %struct.hci_mon_new_index** %7, align 8
  %28 = getelementptr inbounds %struct.hci_mon_new_index, %struct.hci_mon_new_index* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hci_mon_new_index*, %struct.hci_mon_new_index** %7, align 8
  %33 = getelementptr inbounds %struct.hci_mon_new_index, %struct.hci_mon_new_index* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.hci_mon_new_index*, %struct.hci_mon_new_index** %7, align 8
  %35 = getelementptr inbounds %struct.hci_mon_new_index, %struct.hci_mon_new_index* %34, i32 0, i32 1
  %36 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 2
  %38 = call i32 @bacpy(i32* %35, i32* %37)
  %39 = load %struct.hci_mon_new_index*, %struct.hci_mon_new_index** %7, align 8
  %40 = getelementptr inbounds %struct.hci_mon_new_index, %struct.hci_mon_new_index* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i32 %41, i32 %44, i32 8)
  %46 = load i32, i32* @HCI_MON_NEW_INDEX, align 4
  %47 = call i8* @cpu_to_le16(i32 %46)
  store i8* %47, i8** %10, align 8
  br label %108

48:                                               ; preds = %2
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call %struct.sk_buff* @bt_skb_alloc(i32 0, i32 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %9, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %132

54:                                               ; preds = %48
  %55 = load i32, i32* @HCI_MON_DEL_INDEX, align 4
  %56 = call i8* @cpu_to_le16(i32 %55)
  store i8* %56, i8** %10, align 8
  br label %108

57:                                               ; preds = %2
  %58 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 65535
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %132

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %2, %63
  %65 = load i32, i32* @HCI_MON_INDEX_INFO_SIZE, align 4
  %66 = load i32, i32* @GFP_ATOMIC, align 4
  %67 = call %struct.sk_buff* @bt_skb_alloc(i32 %65, i32 %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %9, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %132

71:                                               ; preds = %64
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = load i32, i32* @HCI_MON_INDEX_INFO_SIZE, align 4
  %74 = call i8* @skb_put(%struct.sk_buff* %72, i32 %73)
  %75 = bitcast i8* %74 to %struct.hci_mon_index_info*
  store %struct.hci_mon_index_info* %75, %struct.hci_mon_index_info** %8, align 8
  %76 = load %struct.hci_mon_index_info*, %struct.hci_mon_index_info** %8, align 8
  %77 = getelementptr inbounds %struct.hci_mon_index_info, %struct.hci_mon_index_info* %76, i32 0, i32 1
  %78 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %78, i32 0, i32 2
  %80 = call i32 @bacpy(i32* %77, i32* %79)
  %81 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.hci_mon_index_info*, %struct.hci_mon_index_info** %8, align 8
  %86 = getelementptr inbounds %struct.hci_mon_index_info, %struct.hci_mon_index_info* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @HCI_MON_INDEX_INFO, align 4
  %88 = call i8* @cpu_to_le16(i32 %87)
  store i8* %88, i8** %10, align 8
  br label %108

89:                                               ; preds = %2
  %90 = load i32, i32* @GFP_ATOMIC, align 4
  %91 = call %struct.sk_buff* @bt_skb_alloc(i32 0, i32 %90)
  store %struct.sk_buff* %91, %struct.sk_buff** %9, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %93 = icmp ne %struct.sk_buff* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %132

95:                                               ; preds = %89
  %96 = load i32, i32* @HCI_MON_OPEN_INDEX, align 4
  %97 = call i8* @cpu_to_le16(i32 %96)
  store i8* %97, i8** %10, align 8
  br label %108

98:                                               ; preds = %2
  %99 = load i32, i32* @GFP_ATOMIC, align 4
  %100 = call %struct.sk_buff* @bt_skb_alloc(i32 0, i32 %99)
  store %struct.sk_buff* %100, %struct.sk_buff** %9, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %102 = icmp ne %struct.sk_buff* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %132

104:                                              ; preds = %98
  %105 = load i32, i32* @HCI_MON_CLOSE_INDEX, align 4
  %106 = call i8* @cpu_to_le16(i32 %105)
  store i8* %106, i8** %10, align 8
  br label %108

107:                                              ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %132

108:                                              ; preds = %104, %95, %71, %54, %19
  %109 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %110 = call i32 @__net_timestamp(%struct.sk_buff* %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = load i32, i32* @HCI_MON_HDR_SIZE, align 4
  %113 = call %struct.hci_mon_hdr* @skb_push(%struct.sk_buff* %111, i32 %112)
  store %struct.hci_mon_hdr* %113, %struct.hci_mon_hdr** %6, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %6, align 8
  %116 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %118 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @cpu_to_le16(i32 %119)
  %121 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %6, align 8
  %122 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @HCI_MON_HDR_SIZE, align 4
  %127 = sub nsw i32 %125, %126
  %128 = call i8* @cpu_to_le16(i32 %127)
  %129 = load %struct.hci_mon_hdr*, %struct.hci_mon_hdr** %6, align 8
  %130 = getelementptr inbounds %struct.hci_mon_hdr, %struct.hci_mon_hdr* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %131, %struct.sk_buff** %3, align 8
  br label %132

132:                                              ; preds = %108, %107, %103, %94, %70, %62, %53, %18
  %133 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %133
}

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local %struct.hci_mon_hdr* @skb_push(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
