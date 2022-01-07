; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_icmpv6_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_icmpv6_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.net = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.in6_addr = type { i32 }
%struct.icmp6hdr = type { i32, i32, i32 }
%struct.sec_path = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.in6_addr, %struct.in6_addr }

@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@XFRM_STATE_ICMP = common dso_local global i32 0, align 4
@ICMP6_MIB_INMSGS = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@ip6_compute_pseudo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ICMPv6 checksum failed [%pI6c > %pI6c]\0A\00", align 1
@ICMPV6_INFOMSG_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"icmpv6: msg of unknown type [%pI6c > %pI6c]\0A\00", align 1
@ICMP6_MIB_CSUMERRORS = common dso_local global i32 0, align 4
@ICMP6_MIB_INERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @icmpv6_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmpv6_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.inet6_dev*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.icmp6hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sec_path*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = call %struct.net* @dev_net(%struct.net_device* %16)
  store %struct.net* %17, %struct.net** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call %struct.net_device* @icmp6_dev(%struct.sk_buff* %18)
  store %struct.net_device* %19, %struct.net_device** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %20)
  store %struct.inet6_dev* %21, %struct.inet6_dev** %6, align 8
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* @XFRM_POLICY_IN, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call i32 @xfrm6_policy_check(i32* null, i32 %22, %struct.sk_buff* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %68, label %26

26:                                               ; preds = %1
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %27)
  store %struct.sec_path* %28, %struct.sec_path** %12, align 8
  %29 = load %struct.sec_path*, %struct.sec_path** %12, align 8
  %30 = icmp ne %struct.sec_path* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load %struct.sec_path*, %struct.sec_path** %12, align 8
  %33 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %33, align 8
  %35 = load %struct.sec_path*, %struct.sec_path** %12, align 8
  %36 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %34, i64 %39
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @XFRM_STATE_ICMP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %31, %26
  br label %189

49:                                               ; preds = %31
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = call i32 @pskb_may_pull(%struct.sk_buff* %50, i32 16)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %189

