; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.flowi = type { i32 }
%struct.ip_tunnel = type { i32, %struct.ip_tunnel_parm }
%struct.ip_tunnel_parm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dst_entry = type { %struct.net_device*, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@ICMPV6_PKT_TOOBIG = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.flowi*)* @vti_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vti_xmit(%struct.sk_buff* %0, %struct.net_device* %1, %struct.flowi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.ip_tunnel*, align 8
  %9 = alloca %struct.ip_tunnel_parm*, align 8
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %15)
  store %struct.ip_tunnel* %16, %struct.ip_tunnel** %8, align 8
  %17 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %18 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %17, i32 0, i32 1
  store %struct.ip_tunnel_parm* %18, %struct.ip_tunnel_parm** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %19)
  store %struct.dst_entry* %20, %struct.dst_entry** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %25 = icmp ne %struct.dst_entry* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %165

32:                                               ; preds = %3
  %33 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %34 = call i32 @dst_hold(%struct.dst_entry* %33)
  %35 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %36 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %39 = load %struct.flowi*, %struct.flowi** %7, align 8
  %40 = call %struct.dst_entry* @xfrm_lookup(i32 %37, %struct.dst_entry* %38, %struct.flowi* %39, i32* null, i32 0)
  store %struct.dst_entry* %40, %struct.dst_entry** %10, align 8
  %41 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %42 = call i64 @IS_ERR(%struct.dst_entry* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %165

50:                                               ; preds = %32
  %51 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %52 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %9, align 8
  %55 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %9, align 8
  %59 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @vti_state_check(i32 %53, i32 %57, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %50
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %71 = call i32 @dst_release(%struct.dst_entry* %70)
  br label %165

72:                                               ; preds = %50
  %73 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %74 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %73, i32 0, i32 0
  %75 = load %struct.net_device*, %struct.net_device** %74, align 8
  store %struct.net_device* %75, %struct.net_device** %11, align 8
  %76 = load %struct.net_device*, %struct.net_device** %11, align 8
  %77 = load %struct.net_device*, %struct.net_device** %6, align 8
  %78 = icmp eq %struct.net_device* %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %81 = call i32 @dst_release(%struct.dst_entry* %80)
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %168

87:                                               ; preds = %72
  %88 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %89 = call i32 @dst_mtu(%struct.dst_entry* %88)
  store i32 %89, i32* %14, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %126

95:                                               ; preds = %87
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @skb_dst_update_pmtu(%struct.sk_buff* %96, i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @ETH_P_IP, align 4
  %103 = call i64 @htons(i32 %102)
  %104 = icmp eq i64 %101, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %95
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %108 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @htonl(i32 %109)
  %111 = call i32 @icmp_send(%struct.sk_buff* %106, i32 %107, i32 %108, i32 %110)
  br label %123

112:                                              ; preds = %95
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @IPV6_MIN_MTU, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @IPV6_MIN_MTU, align 4
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %116, %112
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = load i32, i32* @ICMPV6_PKT_TOOBIG, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @icmpv6_send(%struct.sk_buff* %119, i32 %120, i32 0, i32 %121)
  br label %123

123:                                              ; preds = %118, %105
  %124 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %125 = call i32 @dst_release(%struct.dst_entry* %124)
  br label %168

126:                                              ; preds = %87
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %129 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.net_device*, %struct.net_device** %6, align 8
  %132 = call i32 @dev_net(%struct.net_device* %131)
  %133 = call i32 @net_eq(i32 %130, i32 %132)
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i32 @skb_scrub_packet(%struct.sk_buff* %127, i32 %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %140 = call i32 @skb_dst_set(%struct.sk_buff* %138, %struct.dst_entry* %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %141)
  %143 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %142, i32 0, i32 0
  %144 = load %struct.net_device*, %struct.net_device** %143, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 3
  store %struct.net_device* %144, %struct.net_device** %146, align 8
  %147 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %148 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = call i32 @dst_output(i32 %149, i32 %152, %struct.sk_buff* %153)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i64 @net_xmit_eval(i32 %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %126
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %13, align 4
  br label %160

160:                                              ; preds = %158, %126
  %161 = load %struct.net_device*, %struct.net_device** %6, align 8
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @iptunnel_xmit_stats(%struct.net_device* %161, i32 %162)
  %164 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %164, i32* %4, align 4
  br label %177

165:                                              ; preds = %64, %44, %26
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = call i32 @dst_link_failure(%struct.sk_buff* %166)
  br label %168

168:                                              ; preds = %165, %123, %79
  %169 = load %struct.net_device*, %struct.net_device** %6, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  %174 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %175 = call i32 @kfree_skb(%struct.sk_buff* %174)
  %176 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %168, %160
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @dst_hold(%struct.dst_entry*) #1

declare dso_local %struct.dst_entry* @xfrm_lookup(i32, %struct.dst_entry*, %struct.flowi*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @vti_state_check(i32, i32, i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @skb_dst_update_pmtu(%struct.sk_buff*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_scrub_packet(%struct.sk_buff*, i32) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @dst_output(i32, i32, %struct.sk_buff*) #1

declare dso_local i64 @net_xmit_eval(i32) #1

declare dso_local i32 @iptunnel_xmit_stats(%struct.net_device*, i32) #1

declare dso_local i32 @dst_link_failure(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
