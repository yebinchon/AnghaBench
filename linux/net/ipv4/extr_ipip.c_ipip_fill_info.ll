; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ip_tunnel = type { i64, %struct.TYPE_4__, i32, %struct.ip_tunnel_parm }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ip_tunnel_parm = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@IFLA_IPTUN_LINK = common dso_local global i32 0, align 4
@IFLA_IPTUN_LOCAL = common dso_local global i32 0, align 4
@IFLA_IPTUN_REMOTE = common dso_local global i32 0, align 4
@IFLA_IPTUN_TTL = common dso_local global i32 0, align 4
@IFLA_IPTUN_TOS = common dso_local global i32 0, align 4
@IFLA_IPTUN_PROTO = common dso_local global i32 0, align 4
@IFLA_IPTUN_PMTUDISC = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@IFLA_IPTUN_FWMARK = common dso_local global i32 0, align 4
@IFLA_IPTUN_ENCAP_TYPE = common dso_local global i32 0, align 4
@IFLA_IPTUN_ENCAP_SPORT = common dso_local global i32 0, align 4
@IFLA_IPTUN_ENCAP_DPORT = common dso_local global i32 0, align 4
@IFLA_IPTUN_ENCAP_FLAGS = common dso_local global i32 0, align 4
@IFLA_IPTUN_COLLECT_METADATA = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ipip_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip_tunnel*, align 8
  %7 = alloca %struct.ip_tunnel_parm*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %8)
  store %struct.ip_tunnel* %9, %struct.ip_tunnel** %6, align 8
  %10 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %11 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %10, i32 0, i32 3
  store %struct.ip_tunnel_parm* %11, %struct.ip_tunnel_parm** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load i32, i32* @IFLA_IPTUN_LINK, align 4
  %14 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %15 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @nla_put_u32(%struct.sk_buff* %12, i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %88, label %19

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load i32, i32* @IFLA_IPTUN_LOCAL, align 4
  %22 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %23 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @nla_put_in_addr(%struct.sk_buff* %20, i32 %21, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %88, label %28

28:                                               ; preds = %19
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* @IFLA_IPTUN_REMOTE, align 4
  %31 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %32 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nla_put_in_addr(%struct.sk_buff* %29, i32 %30, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %88, label %37

37:                                               ; preds = %28
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load i32, i32* @IFLA_IPTUN_TTL, align 4
  %40 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %41 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @nla_put_u8(%struct.sk_buff* %38, i32 %39, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %88, label %46

46:                                               ; preds = %37
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i32, i32* @IFLA_IPTUN_TOS, align 4
  %49 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %50 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @nla_put_u8(%struct.sk_buff* %47, i32 %48, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %88, label %55

55:                                               ; preds = %46
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load i32, i32* @IFLA_IPTUN_PROTO, align 4
  %58 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %59 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @nla_put_u8(%struct.sk_buff* %56, i32 %57, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %55
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load i32, i32* @IFLA_IPTUN_PMTUDISC, align 4
  %67 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %68 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IP_DF, align 4
  %72 = call i32 @htons(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i64 @nla_put_u8(%struct.sk_buff* %65, i32 %66, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %64
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = load i32, i32* @IFLA_IPTUN_FWMARK, align 4
  %83 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %84 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @nla_put_u32(%struct.sk_buff* %81, i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80, %64, %55, %46, %37, %28, %19, %2
  br label %139

89:                                               ; preds = %80
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load i32, i32* @IFLA_IPTUN_ENCAP_TYPE, align 4
  %92 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %93 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @nla_put_u16(%struct.sk_buff* %90, i32 %91, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %125, label %98

98:                                               ; preds = %89
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = load i32, i32* @IFLA_IPTUN_ENCAP_SPORT, align 4
  %101 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %102 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @nla_put_be16(%struct.sk_buff* %99, i32 %100, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %98
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = load i32, i32* @IFLA_IPTUN_ENCAP_DPORT, align 4
  %110 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %111 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @nla_put_be16(%struct.sk_buff* %108, i32 %109, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %107
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = load i32, i32* @IFLA_IPTUN_ENCAP_FLAGS, align 4
  %119 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %120 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @nla_put_u16(%struct.sk_buff* %117, i32 %118, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %116, %107, %98, %89
  br label %139

126:                                              ; preds = %116
  %127 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %128 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = load i32, i32* @IFLA_IPTUN_COLLECT_METADATA, align 4
  %134 = call i64 @nla_put_flag(%struct.sk_buff* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %139

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %126
  store i32 0, i32* %3, align 4
  br label %142

139:                                              ; preds = %136, %125, %88
  %140 = load i32, i32* @EMSGSIZE, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %139, %138
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
