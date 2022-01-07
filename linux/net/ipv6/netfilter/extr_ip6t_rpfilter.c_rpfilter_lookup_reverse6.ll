; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_rpfilter.c_rpfilter_lookup_reverse6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_rpfilter.c_rpfilter_lookup_reverse6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i64 }
%struct.rt6_info = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.TYPE_3__ = type { i64 }
%struct.ipv6hdr = type { i32, i32, i32 }
%struct.flowi6 = type { i32, i64, i32, i32, i32, i32, i32 }

@IPV6_FLOWINFO_MASK = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_HAS_SADDR = common dso_local global i32 0, align 4
@XT_RPFILTER_VALID_MARK = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@XT_RPFILTER_LOOSE = common dso_local global i32 0, align 4
@RTF_REJECT = common dso_local global i32 0, align 4
@RTF_ANYCAST = common dso_local global i32 0, align 4
@RTF_LOCAL = common dso_local global i32 0, align 4
@XT_RPFILTER_ACCEPT_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.net_device*, i32)* @rpfilter_lookup_reverse6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpfilter_lookup_reverse6(%struct.net* %0, %struct.sk_buff* %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt6_info*, align 8
  %10 = alloca %struct.ipv6hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.flowi6, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %14)
  store %struct.ipv6hdr* %15, %struct.ipv6hdr** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 0
  %17 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %18 = bitcast %struct.ipv6hdr* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IPV6_FLOWINFO_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %16, align 8
  %22 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 3
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 4
  %26 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %27 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 8
  %29 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 5
  %30 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %31 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 6
  %34 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  store i32 %34, i32* %33, align 8
  %35 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %36 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %35, i32 0, i32 1
  %37 = call i64 @rpfilter_addr_unicast(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 3
  %41 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %42 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %41, i32 0, i32 1
  %43 = call i32 @memcpy(i32* %40, i32* %42, i32 4)
  %44 = load i32, i32* @RT6_LOOKUP_F_HAS_SADDR, align 4
  store i32 %44, i32* %13, align 4
  br label %46

45:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @XT_RPFILTER_VALID_MARK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  br label %56

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i32 [ %54, %51 ], [ 0, %55 ]
  %58 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %60 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %59, i32 0, i32 0
  %61 = call i64 @rpfilter_addr_linklocal(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %65 = load i32, i32* %13, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %13, align 4
  %67 = load %struct.net_device*, %struct.net_device** %7, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  br label %90

71:                                               ; preds = %56
  %72 = load %struct.net_device*, %struct.net_device** %7, align 8
  %73 = call i64 @netif_is_l3_master(%struct.net_device* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = call i64 @netif_is_l3_slave(%struct.net_device* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @XT_RPFILTER_LOOSE, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79, %75, %71
  %85 = load %struct.net_device*, %struct.net_device** %7, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 1
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %84, %79
  br label %90

90:                                               ; preds = %89, %63
  %91 = load %struct.net*, %struct.net** %5, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i64 @ip6_route_lookup(%struct.net* %91, %struct.flowi6* %12, %struct.sk_buff* %92, i32 %93)
  %95 = inttoptr i64 %94 to i8*
  %96 = bitcast i8* %95 to %struct.rt6_info*
  store %struct.rt6_info* %96, %struct.rt6_info** %9, align 8
  %97 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %98 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %150

103:                                              ; preds = %90
  %104 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %105 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @RTF_REJECT, align 4
  %108 = load i32, i32* @RTF_ANYCAST, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %150

113:                                              ; preds = %103
  %114 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %115 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @RTF_LOCAL, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @XT_RPFILTER_ACCEPT_LOCAL, align 4
  %123 = and i32 %121, %122
  store i32 %123, i32* %11, align 4
  br label %150

124:                                              ; preds = %113
  %125 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %126 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.net_device*, %struct.net_device** %128, align 8
  %130 = load %struct.net_device*, %struct.net_device** %7, align 8
  %131 = icmp eq %struct.net_device* %129, %130
  br i1 %131, label %148, label %132

132:                                              ; preds = %124
  %133 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %134 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load %struct.net_device*, %struct.net_device** %136, align 8
  %138 = call i64 @l3mdev_master_ifindex_rcu(%struct.net_device* %137)
  %139 = load %struct.net_device*, %struct.net_device** %7, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @XT_RPFILTER_LOOSE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143, %132, %124
  store i32 1, i32* %11, align 4
  br label %149

149:                                              ; preds = %148, %143
  br label %150

150:                                              ; preds = %149, %120, %112, %102
  %151 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %152 = call i32 @ip6_rt_put(%struct.rt6_info* %151)
  %153 = load i32, i32* %11, align 4
  ret i32 %153
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @rpfilter_addr_unicast(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @rpfilter_addr_linklocal(i32*) #1

declare dso_local i64 @netif_is_l3_master(%struct.net_device*) #1

declare dso_local i64 @netif_is_l3_slave(%struct.net_device*) #1

declare dso_local i64 @ip6_route_lookup(%struct.net*, %struct.flowi6*, %struct.sk_buff*, i32) #1

declare dso_local i64 @l3mdev_master_ifindex_rcu(%struct.net_device*) #1

declare dso_local i32 @ip6_rt_put(%struct.rt6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
