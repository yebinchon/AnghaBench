; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_input.c_br_handle_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_input.c_br_handle_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%struct.net_bridge_port = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32 }

@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@RX_HANDLER_PASS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RX_HANDLER_CONSUMED = common dso_local global i32 0, align 4
@BR_VLAN_TUNNEL = common dso_local global i32 0, align 4
@BR_NO_STP = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i32 0, align 4
@NF_BR_LOCAL_IN = common dso_local global i32 0, align 4
@br_handle_local_finish = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_handle_frame(%struct.sk_buff** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff** %0, %struct.sk_buff*** %3, align 8
  %8 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %9, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PACKET_LOOPBACK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @RX_HANDLER_PASS, align 4
  store i32 %23, i32* %2, align 4
  br label %198

24:                                               ; preds = %1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @is_valid_ether_addr(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %193

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %5, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @RX_HANDLER_CONSUMED, align 4
  store i32 %39, i32* %2, align 4
  br label %198

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memset(i32 %43, i32 0, i32 4)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.net_bridge_port* @br_port_get_rcu(i32 %47)
  store %struct.net_bridge_port* %48, %struct.net_bridge_port** %4, align 8
  %49 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %50 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @BR_VLAN_TUNNEL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %40
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %58 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %59 = call i32 @nbp_vlan_group_rcu(%struct.net_bridge_port* %58)
  %60 = call i64 @br_handle_ingress_vlan_tunnel(%struct.sk_buff* %56, %struct.net_bridge_port* %57, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %193

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %40
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @is_link_local_ether_addr(i8* %65)
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %168

69:                                               ; preds = %64
  %70 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %71 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %7, align 4
  %75 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %76 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 5
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  switch i32 %83, label %132 [
    i32 0, label %84
    i32 1, label %108
    i32 14, label %109
  ]

84:                                               ; preds = %69
  %85 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %86 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %85, i32 0, i32 3
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @BR_NO_STP, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %101, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %7, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 5
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 1, %97
  %99 = and i32 %93, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92, %84
  br label %169

102:                                              ; preds = %92
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  store %struct.sk_buff* %103, %struct.sk_buff** %104, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = call i32 @__br_handle_local_finish(%struct.sk_buff* %105)
  %107 = load i32, i32* @RX_HANDLER_PASS, align 4
  store i32 %107, i32* %2, align 4
  br label %198

108:                                              ; preds = %69
  br label %193

109:                                              ; preds = %69
  %110 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %111 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %110, i32 0, i32 3
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 5
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = shl i32 1, %121
  %123 = and i32 %117, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %109
  br label %169

126:                                              ; preds = %109
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  store %struct.sk_buff* %127, %struct.sk_buff** %128, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = call i32 @__br_handle_local_finish(%struct.sk_buff* %129)
  %131 = load i32, i32* @RX_HANDLER_PASS, align 4
  store i32 %131, i32* %2, align 4
  br label %198

132:                                              ; preds = %69
  %133 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %134 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %133, i32 0, i32 3
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 5
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = shl i32 1, %144
  %146 = and i32 %140, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %132
  br label %169

149:                                              ; preds = %132
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %152 = load i32, i32* @NF_BR_LOCAL_IN, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @dev_net(i32 %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @br_handle_local_finish, align 4
  %162 = call i32 @NF_HOOK(i32 %151, i32 %152, i32 %156, i32* null, %struct.sk_buff* %157, i32 %160, i32* null, i32 %161)
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %166

164:                                              ; preds = %150
  %165 = load i32, i32* @RX_HANDLER_PASS, align 4
  store i32 %165, i32* %2, align 4
  br label %198

166:                                              ; preds = %150
  %167 = load i32, i32* @RX_HANDLER_CONSUMED, align 4
  store i32 %167, i32* %2, align 4
  br label %198

168:                                              ; preds = %64
  br label %169

169:                                              ; preds = %168, %148, %125, %101
  %170 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %171 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  switch i32 %172, label %192 [
    i32 129, label %173
    i32 128, label %173
  ]

173:                                              ; preds = %169, %169
  %174 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %175 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %174, i32 0, i32 3
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i8*, i8** %6, align 8
  %182 = call i32 @ether_addr_equal(i32 %180, i8* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %173
  %185 = load i64, i64* @PACKET_HOST, align 8
  %186 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %187 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  br label %188

188:                                              ; preds = %184, %173
  %189 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %190 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %191 = call i32 @nf_hook_bridge_pre(%struct.sk_buff* %189, %struct.sk_buff** %190)
  store i32 %191, i32* %2, align 4
  br label %198

192:                                              ; preds = %169
  br label %193

193:                                              ; preds = %192, %108, %62, %31
  %194 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %195 = call i32 @kfree_skb(%struct.sk_buff* %194)
  br label %196

196:                                              ; preds = %193
  %197 = load i32, i32* @RX_HANDLER_CONSUMED, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %196, %188, %166, %164, %126, %102, %38, %22
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.TYPE_6__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.net_bridge_port* @br_port_get_rcu(i32) #1

declare dso_local i64 @br_handle_ingress_vlan_tunnel(%struct.sk_buff*, %struct.net_bridge_port*, i32) #1

declare dso_local i32 @nbp_vlan_group_rcu(%struct.net_bridge_port*) #1

declare dso_local i32 @is_link_local_ether_addr(i8*) #1

declare dso_local i32 @__br_handle_local_finish(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, i32, i32*, %struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i8*) #1

declare dso_local i32 @nf_hook_bridge_pre(%struct.sk_buff*, %struct.sk_buff**) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
