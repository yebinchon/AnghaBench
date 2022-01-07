; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel_core.c_ip_tun_build_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel_core.c_ip_tun_build_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.lwtunnel_state = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip_tunnel_info = type { i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i8*, i8*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@LWTUNNEL_IP_MAX = common dso_local global i32 0, align 4
@ip_tun_policy = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LWTUNNEL_ENCAP_IP = common dso_local global i32 0, align 4
@LWTUNNEL_IP_ID = common dso_local global i64 0, align 8
@LWTUNNEL_IP_DST = common dso_local global i64 0, align 8
@LWTUNNEL_IP_SRC = common dso_local global i64 0, align 8
@LWTUNNEL_IP_TTL = common dso_local global i64 0, align 8
@LWTUNNEL_IP_TOS = common dso_local global i64 0, align 8
@LWTUNNEL_IP_FLAGS = common dso_local global i64 0, align 8
@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i32, i8*, %struct.lwtunnel_state**, %struct.netlink_ext_ack*)* @ip_tun_build_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_tun_build_state(%struct.nlattr* %0, i32 %1, i8* %2, %struct.lwtunnel_state** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lwtunnel_state**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.ip_tunnel_info*, align 8
  %13 = alloca %struct.lwtunnel_state*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.lwtunnel_state** %3, %struct.lwtunnel_state*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %18 = load i32, i32* @LWTUNNEL_IP_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i32, i32* @LWTUNNEL_IP_MAX, align 4
  %24 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %25 = load i32, i32* @ip_tun_policy, align 4
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %27 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %22, i32 %23, %struct.nlattr* %24, i32 %25, %struct.netlink_ext_ack* %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %134

32:                                               ; preds = %5
  %33 = call %struct.lwtunnel_state* @lwtunnel_state_alloc(i32 72)
  store %struct.lwtunnel_state* %33, %struct.lwtunnel_state** %13, align 8
  %34 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %13, align 8
  %35 = icmp ne %struct.lwtunnel_state* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %134

39:                                               ; preds = %32
  %40 = load i32, i32* @LWTUNNEL_ENCAP_IP, align 4
  %41 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %13, align 8
  %42 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %13, align 8
  %44 = call %struct.ip_tunnel_info* @lwt_tun_info(%struct.lwtunnel_state* %43)
  store %struct.ip_tunnel_info* %44, %struct.ip_tunnel_info** %12, align 8
  %45 = load i64, i64* @LWTUNNEL_IP_ID, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load i64, i64* @LWTUNNEL_IP_ID, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i32 @nla_get_be64(%struct.nlattr* %52)
  %54 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %12, align 8
  %55 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  store i32 %53, i32* %56, align 8
  br label %57

57:                                               ; preds = %49, %39
  %58 = load i64, i64* @LWTUNNEL_IP_DST, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = icmp ne %struct.nlattr* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load i64, i64* @LWTUNNEL_IP_DST, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = call i8* @nla_get_in_addr(%struct.nlattr* %65)
  %67 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %12, align 8
  %68 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i8* %66, i8** %71, align 8
  br label %72

72:                                               ; preds = %62, %57
  %73 = load i64, i64* @LWTUNNEL_IP_SRC, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = icmp ne %struct.nlattr* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load i64, i64* @LWTUNNEL_IP_SRC, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = call i8* @nla_get_in_addr(%struct.nlattr* %80)
  %82 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %12, align 8
  %83 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i8* %81, i8** %86, align 8
  br label %87

87:                                               ; preds = %77, %72
  %88 = load i64, i64* @LWTUNNEL_IP_TTL, align 8
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %88
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 8
  %91 = icmp ne %struct.nlattr* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i64, i64* @LWTUNNEL_IP_TTL, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = call i8* @nla_get_u8(%struct.nlattr* %95)
  %97 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %12, align 8
  %98 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  store i8* %96, i8** %99, align 8
  br label %100

100:                                              ; preds = %92, %87
  %101 = load i64, i64* @LWTUNNEL_IP_TOS, align 8
  %102 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %101
  %103 = load %struct.nlattr*, %struct.nlattr** %102, align 8
  %104 = icmp ne %struct.nlattr* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load i64, i64* @LWTUNNEL_IP_TOS, align 8
  %107 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %106
  %108 = load %struct.nlattr*, %struct.nlattr** %107, align 8
  %109 = call i8* @nla_get_u8(%struct.nlattr* %108)
  %110 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %12, align 8
  %111 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i8* %109, i8** %112, align 8
  br label %113

113:                                              ; preds = %105, %100
  %114 = load i64, i64* @LWTUNNEL_IP_FLAGS, align 8
  %115 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %114
  %116 = load %struct.nlattr*, %struct.nlattr** %115, align 8
  %117 = icmp ne %struct.nlattr* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load i64, i64* @LWTUNNEL_IP_FLAGS, align 8
  %120 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %119
  %121 = load %struct.nlattr*, %struct.nlattr** %120, align 8
  %122 = call i32 @nla_get_be16(%struct.nlattr* %121)
  %123 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %12, align 8
  %124 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  br label %126

126:                                              ; preds = %118, %113
  %127 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %128 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %12, align 8
  %129 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %12, align 8
  %131 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  %132 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %13, align 8
  %133 = load %struct.lwtunnel_state**, %struct.lwtunnel_state*** %10, align 8
  store %struct.lwtunnel_state* %132, %struct.lwtunnel_state** %133, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %134

134:                                              ; preds = %126, %36, %30
  %135 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #2

declare dso_local %struct.lwtunnel_state* @lwtunnel_state_alloc(i32) #2

declare dso_local %struct.ip_tunnel_info* @lwt_tun_info(%struct.lwtunnel_state*) #2

declare dso_local i32 @nla_get_be64(%struct.nlattr*) #2

declare dso_local i8* @nla_get_in_addr(%struct.nlattr*) #2

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
