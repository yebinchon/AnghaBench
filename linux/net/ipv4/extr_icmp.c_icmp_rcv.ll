; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmp_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.sk_buff*)* }
%struct.sk_buff = type { i32 }
%struct.icmphdr = type { i64 }
%struct.rtable = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.net = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.sec_path = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@XFRM_STATE_ICMP = common dso_local global i32 0, align 4
@ICMP_MIB_INMSGS = common dso_local global i32 0, align 4
@NR_ICMP_TYPES = common dso_local global i64 0, align 8
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@ICMP_ECHO = common dso_local global i64 0, align 8
@ICMP_TIMESTAMP = common dso_local global i64 0, align 8
@ICMP_ADDRESS = common dso_local global i64 0, align 8
@ICMP_ADDRESSREPLY = common dso_local global i64 0, align 8
@icmp_pointers = common dso_local global %struct.TYPE_10__* null, align 8
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@ICMP_MIB_CSUMERRORS = common dso_local global i32 0, align 4
@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icmp_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.icmphdr*, align 8
  %5 = alloca %struct.rtable*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sec_path*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %10)
  store %struct.rtable* %11, %struct.rtable** %5, align 8
  %12 = load %struct.rtable*, %struct.rtable** %5, align 8
  %13 = getelementptr inbounds %struct.rtable, %struct.rtable* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.net* @dev_net(i32 %15)
  store %struct.net* %16, %struct.net** %6, align 8
  %17 = load i32, i32* @XFRM_POLICY_IN, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i32 @xfrm4_policy_check(i32* null, i32 %17, %struct.sk_buff* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %22)
  store %struct.sec_path* %23, %struct.sec_path** %8, align 8
  %24 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %25 = icmp ne %struct.sec_path* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %28 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %28, align 8
  %30 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %31 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %29, i64 %34
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @XFRM_STATE_ICMP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %26, %21
  br label %161

44:                                               ; preds = %26
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = call i32 @pskb_may_pull(%struct.sk_buff* %45, i32 12)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %161

49:                                               ; preds = %44
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = call i32 @skb_network_offset(%struct.sk_buff* %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = call i32 @skb_set_network_header(%struct.sk_buff* %52, i32 8)
  %54 = load i32, i32* @XFRM_POLICY_IN, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = call i32 @xfrm4_policy_check_reverse(i32* null, i32 %54, %struct.sk_buff* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %161

59:                                               ; preds = %49
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @skb_set_network_header(%struct.sk_buff* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %1
  %64 = load %struct.net*, %struct.net** %6, align 8
  %65 = load i32, i32* @ICMP_MIB_INMSGS, align 4
  %66 = call i32 @__ICMP_INC_STATS(%struct.net* %64, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = call i64 @skb_checksum_simple_validate(%struct.sk_buff* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %165

71:                                               ; preds = %63
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = call i32 @pskb_pull(%struct.sk_buff* %72, i32 8)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  br label %169

76:                                               ; preds = %71
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = call %struct.icmphdr* @icmp_hdr(%struct.sk_buff* %77)
  store %struct.icmphdr* %78, %struct.icmphdr** %4, align 8
  %79 = load %struct.net*, %struct.net** %6, align 8
  %80 = load %struct.icmphdr*, %struct.icmphdr** %4, align 8
  %81 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @ICMPMSGIN_INC_STATS(%struct.net* %79, i64 %82)
  %84 = load %struct.icmphdr*, %struct.icmphdr** %4, align 8
  %85 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NR_ICMP_TYPES, align 8
  %88 = icmp ugt i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %169

90:                                               ; preds = %76
  %91 = load %struct.rtable*, %struct.rtable** %5, align 8
  %92 = getelementptr inbounds %struct.rtable, %struct.rtable* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @RTCF_BROADCAST, align 4
  %95 = load i32, i32* @RTCF_MULTICAST, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %144

99:                                               ; preds = %90
  %100 = load %struct.icmphdr*, %struct.icmphdr** %4, align 8
  %101 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ICMP_ECHO, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load %struct.icmphdr*, %struct.icmphdr** %4, align 8
  %107 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ICMP_TIMESTAMP, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105, %99
  %112 = load %struct.net*, %struct.net** %6, align 8
  %113 = getelementptr inbounds %struct.net, %struct.net* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %169

118:                                              ; preds = %111, %105
  %119 = load %struct.icmphdr*, %struct.icmphdr** %4, align 8
  %120 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @ICMP_ECHO, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %143

124:                                              ; preds = %118
  %125 = load %struct.icmphdr*, %struct.icmphdr** %4, align 8
  %126 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ICMP_TIMESTAMP, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = load %struct.icmphdr*, %struct.icmphdr** %4, align 8
  %132 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @ICMP_ADDRESS, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load %struct.icmphdr*, %struct.icmphdr** %4, align 8
  %138 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ICMP_ADDRESSREPLY, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %169

143:                                              ; preds = %136, %130, %124, %118
  br label %144

144:                                              ; preds = %143, %90
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** @icmp_pointers, align 8
  %146 = load %struct.icmphdr*, %struct.icmphdr** %4, align 8
  %147 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %150, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %153 = call i32 %151(%struct.sk_buff* %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %144
  %157 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %158 = call i32 @consume_skb(%struct.sk_buff* %157)
  %159 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %159, i32* %2, align 4
  br label %173

160:                                              ; preds = %144
  br label %161

161:                                              ; preds = %169, %160, %58, %48, %43
  %162 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %163 = call i32 @kfree_skb(%struct.sk_buff* %162)
  %164 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %164, i32* %2, align 4
  br label %173

165:                                              ; preds = %70
  %166 = load %struct.net*, %struct.net** %6, align 8
  %167 = load i32, i32* @ICMP_MIB_CSUMERRORS, align 4
  %168 = call i32 @__ICMP_INC_STATS(%struct.net* %166, i32 %167)
  br label %169

169:                                              ; preds = %165, %142, %117, %89, %75
  %170 = load %struct.net*, %struct.net** %6, align 8
  %171 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %172 = call i32 @__ICMP_INC_STATS(%struct.net* %170, i32 %171)
  br label %161

173:                                              ; preds = %161, %156
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @xfrm4_policy_check(i32*, i32, %struct.sk_buff*) #1

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @xfrm4_policy_check_reverse(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @__ICMP_INC_STATS(%struct.net*, i32) #1

declare dso_local i64 @skb_checksum_simple_validate(%struct.sk_buff*) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.icmphdr* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ICMPMSGIN_INC_STATS(%struct.net*, i64) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
