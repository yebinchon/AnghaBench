; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_input.c_ip_rcv_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_input.c_ip_rcv_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ip_options = type { i32, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.in_device = type { i32 }
%struct.TYPE_2__ = type { %struct.ip_options }

@IPSTATS_MIB_INDISCARDS = common dso_local global i32 0, align 4
@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"source route option %pI4 -> %pI4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ip_rcv_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_rcv_options(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip_options*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.in_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @skb_headroom(%struct.sk_buff* %10)
  %12 = call i64 @skb_cow(%struct.sk_buff* %9, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @dev_net(%struct.net_device* %15)
  %17 = load i32, i32* @IPSTATS_MIB_INDISCARDS, align 4
  %18 = call i32 @__IP_INC_STATS(i32 %16, i32 %17)
  br label %80

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %20)
  store %struct.iphdr* %21, %struct.iphdr** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.ip_options* %24, %struct.ip_options** %6, align 8
  %25 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %26 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 %29, 12
  %31 = trunc i64 %30 to i32
  %32 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %33 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 @dev_net(%struct.net_device* %34)
  %36 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i64 @ip_options_compile(i32 %35, %struct.ip_options* %36, %struct.sk_buff* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %19
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = call i32 @dev_net(%struct.net_device* %41)
  %43 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %44 = call i32 @__IP_INC_STATS(i32 %42, i32 %43)
  br label %80

45:                                               ; preds = %19
  %46 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %47 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %45
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %52)
  store %struct.in_device* %53, %struct.in_device** %8, align 8
  %54 = load %struct.in_device*, %struct.in_device** %8, align 8
  %55 = icmp ne %struct.in_device* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.in_device*, %struct.in_device** %8, align 8
  %58 = call i32 @IN_DEV_SOURCE_ROUTE(%struct.in_device* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %56
  %61 = load %struct.in_device*, %struct.in_device** %8, align 8
  %62 = call i64 @IN_DEV_LOG_MARTIANS(%struct.in_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %66 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %65, i32 0, i32 2
  %67 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %68 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %67, i32 0, i32 1
  %69 = call i32 @net_info_ratelimited(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %64, %60
  br label %80

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %51
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = call i64 @ip_options_rcv_srr(%struct.sk_buff* %73, %struct.net_device* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %80

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %45
  store i32 0, i32* %3, align 4
  br label %81

80:                                               ; preds = %77, %70, %40, %14
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @__IP_INC_STATS(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @ip_options_compile(i32, %struct.ip_options*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @IN_DEV_SOURCE_ROUTE(%struct.in_device*) #1

declare dso_local i64 @IN_DEV_LOG_MARTIANS(%struct.in_device*) #1

declare dso_local i32 @net_info_ratelimited(i8*, i32*, i32*) #1

declare dso_local i64 @ip_options_rcv_srr(%struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
