; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i8*, i32 }
%struct.inet6_skb_parm = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.sock = type { i32, i32, i32 (%struct.sock*)* }
%struct.sctp_association = type { i32 }
%struct.sctp_transport = type { i32 }
%struct.ipv6_pinfo = type { i64 }
%struct.net = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@ICMP6_MIB_INERRORS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ICMPV6_UNK_NEXTHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)* @sctp_v6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v6_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.inet6_skb_parm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inet6_dev*, align 8
  %14 = alloca %struct.sock*, align 8
  %15 = alloca %struct.sctp_association*, align 8
  %16 = alloca %struct.sctp_transport*, align 8
  %17 = alloca %struct.ipv6_pinfo*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %21, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.net* @dev_net(i32 %25)
  store %struct.net* %26, %struct.net** %22, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.inet6_dev* @in6_dev_get(i32 %29)
  store %struct.inet6_dev* %30, %struct.inet6_dev** %13, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %18, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %19, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call i32 @skb_reset_network_header(%struct.sk_buff* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @skb_set_transport_header(%struct.sk_buff* %39, i32 %40)
  %42 = load %struct.net*, %struct.net** %22, align 8
  %43 = load i32, i32* @AF_INET6, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i32 @sctp_hdr(%struct.sk_buff* %45)
  %47 = call %struct.sock* @sctp_err_lookup(%struct.net* %42, i32 %43, %struct.sk_buff* %44, i32 %46, %struct.sctp_association** %15, %struct.sctp_transport** %16)
  store %struct.sock* %47, %struct.sock** %14, align 8
  %48 = load i8*, i8** %18, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %19, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.sock*, %struct.sock** %14, align 8
  %55 = icmp ne %struct.sock* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %6
  %57 = load %struct.net*, %struct.net** %22, align 8
  %58 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %59 = load i32, i32* @ICMP6_MIB_INERRORS, align 4
  %60 = call i32 @__ICMP6_INC_STATS(%struct.net* %57, %struct.inet6_dev* %58, i32 %59)
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %21, align 4
  br label %125

63:                                               ; preds = %6
  %64 = load i32, i32* %9, align 4
  switch i32 %64, label %92 [
    i32 129, label %65
    i32 130, label %77
    i32 128, label %87
  ]

65:                                               ; preds = %63
  %66 = load %struct.sock*, %struct.sock** %14, align 8
  %67 = call i32 @ip6_sk_accept_pmtu(%struct.sock* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load %struct.sock*, %struct.sock** %14, align 8
  %71 = load %struct.sctp_association*, %struct.sctp_association** %15, align 8
  %72 = load %struct.sctp_transport*, %struct.sctp_transport** %16, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @ntohl(i32 %73)
  %75 = call i32 @sctp_icmp_frag_needed(%struct.sock* %70, %struct.sctp_association* %71, %struct.sctp_transport* %72, i32 %74)
  br label %76

76:                                               ; preds = %69, %65
  br label %121

77:                                               ; preds = %63
  %78 = load i32, i32* @ICMPV6_UNK_NEXTHDR, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.sock*, %struct.sock** %14, align 8
  %83 = load %struct.sctp_association*, %struct.sctp_association** %15, align 8
  %84 = load %struct.sctp_transport*, %struct.sctp_transport** %16, align 8
  %85 = call i32 @sctp_icmp_proto_unreachable(%struct.sock* %82, %struct.sctp_association* %83, %struct.sctp_transport* %84)
  br label %121

86:                                               ; preds = %77
  br label %93

87:                                               ; preds = %63
  %88 = load %struct.sock*, %struct.sock** %14, align 8
  %89 = load %struct.sctp_transport*, %struct.sctp_transport** %16, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = call i32 @sctp_icmp_redirect(%struct.sock* %88, %struct.sctp_transport* %89, %struct.sk_buff* %90)
  br label %121

92:                                               ; preds = %63
  br label %93

93:                                               ; preds = %92, %86
  %94 = load %struct.sock*, %struct.sock** %14, align 8
  %95 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %94)
  store %struct.ipv6_pinfo* %95, %struct.ipv6_pinfo** %17, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @icmpv6_err_convert(i32 %96, i32 %97, i32* %20)
  %99 = load %struct.sock*, %struct.sock** %14, align 8
  %100 = call i32 @sock_owned_by_user(%struct.sock* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %93
  %103 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %17, align 8
  %104 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i32, i32* %20, align 4
  %109 = load %struct.sock*, %struct.sock** %14, align 8
  %110 = getelementptr inbounds %struct.sock, %struct.sock* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.sock*, %struct.sock** %14, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 2
  %113 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %112, align 8
  %114 = load %struct.sock*, %struct.sock** %14, align 8
  %115 = call i32 %113(%struct.sock* %114)
  br label %120

116:                                              ; preds = %102, %93
  %117 = load i32, i32* %20, align 4
  %118 = load %struct.sock*, %struct.sock** %14, align 8
  %119 = getelementptr inbounds %struct.sock, %struct.sock* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %116, %107
  br label %121

121:                                              ; preds = %120, %87, %81, %76
  %122 = load %struct.sock*, %struct.sock** %14, align 8
  %123 = load %struct.sctp_transport*, %struct.sctp_transport** %16, align 8
  %124 = call i32 @sctp_err_finish(%struct.sock* %122, %struct.sctp_transport* %123)
  br label %125

125:                                              ; preds = %121, %56
  %126 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %127 = icmp ne %struct.inet6_dev* %126, null
  %128 = zext i1 %127 to i32
  %129 = call i64 @likely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %133 = call i32 @in6_dev_put(%struct.inet6_dev* %132)
  br label %134

134:                                              ; preds = %131, %125
  %135 = load i32, i32* %21, align 4
  ret i32 %135
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local %struct.sock* @sctp_err_lookup(%struct.net*, i32, %struct.sk_buff*, i32, %struct.sctp_association**, %struct.sctp_transport**) #1

declare dso_local i32 @sctp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__ICMP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @ip6_sk_accept_pmtu(%struct.sock*) #1

declare dso_local i32 @sctp_icmp_frag_needed(%struct.sock*, %struct.sctp_association*, %struct.sctp_transport*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sctp_icmp_proto_unreachable(%struct.sock*, %struct.sctp_association*, %struct.sctp_transport*) #1

declare dso_local i32 @sctp_icmp_redirect(%struct.sock*, %struct.sctp_transport*, %struct.sk_buff*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @icmpv6_err_convert(i32, i32, i32*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sctp_err_finish(%struct.sock*, %struct.sctp_transport*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
