; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_v4_early_demux.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_v4_early_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.TYPE_5__*, i32, %struct.sock* }
%struct.TYPE_5__ = type { i32 }
%struct.sock = type { i32, i32 }
%struct.net = type { i32 }
%struct.in_device = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32 }
%struct.udphdr = type { i32, i32 }
%struct.dst_entry = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PACKET_MULTICAST = common dso_local global i64 0, align 8
@PACKET_HOST = common dso_local global i64 0, align 8
@sock_efree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_v4_early_demux(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.in_device*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca %struct.udphdr*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = call %struct.net* @dev_net(%struct.TYPE_5__* %16)
  store %struct.net* %17, %struct.net** %4, align 8
  store %struct.in_device* null, %struct.in_device** %5, align 8
  store %struct.sock* null, %struct.sock** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call i32 @inet_sdif(%struct.sk_buff* %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i64 @skb_transport_offset(%struct.sk_buff* %26)
  %28 = add i64 %27, 8
  %29 = call i32 @pskb_may_pull(%struct.sk_buff* %25, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %164

32:                                               ; preds = %1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %33)
  store %struct.iphdr* %34, %struct.iphdr** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %35)
  store %struct.udphdr* %36, %struct.udphdr** %7, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PACKET_MULTICAST, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %32
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call %struct.in_device* @__in_dev_get_rcu(%struct.TYPE_5__* %45)
  store %struct.in_device* %46, %struct.in_device** %5, align 8
  %47 = load %struct.in_device*, %struct.in_device** %5, align 8
  %48 = icmp ne %struct.in_device* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %164

50:                                               ; preds = %42
  %51 = load %struct.in_device*, %struct.in_device** %5, align 8
  %52 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %53 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %56 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %59 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ip_check_mc_rcu(%struct.in_device* %51, i32 %54, i32 %57, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %164

65:                                               ; preds = %50
  %66 = load %struct.net*, %struct.net** %4, align 8
  %67 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %68 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %71 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %74 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %77 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call %struct.sock* @__udp4_lib_mcast_demux_lookup(%struct.net* %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %79, i32 %80)
  store %struct.sock* %81, %struct.sock** %8, align 8
  br label %106

82:                                               ; preds = %32
  %83 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PACKET_HOST, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load %struct.net*, %struct.net** %4, align 8
  %90 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %91 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %94 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %97 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %100 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call %struct.sock* @__udp4_lib_demux_lookup(%struct.net* %89, i32 %92, i32 %95, i32 %98, i32 %101, i32 %102, i32 %103)
  store %struct.sock* %104, %struct.sock** %8, align 8
  br label %105

105:                                              ; preds = %88, %82
  br label %106

106:                                              ; preds = %105, %65
  %107 = load %struct.sock*, %struct.sock** %8, align 8
  %108 = icmp ne %struct.sock* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.sock*, %struct.sock** %8, align 8
  %111 = getelementptr inbounds %struct.sock, %struct.sock* %110, i32 0, i32 1
  %112 = call i32 @refcount_inc_not_zero(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109, %106
  store i32 0, i32* %2, align 4
  br label %164

115:                                              ; preds = %109
  %116 = load %struct.sock*, %struct.sock** %8, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 3
  store %struct.sock* %116, %struct.sock** %118, align 8
  %119 = load i32, i32* @sock_efree, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.sock*, %struct.sock** %8, align 8
  %123 = getelementptr inbounds %struct.sock, %struct.sock* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call %struct.dst_entry* @READ_ONCE(i32 %124)
  store %struct.dst_entry* %125, %struct.dst_entry** %9, align 8
  %126 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %127 = icmp ne %struct.dst_entry* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %115
  %129 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %130 = call %struct.dst_entry* @dst_check(%struct.dst_entry* %129, i32 0)
  store %struct.dst_entry* %130, %struct.dst_entry** %9, align 8
  br label %131

131:                                              ; preds = %128, %115
  %132 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %133 = icmp ne %struct.dst_entry* %132, null
  br i1 %133, label %134, label %163

134:                                              ; preds = %131
  store i32 0, i32* %13, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %136 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %137 = call i32 @skb_dst_set_noref(%struct.sk_buff* %135, %struct.dst_entry* %136)
  %138 = load %struct.sock*, %struct.sock** %8, align 8
  %139 = call %struct.TYPE_6__* @inet_sk(%struct.sock* %138)
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %162, label %143

143:                                              ; preds = %134
  %144 = load %struct.in_device*, %struct.in_device** %5, align 8
  %145 = icmp ne %struct.in_device* %144, null
  br i1 %145, label %146, label %162

146:                                              ; preds = %143
  %147 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %148 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %149 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %152 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %155 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 1
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load %struct.in_device*, %struct.in_device** %5, align 8
  %161 = call i32 @ip_mc_validate_source(%struct.sk_buff* %147, i32 %150, i32 %153, i32 %156, %struct.TYPE_5__* %159, %struct.in_device* %160, i32* %13)
  store i32 %161, i32* %2, align 4
  br label %164

162:                                              ; preds = %143, %134
  br label %163

163:                                              ; preds = %162, %131
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %163, %146, %114, %64, %49, %31
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_5__*) #1

declare dso_local i32 @inet_sdif(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.TYPE_5__*) #1

declare dso_local i32 @ip_check_mc_rcu(%struct.in_device*, i32, i32, i32) #1

declare dso_local %struct.sock* @__udp4_lib_mcast_demux_lookup(%struct.net*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.sock* @__udp4_lib_demux_lookup(%struct.net*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local %struct.dst_entry* @READ_ONCE(i32) #1

declare dso_local %struct.dst_entry* @dst_check(%struct.dst_entry*, i32) #1

declare dso_local i32 @skb_dst_set_noref(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local %struct.TYPE_6__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ip_mc_validate_source(%struct.sk_buff*, i32, i32, i32, %struct.TYPE_5__*, %struct.in_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
