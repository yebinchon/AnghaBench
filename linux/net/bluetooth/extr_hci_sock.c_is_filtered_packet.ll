; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_is_filtered_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_is_filtered_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_filter = type { i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.hci_filter }

@HCI_FLT_TYPE_BITS = common dso_local global i32 0, align 4
@HCI_EVENT_PKT = common dso_local global i32 0, align 4
@HCI_FLT_EVENT_BITS = common dso_local global i32 0, align 4
@HCI_EV_CMD_COMPLETE = common dso_local global i32 0, align 4
@HCI_EV_CMD_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @is_filtered_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_filtered_packet(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hci_filter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.TYPE_2__* @hci_pi(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.hci_filter* %11, %struct.hci_filter** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %12)
  %14 = load i32, i32* @HCI_FLT_TYPE_BITS, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.hci_filter*, %struct.hci_filter** %6, align 8
  %18 = getelementptr inbounds %struct.hci_filter, %struct.hci_filter* %17, i32 0, i32 2
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %81

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %23)
  %25 = load i32, i32* @HCI_EVENT_PKT, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %81

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HCI_FLT_EVENT_BITS, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.hci_filter*, %struct.hci_filter** %6, align 8
  %38 = getelementptr inbounds %struct.hci_filter, %struct.hci_filter* %37, i32 0, i32 1
  %39 = call i32 @hci_test_bit(i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %81

42:                                               ; preds = %28
  %43 = load %struct.hci_filter*, %struct.hci_filter** %6, align 8
  %44 = getelementptr inbounds %struct.hci_filter, %struct.hci_filter* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %81

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @HCI_EV_CMD_COMPLETE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.hci_filter*, %struct.hci_filter** %6, align 8
  %54 = getelementptr inbounds %struct.hci_filter, %struct.hci_filter* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 3
  %60 = inttoptr i64 %59 to i32*
  %61 = call i64 @get_unaligned(i32* %60)
  %62 = icmp ne i64 %55, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %81

64:                                               ; preds = %52, %48
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @HCI_EV_CMD_STATUS, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load %struct.hci_filter*, %struct.hci_filter** %6, align 8
  %70 = getelementptr inbounds %struct.hci_filter, %struct.hci_filter* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 4
  %76 = inttoptr i64 %75 to i32*
  %77 = call i64 @get_unaligned(i32* %76)
  %78 = icmp ne i64 %71, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %81

80:                                               ; preds = %68, %64
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %79, %63, %47, %41, %27, %21
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_2__* @hci_pi(%struct.sock*) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_test_bit(i32, i32*) #1

declare dso_local i64 @get_unaligned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
