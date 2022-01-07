; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip4ip6_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip4ip6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.inet6_skb_parm = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.rtable = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.flowi4 = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@IPPROTO_IPIP = common dso_local global i32 0, align 4
@ICMPV6_ADDR_UNREACH = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_HOST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RTCF_LOCAL = common dso_local global i32 0, align 4
@ARPHRD_TUNNEL6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)* @ip4ip6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip4ip6_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.inet6_skb_parm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.iphdr*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.rtable*, align 8
  %22 = alloca %struct.flowi4, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @ntohl(i32 %23)
  store i64 %24, i64* %14, align 8
  store i32 0, i32* %18, align 4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %20, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = load i32, i32* @IPPROTO_IPIP, align 4
  %29 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @ip6_tnl_err(%struct.sk_buff* %27, i32 %28, %struct.inet6_skb_parm* %29, i32* %19, i32* %20, i32* %18, i64* %14, i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %17, align 4
  store i32 %35, i32* %7, align 4
  br label %214

36:                                               ; preds = %6
  %37 = load i32, i32* %18, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %214

40:                                               ; preds = %36
  %41 = load i32, i32* %19, align 4
  switch i32 %41, label %57 [
    i32 129, label %42
    i32 128, label %50
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* @ICMPV6_ADDR_UNREACH, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %214

47:                                               ; preds = %42
  %48 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* @ICMP_HOST_UNREACH, align 4
  store i32 %49, i32* %20, align 4
  br label %58

50:                                               ; preds = %40
  %51 = load i32, i32* %20, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %214

54:                                               ; preds = %50
  %55 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  store i32 %56, i32* %20, align 4
  br label %58

57:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %214

58:                                               ; preds = %54, %47
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 12
  %63 = trunc i64 %62 to i32
  %64 = call i32 @pskb_may_pull(%struct.sk_buff* %59, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %214

67:                                               ; preds = %58
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = load i32, i32* @GFP_ATOMIC, align 4
  %70 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %68, i32 %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %16, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %214

74:                                               ; preds = %67
  %75 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %76 = call i32 @skb_dst_drop(%struct.sk_buff* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @skb_pull(%struct.sk_buff* %77, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %81 = call i32 @skb_reset_network_header(%struct.sk_buff* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %83 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %82)
  store %struct.iphdr* %83, %struct.iphdr** %15, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = call i32 @dev_net(%struct.TYPE_10__* %86)
  %88 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %89 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IPPROTO_IPIP, align 4
  %92 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %93 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @RT_TOS(i32 %94)
  %96 = call %struct.rtable* @ip_route_output_ports(i32 %87, %struct.flowi4* %22, i32* null, i32 %90, i32 0, i32 0, i32 0, i32 %91, i32 %95, i32 0)
  store %struct.rtable* %96, %struct.rtable** %21, align 8
  %97 = load %struct.rtable*, %struct.rtable** %21, align 8
  %98 = call i64 @IS_ERR(%struct.rtable* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %74
  br label %211

101:                                              ; preds = %74
  %102 = load %struct.rtable*, %struct.rtable** %21, align 8
  %103 = getelementptr inbounds %struct.rtable, %struct.rtable* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %107, align 8
  %108 = load %struct.rtable*, %struct.rtable** %21, align 8
  %109 = call i32 @ip_rt_put(%struct.rtable* %108)
  %110 = load %struct.rtable*, %struct.rtable** %21, align 8
  %111 = getelementptr inbounds %struct.rtable, %struct.rtable* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @RTCF_LOCAL, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %158

116:                                              ; preds = %101
  %117 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = call i32 @dev_net(%struct.TYPE_10__* %119)
  %121 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %122 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %125 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IPPROTO_IPIP, align 4
  %128 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %129 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @RT_TOS(i32 %130)
  %132 = call %struct.rtable* @ip_route_output_ports(i32 %120, %struct.flowi4* %22, i32* null, i32 %123, i32 %126, i32 0, i32 0, i32 %127, i32 %131, i32 0)
  store %struct.rtable* %132, %struct.rtable** %21, align 8
  %133 = load %struct.rtable*, %struct.rtable** %21, align 8
  %134 = call i64 @IS_ERR(%struct.rtable* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %116
  %137 = load %struct.rtable*, %struct.rtable** %21, align 8
  %138 = getelementptr inbounds %struct.rtable, %struct.rtable* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @ARPHRD_TUNNEL6, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %136, %116
  %146 = load %struct.rtable*, %struct.rtable** %21, align 8
  %147 = call i64 @IS_ERR(%struct.rtable* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = load %struct.rtable*, %struct.rtable** %21, align 8
  %151 = call i32 @ip_rt_put(%struct.rtable* %150)
  br label %152

152:                                              ; preds = %149, %145
  br label %211

153:                                              ; preds = %136
  %154 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %155 = load %struct.rtable*, %struct.rtable** %21, align 8
  %156 = getelementptr inbounds %struct.rtable, %struct.rtable* %155, i32 0, i32 1
  %157 = call i32 @skb_dst_set(%struct.sk_buff* %154, %struct.TYPE_8__* %156)
  br label %185

158:                                              ; preds = %101
  %159 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %160 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %161 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %164 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %167 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = call i64 @ip_route_input(%struct.sk_buff* %159, i32 %162, i32 %165, i32 %168, %struct.TYPE_10__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %158
  %175 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %176 = call %struct.TYPE_9__* @skb_dst(%struct.sk_buff* %175)
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @ARPHRD_TUNNEL6, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %174, %158
  br label %211

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %153
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %204

189:                                              ; preds = %185
  %190 = load i32, i32* %20, align 4
  %191 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %204

193:                                              ; preds = %189
  %194 = load i64, i64* %14, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %196 = call %struct.TYPE_9__* @skb_dst(%struct.sk_buff* %195)
  %197 = call i64 @dst_mtu(%struct.TYPE_9__* %196)
  %198 = icmp sgt i64 %194, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  br label %211

200:                                              ; preds = %193
  %201 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %202 = load i64, i64* %14, align 8
  %203 = call i32 @skb_dst_update_pmtu(%struct.sk_buff* %201, i64 %202)
  br label %204

204:                                              ; preds = %200, %189, %185
  %205 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %206 = load i32, i32* %19, align 4
  %207 = load i32, i32* %20, align 4
  %208 = load i64, i64* %14, align 8
  %209 = call i32 @htonl(i64 %208)
  %210 = call i32 @icmp_send(%struct.sk_buff* %205, i32 %206, i32 %207, i32 %209)
  br label %211

211:                                              ; preds = %204, %199, %183, %152, %100
  %212 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %213 = call i32 @kfree_skb(%struct.sk_buff* %212)
  store i32 0, i32* %7, align 4
  br label %214

214:                                              ; preds = %211, %73, %66, %57, %53, %46, %39, %34
  %215 = load i32, i32* %7, align 4
  ret i32 %215
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @ip6_tnl_err(%struct.sk_buff*, i32, %struct.inet6_skb_parm*, i32*, i32*, i32*, i64*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.rtable* @ip_route_output_ports(i32, %struct.flowi4*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_net(%struct.TYPE_10__*) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_8__*) #1

declare dso_local i64 @ip_route_input(%struct.sk_buff*, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @dst_mtu(%struct.TYPE_9__*) #1

declare dso_local i32 @skb_dst_update_pmtu(%struct.sk_buff*, i64) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
