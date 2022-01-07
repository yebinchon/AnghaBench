; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_dscp.c_tos_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_dscp.c_tos_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_tos_match_info* }
%struct.xt_tos_match_info = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @tos_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tos_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_tos_match_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.xt_tos_match_info*, %struct.xt_tos_match_info** %8, align 8
  store %struct.xt_tos_match_info* %9, %struct.xt_tos_match_info** %6, align 8
  %10 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %11 = call i64 @xt_family(%struct.xt_action_param* %10)
  %12 = load i64, i64* @NFPROTO_IPV4, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.xt_tos_match_info*, %struct.xt_tos_match_info** %6, align 8
  %20 = getelementptr inbounds %struct.xt_tos_match_info, %struct.xt_tos_match_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = load %struct.xt_tos_match_info*, %struct.xt_tos_match_info** %6, align 8
  %24 = getelementptr inbounds %struct.xt_tos_match_info, %struct.xt_tos_match_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  %27 = zext i1 %26 to i32
  %28 = load %struct.xt_tos_match_info*, %struct.xt_tos_match_info** %6, align 8
  %29 = getelementptr inbounds %struct.xt_tos_match_info, %struct.xt_tos_match_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = xor i32 %27, %34
  store i32 %35, i32* %3, align 4
  br label %57

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @ipv6_hdr(%struct.sk_buff* %37)
  %39 = call i32 @ipv6_get_dsfield(i32 %38)
  %40 = load %struct.xt_tos_match_info*, %struct.xt_tos_match_info** %6, align 8
  %41 = getelementptr inbounds %struct.xt_tos_match_info, %struct.xt_tos_match_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %39, %42
  %44 = load %struct.xt_tos_match_info*, %struct.xt_tos_match_info** %6, align 8
  %45 = getelementptr inbounds %struct.xt_tos_match_info, %struct.xt_tos_match_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  %48 = zext i1 %47 to i32
  %49 = load %struct.xt_tos_match_info*, %struct.xt_tos_match_info** %6, align 8
  %50 = getelementptr inbounds %struct.xt_tos_match_info, %struct.xt_tos_match_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = xor i32 %48, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %36, %14
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @xt_family(%struct.xt_action_param*) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_get_dsfield(i32) #1

declare dso_local i32 @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
