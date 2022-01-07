; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_dump_addresses.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_dump_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_tunnel_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@AF_INET = common dso_local global i16 0, align 2
@TCA_TUNNEL_KEY_ENC_IPV4_SRC = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_ENC_IPV4_DST = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i16 0, align 2
@TCA_TUNNEL_KEY_ENC_IPV6_SRC = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_ENC_IPV6_DST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_tunnel_info*)* @tunnel_key_dump_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunnel_key_dump_addresses(%struct.sk_buff* %0, %struct.ip_tunnel_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_tunnel_info*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ip_tunnel_info* %1, %struct.ip_tunnel_info** %5, align 8
  %11 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %12 = call zeroext i16 @ip_tunnel_info_af(%struct.ip_tunnel_info* %11)
  store i16 %12, i16* %6, align 2
  %13 = load i16, i16* %6, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @AF_INET, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %2
  %19 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %20 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %26 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* @TCA_TUNNEL_KEY_ENC_IPV4_SRC, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @nla_put_in_addr(%struct.sk_buff* %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %18
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i32, i32* @TCA_TUNNEL_KEY_ENC_IPV4_DST, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @nla_put_in_addr(%struct.sk_buff* %37, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %77

43:                                               ; preds = %36, %18
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i16, i16* %6, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* @AF_INET6, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %52 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store %struct.in6_addr* %55, %struct.in6_addr** %9, align 8
  %56 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %57 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store %struct.in6_addr* %60, %struct.in6_addr** %10, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load i32, i32* @TCA_TUNNEL_KEY_ENC_IPV6_SRC, align 4
  %63 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %64 = call i32 @nla_put_in6_addr(%struct.sk_buff* %61, i32 %62, %struct.in6_addr* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %50
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = load i32, i32* @TCA_TUNNEL_KEY_ENC_IPV6_DST, align 4
  %69 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %70 = call i32 @nla_put_in6_addr(%struct.sk_buff* %67, i32 %68, %struct.in6_addr* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %77

73:                                               ; preds = %66, %50
  br label %74

74:                                               ; preds = %73, %44
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %72, %42
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local zeroext i16 @ip_tunnel_info_af(%struct.ip_tunnel_info*) #1

declare dso_local i32 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_in6_addr(%struct.sk_buff*, i32, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
