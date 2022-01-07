; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c___udp6_lib_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c___udp6_lib_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.inet6_skb_parm = type { i32 }
%struct.udp_table = type { i32 }
%struct.ipv6_pinfo = type { i64, i32 }
%struct.ipv6hdr = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.udphdr = type { i32, i32 }
%struct.sock = type { i64, i32, i32 (%struct.sock*)*, i32, i32 }
%struct.net = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@udpv6_encap_needed_key = common dso_local global i32 0, align 4
@ICMP6_MIB_INERRORS = common dso_local global i32 0, align 4
@ICMPV6_PKT_TOOBIG = common dso_local global i32 0, align 4
@IPV6_PMTUDISC_DONT = common dso_local global i64 0, align 8
@NDISC_REDIRECT = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__udp6_lib_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.udp_table* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.inet6_skb_parm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.udp_table*, align 8
  %16 = alloca %struct.ipv6_pinfo*, align 8
  %17 = alloca %struct.ipv6hdr*, align 8
  %18 = alloca %struct.in6_addr*, align 8
  %19 = alloca %struct.in6_addr*, align 8
  %20 = alloca %struct.udphdr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.sock*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.udp_table* %6, %struct.udp_table** %15, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %29, %struct.ipv6hdr** %17, align 8
  %30 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %31 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %30, i32 0, i32 1
  store %struct.in6_addr* %31, %struct.in6_addr** %18, align 8
  %32 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %33 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %32, i32 0, i32 0
  store %struct.in6_addr* %33, %struct.in6_addr** %19, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = inttoptr i64 %39 to %struct.udphdr*
  store %struct.udphdr* %40, %struct.udphdr** %20, align 8
  store i32 0, i32* %21, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.net* @dev_net(i32 %43)
  store %struct.net* %44, %struct.net** %25, align 8
  %45 = load %struct.net*, %struct.net** %25, align 8
  %46 = load %struct.in6_addr*, %struct.in6_addr** %19, align 8
  %47 = load %struct.udphdr*, %struct.udphdr** %20, align 8
  %48 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.in6_addr*, %struct.in6_addr** %18, align 8
  %51 = load %struct.udphdr*, %struct.udphdr** %20, align 8
  %52 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = call i32 @inet6_iif(%struct.sk_buff* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = call i32 @inet6_sdif(%struct.sk_buff* %56)
  %58 = load %struct.udp_table*, %struct.udp_table** %15, align 8
  %59 = call %struct.sock* @__udp6_lib_lookup(%struct.net* %45, %struct.in6_addr* %46, i32 %49, %struct.in6_addr* %50, i32 %53, i32 %55, i32 %57, %struct.udp_table* %58, i32* null)
  store %struct.sock* %59, %struct.sock** %22, align 8
  %60 = load %struct.sock*, %struct.sock** %22, align 8
  %61 = icmp ne %struct.sock* %60, null
  br i1 %61, label %99, label %62

62:                                               ; preds = %7
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.sock* @ERR_PTR(i32 %64)
  store %struct.sock* %65, %struct.sock** %22, align 8
  %66 = call i64 @static_branch_unlikely(i32* @udpv6_encap_needed_key)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load %struct.net*, %struct.net** %25, align 8
  %70 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.udphdr*, %struct.udphdr** %20, align 8
  %73 = load %struct.udp_table*, %struct.udp_table** %15, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call %struct.sock* @__udp6_lib_err_encap(%struct.net* %69, %struct.ipv6hdr* %70, i32 %71, %struct.udphdr* %72, %struct.udp_table* %73, %struct.sk_buff* %74, %struct.inet6_skb_parm* %75, i32 %76, i32 %77, i32 %78)
  store %struct.sock* %79, %struct.sock** %22, align 8
  %80 = load %struct.sock*, %struct.sock** %22, align 8
  %81 = icmp ne %struct.sock* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %68
  store i32 0, i32* %8, align 4
  br label %193

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %62
  %85 = load %struct.sock*, %struct.sock** %22, align 8
  %86 = call i64 @IS_ERR(%struct.sock* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load %struct.net*, %struct.net** %25, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @__in6_dev_get(i32 %92)
  %94 = load i32, i32* @ICMP6_MIB_INERRORS, align 4
  %95 = call i32 @__ICMP6_INC_STATS(%struct.net* %89, i32 %93, i32 %94)
  %96 = load %struct.sock*, %struct.sock** %22, align 8
  %97 = call i32 @PTR_ERR(%struct.sock* %96)
  store i32 %97, i32* %8, align 4
  br label %193

98:                                               ; preds = %84
  store i32 1, i32* %21, align 4
  br label %99

99:                                               ; preds = %98, %7
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @icmpv6_err_convert(i32 %100, i32 %101, i32* %24)
  store i32 %102, i32* %23, align 4
  %103 = load %struct.sock*, %struct.sock** %22, align 8
  %104 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %103)
  store %struct.ipv6_pinfo* %104, %struct.ipv6_pinfo** %16, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @ICMPV6_PKT_TOOBIG, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %99
  %109 = load %struct.sock*, %struct.sock** %22, align 8
  %110 = call i32 @ip6_sk_accept_pmtu(%struct.sock* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  br label %192

113:                                              ; preds = %108
  %114 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %115 = load %struct.sock*, %struct.sock** %22, align 8
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @ip6_sk_update_pmtu(%struct.sk_buff* %114, %struct.sock* %115, i32 %116)
  %118 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %119 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IPV6_PMTUDISC_DONT, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  store i32 1, i32* %23, align 4
  br label %124

124:                                              ; preds = %123, %113
  br label %125

125:                                              ; preds = %124, %99
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @NDISC_REDIRECT, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %150

129:                                              ; preds = %125
  %130 = load i32, i32* %21, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %134 = load %struct.sock*, %struct.sock** %22, align 8
  %135 = call i32 @sock_net(%struct.sock* %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %137 = call i32 @inet6_iif(%struct.sk_buff* %136)
  %138 = load %struct.sock*, %struct.sock** %22, align 8
  %139 = getelementptr inbounds %struct.sock, %struct.sock* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.sock*, %struct.sock** %22, align 8
  %142 = getelementptr inbounds %struct.sock, %struct.sock* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @ip6_redirect(%struct.sk_buff* %133, i32 %135, i32 %137, i32 %140, i32 %143)
  br label %149

145:                                              ; preds = %129
  %146 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %147 = load %struct.sock*, %struct.sock** %22, align 8
  %148 = call i32 @ip6_sk_redirect(%struct.sk_buff* %146, %struct.sock* %147)
  br label %149

149:                                              ; preds = %145, %132
  br label %192

150:                                              ; preds = %125
  %151 = load i32, i32* %21, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %192

154:                                              ; preds = %150
  %155 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %156 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %170, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %23, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load %struct.sock*, %struct.sock** %22, align 8
  %164 = getelementptr inbounds %struct.sock, %struct.sock* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @TCP_ESTABLISHED, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %162, %159
  br label %192

169:                                              ; preds = %162
  br label %183

170:                                              ; preds = %154
  %171 = load %struct.sock*, %struct.sock** %22, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %173 = load i32, i32* %24, align 4
  %174 = load %struct.udphdr*, %struct.udphdr** %20, align 8
  %175 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @ntohl(i32 %177)
  %179 = load %struct.udphdr*, %struct.udphdr** %20, align 8
  %180 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %179, i64 1
  %181 = bitcast %struct.udphdr* %180 to i32*
  %182 = call i32 @ipv6_icmp_error(%struct.sock* %171, %struct.sk_buff* %172, i32 %173, i32 %176, i32 %178, i32* %181)
  br label %183

183:                                              ; preds = %170, %169
  %184 = load i32, i32* %24, align 4
  %185 = load %struct.sock*, %struct.sock** %22, align 8
  %186 = getelementptr inbounds %struct.sock, %struct.sock* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 8
  %187 = load %struct.sock*, %struct.sock** %22, align 8
  %188 = getelementptr inbounds %struct.sock, %struct.sock* %187, i32 0, i32 2
  %189 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %188, align 8
  %190 = load %struct.sock*, %struct.sock** %22, align 8
  %191 = call i32 %189(%struct.sock* %190)
  br label %192

192:                                              ; preds = %183, %168, %153, %149, %112
  store i32 0, i32* %8, align 4
  br label %193

193:                                              ; preds = %192, %88, %82
  %194 = load i32, i32* %8, align 4
  ret i32 %194
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.sock* @__udp6_lib_lookup(%struct.net*, %struct.in6_addr*, i32, %struct.in6_addr*, i32, i32, i32, %struct.udp_table*, i32*) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local i32 @inet6_sdif(%struct.sk_buff*) #1

declare dso_local %struct.sock* @ERR_PTR(i32) #1

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local %struct.sock* @__udp6_lib_err_encap(%struct.net*, %struct.ipv6hdr*, i32, %struct.udphdr*, %struct.udp_table*, %struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sock*) #1

declare dso_local i32 @__ICMP6_INC_STATS(%struct.net*, i32, i32) #1

declare dso_local i32 @__in6_dev_get(i32) #1

declare dso_local i32 @PTR_ERR(%struct.sock*) #1

declare dso_local i32 @icmpv6_err_convert(i32, i32, i32*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @ip6_sk_accept_pmtu(%struct.sock*) #1

declare dso_local i32 @ip6_sk_update_pmtu(%struct.sk_buff*, %struct.sock*, i32) #1

declare dso_local i32 @ip6_redirect(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @ip6_sk_redirect(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @ipv6_icmp_error(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32*) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
