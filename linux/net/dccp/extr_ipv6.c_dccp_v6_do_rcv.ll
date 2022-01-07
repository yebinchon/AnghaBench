; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv6.c_dccp_v6_do_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv6.c_dccp_v6_do_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.ipv6_pinfo = type { i32, i32, i64, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DCCP_OPEN = common dso_local global i32 0, align 4
@DCCPF_CLOSED = common dso_local global i32 0, align 4
@DCCPF_LISTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @dccp_v6_do_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_v6_do_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %8)
  store %struct.ipv6_pinfo* %9, %struct.ipv6_pinfo** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @ETH_P_IP, align 4
  %14 = call i64 @htons(i32 %13)
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i32 @dccp_v4_do_rcv(%struct.sock* %17, %struct.sk_buff* %18)
  store i32 %19, i32* %3, align 4
  br label %202

20:                                               ; preds = %2
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i64 @sk_filter(%struct.sock* %21, %struct.sk_buff* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %78

26:                                               ; preds = %20
  %27 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %28 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %7, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DCCP_OPEN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i32 @dccp_hdr(%struct.sk_buff* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @dccp_rcv_established(%struct.sock* %43, %struct.sk_buff* %44, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %74

53:                                               ; preds = %42
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %87

57:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %202

58:                                               ; preds = %36
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i32 @dccp_hdr(%struct.sk_buff* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @dccp_rcv_state_process(%struct.sock* %59, %struct.sk_buff* %60, i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %74

69:                                               ; preds = %58
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %87

73:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %202

74:                                               ; preds = %68, %52
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = call i32 @dccp_v6_ctl_send_reset(%struct.sock* %75, %struct.sk_buff* %76)
  br label %78

78:                                               ; preds = %74, %25
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = call i32 @__kfree_skb(%struct.sk_buff* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  store i32 0, i32* %3, align 4
  br label %202

87:                                               ; preds = %72, %56
  %88 = load %struct.sock*, %struct.sock** %4, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 1, %90
  %92 = load i32, i32* @DCCPF_CLOSED, align 4
  %93 = load i32, i32* @DCCPF_LISTEN, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %199, label %97

97:                                               ; preds = %87
  %98 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %99 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %106 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104, %97
  %112 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %113 = call i32 @inet6_iif(%struct.sk_buff* %112)
  %114 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %115 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %111, %104
  %117 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %118 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %116
  %124 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %125 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %123, %116
  %131 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %132 = call %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff* %131)
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %136 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %130, %123
  %138 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %139 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %137
  %145 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %146 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %144, %137
  %152 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %153 = call %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff* %152)
  %154 = call i32 @ip6_flowinfo(%struct.TYPE_11__* %153)
  %155 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %156 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %151, %144
  %158 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %159 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %164 = call %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff* %163)
  %165 = call i32 @ip6_flowlabel(%struct.TYPE_11__* %164)
  %166 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %167 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %162, %157
  %169 = load %struct.sock*, %struct.sock** %4, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %172 = call %struct.TYPE_12__* @DCCP_SKB_CB(%struct.sk_buff* %171)
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = call i64 @ipv6_opt_accepted(%struct.sock* %169, %struct.sk_buff* %170, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %168
  %178 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %179 = load %struct.sock*, %struct.sock** %4, align 8
  %180 = call i32 @skb_set_owner_r(%struct.sk_buff* %178, %struct.sock* %179)
  %181 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %182 = call i32 @IP6CB(%struct.sk_buff* %181)
  %183 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %184 = call %struct.TYPE_12__* @DCCP_SKB_CB(%struct.sk_buff* %183)
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = call i32 @memmove(i32 %182, i32* %186, i32 4)
  %188 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %189 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %188, i32 0, i32 0
  %190 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %191 = call %struct.sk_buff* @xchg(i32* %189, %struct.sk_buff* %190)
  store %struct.sk_buff* %191, %struct.sk_buff** %7, align 8
  br label %198

192:                                              ; preds = %168
  %193 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %194 = call i32 @__kfree_skb(%struct.sk_buff* %193)
  %195 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %196 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %195, i32 0, i32 0
  %197 = call %struct.sk_buff* @xchg(i32* %196, %struct.sk_buff* null)
  store %struct.sk_buff* %197, %struct.sk_buff** %7, align 8
  br label %198

198:                                              ; preds = %192, %177
  br label %199

199:                                              ; preds = %198, %87
  %200 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %201 = call i32 @kfree_skb(%struct.sk_buff* %200)
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %199, %84, %73, %57, %16
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @dccp_v4_do_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @sk_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i64 @dccp_rcv_established(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @dccp_rcv_state_process(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dccp_v6_ctl_send_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip6_flowinfo(%struct.TYPE_11__*) #1

declare dso_local i32 @ip6_flowlabel(%struct.TYPE_11__*) #1

declare dso_local i64 @ipv6_opt_accepted(%struct.sock*, %struct.sk_buff*, i32*) #1

declare dso_local %struct.TYPE_12__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @memmove(i32, i32*, i32) #1

declare dso_local i32 @IP6CB(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @xchg(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
