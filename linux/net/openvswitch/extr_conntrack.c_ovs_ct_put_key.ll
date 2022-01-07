; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_put_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_put_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_key = type { i64, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.ovs_key_ct_tuple_ipv6, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.ovs_key_ct_tuple_ipv6 = type { i64, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ovs_key_ct_tuple_ipv4 = type { i64, i32, i32, i32, i32 }

@OVS_KEY_ATTR_CT_STATE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@CONFIG_NF_CONNTRACK_ZONES = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_CT_ZONE = common dso_local global i32 0, align 4
@CONFIG_NF_CONNTRACK_MARK = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_CT_MARK = common dso_local global i32 0, align 4
@CONFIG_NF_CONNTRACK_LABELS = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_CT_LABELS = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV4 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_ct_put_key(%struct.sw_flow_key* %0, %struct.sw_flow_key* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sw_flow_key*, align 8
  %6 = alloca %struct.sw_flow_key*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ovs_key_ct_tuple_ipv4, align 8
  %9 = alloca %struct.ovs_key_ct_tuple_ipv6, align 8
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %5, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %11 = load i32, i32* @OVS_KEY_ATTR_CT_STATE, align 4
  %12 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %13 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @nla_put_u32(%struct.sk_buff* %10, i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EMSGSIZE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %171

20:                                               ; preds = %3
  %21 = load i32, i32* @CONFIG_NF_CONNTRACK_ZONES, align 4
  %22 = call i64 @IS_ENABLED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = load i32, i32* @OVS_KEY_ATTR_CT_ZONE, align 4
  %27 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %28 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @nla_put_u16(%struct.sk_buff* %25, i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EMSGSIZE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %171

35:                                               ; preds = %24, %20
  %36 = load i32, i32* @CONFIG_NF_CONNTRACK_MARK, align 4
  %37 = call i64 @IS_ENABLED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load i32, i32* @OVS_KEY_ATTR_CT_MARK, align 4
  %42 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %43 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @nla_put_u32(%struct.sk_buff* %40, i32 %41, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %171

51:                                               ; preds = %39, %35
  %52 = load i32, i32* @CONFIG_NF_CONNTRACK_LABELS, align 4
  %53 = call i64 @IS_ENABLED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = load i32, i32* @OVS_KEY_ATTR_CT_LABELS, align 4
  %58 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %59 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = call i64 @nla_put(%struct.sk_buff* %56, i32 %57, i32 24, %struct.ovs_key_ct_tuple_ipv6* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EMSGSIZE, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %171

66:                                               ; preds = %55, %51
  %67 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %68 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %170

71:                                               ; preds = %66
  %72 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %73 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @ETH_P_IP, align 4
  %77 = call i64 @htons(i32 %76)
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %119

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv4, %struct.ovs_key_ct_tuple_ipv4* %8, i32 0, i32 0
  %81 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %82 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %80, align 8
  %87 = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv4, %struct.ovs_key_ct_tuple_ipv4* %8, i32 0, i32 1
  %88 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %89 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %87, align 8
  %93 = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv4, %struct.ovs_key_ct_tuple_ipv4* %8, i32 0, i32 2
  %94 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %95 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %93, align 4
  %99 = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv4, %struct.ovs_key_ct_tuple_ipv4* %8, i32 0, i32 3
  %100 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %101 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %99, align 8
  %105 = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv4, %struct.ovs_key_ct_tuple_ipv4* %8, i32 0, i32 4
  %106 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %107 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %111 = load i32, i32* @OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV4, align 4
  %112 = bitcast %struct.ovs_key_ct_tuple_ipv4* %8 to %struct.ovs_key_ct_tuple_ipv6*
  %113 = call i64 @nla_put(%struct.sk_buff* %110, i32 %111, i32 24, %struct.ovs_key_ct_tuple_ipv6* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %79
  %116 = load i32, i32* @EMSGSIZE, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %171

118:                                              ; preds = %79
  br label %169

119:                                              ; preds = %71
  %120 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %121 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @ETH_P_IPV6, align 4
  %125 = call i64 @htons(i32 %124)
  %126 = icmp eq i64 %123, %125
  br i1 %126, label %127, label %168

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv6, %struct.ovs_key_ct_tuple_ipv6* %9, i32 0, i32 0
  %129 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %130 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @IN6_ADDR_INITIALIZER(i32 %133)
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %128, align 8
  %136 = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv6, %struct.ovs_key_ct_tuple_ipv6* %9, i32 0, i32 1
  %137 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %138 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @IN6_ADDR_INITIALIZER(i32 %141)
  store i32 %142, i32* %136, align 8
  %143 = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv6, %struct.ovs_key_ct_tuple_ipv6* %9, i32 0, i32 2
  %144 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %145 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %143, align 4
  %149 = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv6, %struct.ovs_key_ct_tuple_ipv6* %9, i32 0, i32 3
  %150 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %151 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  store i32 %154, i32* %149, align 8
  %155 = getelementptr inbounds %struct.ovs_key_ct_tuple_ipv6, %struct.ovs_key_ct_tuple_ipv6* %9, i32 0, i32 4
  %156 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %157 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %155, align 4
  %160 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %161 = load i32, i32* @OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6, align 4
  %162 = call i64 @nla_put(%struct.sk_buff* %160, i32 %161, i32 24, %struct.ovs_key_ct_tuple_ipv6* %9)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %127
  %165 = load i32, i32* @EMSGSIZE, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %4, align 4
  br label %171

167:                                              ; preds = %127
  br label %168

168:                                              ; preds = %167, %119
  br label %169

169:                                              ; preds = %168, %118
  br label %170

170:                                              ; preds = %169, %66
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %170, %164, %115, %63, %48, %32, %17
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.ovs_key_ct_tuple_ipv6*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @IN6_ADDR_INITIALIZER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