54:                                               ; preds = %49
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = call i32 @skb_network_offset(%struct.sk_buff* %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = call i32 @skb_set_network_header(%struct.sk_buff* %57, i32 12)
  %59 = load i32, i32* @XFRM_POLICY_IN, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = call i32 @xfrm6_policy_check_reverse(i32* null, i32 %59, %struct.sk_buff* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  br label %189

64:                                               ; preds = %54
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @skb_set_network_header(%struct.sk_buff* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %1
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = call %struct.net* @dev_net(%struct.net_device* %69)
  %71 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %72 = load i32, i32* @ICMP6_MIB_INMSGS, align 4
  %73 = call i32 @__ICMP6_INC_STATS(%struct.net* %70, %struct.inet6_dev* %71, i32 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %75 = call %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  store %struct.in6_addr* %76, %struct.in6_addr** %7, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = call %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store %struct.in6_addr* %79, %struct.in6_addr** %8, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %81 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %82 = load i32, i32* @ip6_compute_pseudo, align 4
  %83 = call i64 @skb_checksum_validate(%struct.sk_buff* %80, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %68
  %86 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %87 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %88 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.in6_addr* %86, %struct.in6_addr* %87)
  br label %177

89:                                               ; preds = %68
  %90 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %91 = call i32 @pskb_pull(%struct.sk_buff* %90, i32 12)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  br label %183

94:                                               ; preds = %89
  %95 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %96 = call %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff* %95)
  store %struct.icmp6hdr* %96, %struct.icmp6hdr** %9, align 8
  %97 = load %struct.icmp6hdr*, %struct.icmp6hdr** %9, align 8
  %98 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %10, align 4
  %100 = load %struct.net_device*, %struct.net_device** %5, align 8
  %101 = call %struct.net* @dev_net(%struct.net_device* %100)
  %102 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @ICMP6MSGIN_INC_STATS(%struct.net* %101, %struct.inet6_dev* %102, i32 %103)
  %105 = load i32, i32* %10, align 4
  switch i32 %105, label %148 [
    i32 144, label %106
    i32 145, label %117
    i32 134, label %120
    i32 148, label %128
    i32 133, label %128
    i32 135, label %128
    i32 128, label %138
    i32 129, label %138
    i32 131, label %138
    i32 132, label %138
    i32 130, label %138
    i32 143, label %141
    i32 141, label %144
    i32 142, label %147
    i32 137, label %147
    i32 136, label %147
    i32 140, label %147
    i32 146, label %147
    i32 147, label %147
    i32 138, label %147
    i32 139, label %147
  ]

106:                                              ; preds = %94
  %107 = load %struct.net*, %struct.net** %4, align 8
  %108 = getelementptr inbounds %struct.net, %struct.net* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %115 = call i32 @icmpv6_echo_reply(%struct.sk_buff* %114)
  br label %116

116:                                              ; preds = %113, %106
  br label %167

117:                                              ; preds = %94
  %118 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %119 = call i32 @ping_rcv(%struct.sk_buff* %118)
  store i32 %119, i32* %11, align 4
  br label %167

120:                                              ; preds = %94
  %121 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %122 = call i32 @pskb_may_pull(%struct.sk_buff* %121, i32 4)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  br label %183

125:                                              ; preds = %120
  %126 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %127 = call %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff* %126)
  store %struct.icmp6hdr* %127, %struct.icmp6hdr** %9, align 8
  br label %128

128:                                              ; preds = %94, %94, %94, %125
  %129 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.icmp6hdr*, %struct.icmp6hdr** %9, align 8
  %132 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.icmp6hdr*, %struct.icmp6hdr** %9, align 8
  %135 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @icmpv6_notify(%struct.sk_buff* %129, i32 %130, i32 %133, i32 %136)
  br label %167

138:                                              ; preds = %94, %94, %94, %94, %94
  %139 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %140 = call i32 @ndisc_rcv(%struct.sk_buff* %139)
  br label %167

141:                                              ; preds = %94
  %142 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %143 = call i32 @igmp6_event_query(%struct.sk_buff* %142)
  br label %167

144:                                              ; preds = %94
  %145 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %146 = call i32 @igmp6_event_report(%struct.sk_buff* %145)
  br label %167

147:                                              ; preds = %94, %94, %94, %94, %94, %94, %94, %94
  br label %167

148:                                              ; preds = %94
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @ICMPV6_INFOMSG_MASK, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %167

154:                                              ; preds = %148
  %155 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %156 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %157 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.in6_addr* %155, %struct.in6_addr* %156)
  %158 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.icmp6hdr*, %struct.icmp6hdr** %9, align 8
  %161 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.icmp6hdr*, %struct.icmp6hdr** %9, align 8
  %164 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @icmpv6_notify(%struct.sk_buff* %158, i32 %159, i32 %162, i32 %165)
  br label %167

167:                                              ; preds = %154, %153, %147, %144, %141, %138, %128, %117, %116
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %172 = call i32 @consume_skb(%struct.sk_buff* %171)
  br label %176

173:                                              ; preds = %167
  %174 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %175 = call i32 @kfree_skb(%struct.sk_buff* %174)
  br label %176

176:                                              ; preds = %173, %170
  store i32 0, i32* %2, align 4
  br label %192

177:                                              ; preds = %85
  %178 = load %struct.net_device*, %struct.net_device** %5, align 8
  %179 = call %struct.net* @dev_net(%struct.net_device* %178)
  %180 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %181 = load i32, i32* @ICMP6_MIB_CSUMERRORS, align 4
  %182 = call i32 @__ICMP6_INC_STATS(%struct.net* %179, %struct.inet6_dev* %180, i32 %181)
  br label %183

183:                                              ; preds = %177, %124, %93
  %184 = load %struct.net_device*, %struct.net_device** %5, align 8
  %185 = call %struct.net* @dev_net(%struct.net_device* %184)
  %186 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %187 = load i32, i32* @ICMP6_MIB_INERRORS, align 4
  %188 = call i32 @__ICMP6_INC_STATS(%struct.net* %185, %struct.inet6_dev* %186, i32 %187)
  br label %189

189:                                              ; preds = %183, %63, %53, %48
  %190 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %191 = call i32 @kfree_skb(%struct.sk_buff* %190)
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %189, %176
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.net_device* @icmp6_dev(%struct.sk_buff*) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @xfrm6_policy_check(i32*, i32, %struct.sk_buff*) #1

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @xfrm6_policy_check_reverse(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @__ICMP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_checksum_validate(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, %struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ICMP6MSGIN_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @icmpv6_echo_reply(%struct.sk_buff*) #1

declare dso_local i32 @ping_rcv(%struct.sk_buff*) #1

declare dso_local i32 @icmpv6_notify(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ndisc_rcv(%struct.sk_buff*) #1

declare dso_local i32 @igmp6_event_query(%struct.sk_buff*) #1

declare dso_local i32 @igmp6_event_report(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
