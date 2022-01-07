; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_send_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_send_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, i64 }
%struct.sk_buff = type { i64 }
%struct.tcphdr = type { i32, i64, i64, i32, i32, i64, i32, i64 }
%struct.ipv6hdr = type { i32, i32 }
%struct.tcp_md5sig_key = type { i32 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ipv6_pinfo = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }

@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@FLOWLABEL_REFLECT_TCP_RESET = common dso_local global i32 0, align 4
@tcp_hashinfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @tcp_v6_send_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_v6_send_reset(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tcp_md5sig_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ipv6_pinfo*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %15)
  store %struct.tcphdr* %16, %struct.tcphdr** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %17)
  store %struct.ipv6hdr* %18, %struct.ipv6hdr** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store %struct.tcp_md5sig_key* null, %struct.tcp_md5sig_key** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %20 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %145

24:                                               ; preds = %2
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = icmp ne %struct.sock* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @ipv6_unicast_destination(%struct.sk_buff* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %145

32:                                               ; preds = %27, %24
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = icmp ne %struct.sock* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = call %struct.net* @sock_net(%struct.sock* %36)
  br label %44

38:                                               ; preds = %32
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call %struct.TYPE_7__* @skb_dst(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.net* @dev_net(i32 %42)
  br label %44

44:                                               ; preds = %38, %35
  %45 = phi %struct.net* [ %37, %35 ], [ %43, %38 ]
  store %struct.net* %45, %struct.net** %12, align 8
  %46 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %47 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %52 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ntohl(i32 %53)
  store i64 %54, i64* %7, align 8
  br label %78

55:                                               ; preds = %44
  %56 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %57 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @ntohl(i32 %58)
  %60 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %61 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %65 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %73 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %71, %76
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %55, %50
  %79 = load %struct.sock*, %struct.sock** %3, align 8
  %80 = icmp ne %struct.sock* %79, null
  br i1 %80, label %81, label %122

81:                                               ; preds = %78
  %82 = load %struct.sock*, %struct.sock** %3, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %13, align 4
  %85 = load %struct.sock*, %struct.sock** %3, align 8
  %86 = call i64 @sk_fullsock(%struct.sock* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %81
  %89 = load %struct.sock*, %struct.sock** %3, align 8
  %90 = call %struct.ipv6_pinfo* @tcp_inet6_sk(%struct.sock* %89)
  store %struct.ipv6_pinfo* %90, %struct.ipv6_pinfo** %14, align 8
  %91 = load %struct.sock*, %struct.sock** %3, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call i32 @trace_tcp_send_reset(%struct.sock* %91, %struct.sk_buff* %92)
  %94 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %14, align 8
  %95 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %100 = call i32 @ip6_flowlabel(%struct.ipv6hdr* %99)
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %98, %88
  %102 = load %struct.sock*, %struct.sock** %3, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %11, align 8
  br label %105

105:                                              ; preds = %101, %81
  %106 = load %struct.sock*, %struct.sock** %3, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @TCP_TIME_WAIT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = load %struct.sock*, %struct.sock** %3, align 8
  %113 = call %struct.TYPE_8__* @inet_twsk(%struct.sock* %112)
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @cpu_to_be32(i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load %struct.sock*, %struct.sock** %3, align 8
  %118 = call %struct.TYPE_8__* @inet_twsk(%struct.sock* %117)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %11, align 8
  br label %121

121:                                              ; preds = %111, %105
  br label %135

122:                                              ; preds = %78
  %123 = load %struct.net*, %struct.net** %12, align 8
  %124 = getelementptr inbounds %struct.net, %struct.net* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @FLOWLABEL_REFLECT_TCP_RESET, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %133 = call i32 @ip6_flowlabel(%struct.ipv6hdr* %132)
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %131, %122
  br label %135

135:                                              ; preds = %134, %121
  %136 = load %struct.sock*, %struct.sock** %3, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %8, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.tcp_md5sig_key*, %struct.tcp_md5sig_key** %9, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @tcp_v6_send_response(%struct.sock* %136, %struct.sk_buff* %137, i64 %138, i64 %139, i32 0, i32 0, i32 0, i32 %140, %struct.tcp_md5sig_key* %141, i32 1, i32 0, i32 %142, i64 %143)
  br label %145

145:                                              ; preds = %135, %31, %23
  ret void
}

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_unicast_destination(%struct.sk_buff*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.TYPE_7__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @sk_fullsock(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @tcp_inet6_sk(%struct.sock*) #1

declare dso_local i32 @trace_tcp_send_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @ip6_flowlabel(%struct.ipv6hdr*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local %struct.TYPE_8__* @inet_twsk(%struct.sock*) #1

declare dso_local i32 @tcp_v6_send_response(%struct.sock*, %struct.sk_buff*, i64, i64, i32, i32, i32, i32, %struct.tcp_md5sig_key*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
