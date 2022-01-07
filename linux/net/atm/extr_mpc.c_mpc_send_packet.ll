; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_mpc_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_mpc_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.mpoa_client = type { i32, i32, i64 }
%struct.ethhdr = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"(%s) no MPC found\0A\00", align 1
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @mpc_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_send_packet(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mpoa_client*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device* %9)
  store %struct.mpoa_client* %10, %struct.mpoa_client** %6, align 8
  %11 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %12 = icmp eq %struct.mpoa_client* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %94

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ethhdr*
  store %struct.ethhdr* %22, %struct.ethhdr** %7, align 8
  %23 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %24 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @ETH_P_IP, align 4
  %27 = call i64 @htons(i32 %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %94

30:                                               ; preds = %18
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ETH_HLEN, align 8
  %35 = add i64 %34, 4
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %94

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i64, i64* @ETH_HLEN, align 8
  %41 = call i32 @skb_set_network_header(%struct.sk_buff* %39, i64 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ETH_HLEN, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %45, %51
  %53 = icmp slt i64 %44, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %38
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 5
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %38
  br label %94

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %90, %61
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %65 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %62
  %69 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %70 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %73 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %74, %78
  %80 = call i64 @ether_addr_equal(i32 %71, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %68
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %85 = call i64 @send_via_shortcut(%struct.sk_buff* %83, %struct.mpoa_client* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %88, i32* %3, align 4
  br label %101

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %68
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %62

93:                                               ; preds = %62
  br label %94

94:                                               ; preds = %93, %60, %37, %29, %13
  %95 = load %struct.mpoa_client*, %struct.mpoa_client** %6, align 8
  %96 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = call i32 @__netdev_start_xmit(i32 %97, %struct.sk_buff* %98, %struct.net_device* %99, i32 0)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %94, %87
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ether_addr_equal(i32, i64) #1

declare dso_local i64 @send_via_shortcut(%struct.sk_buff*, %struct.mpoa_client*) #1

declare dso_local i32 @__netdev_start_xmit(i32, %struct.sk_buff*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
