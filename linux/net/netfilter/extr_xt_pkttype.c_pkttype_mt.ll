; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_pkttype.c_pkttype_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_pkttype.c_pkttype_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.xt_action_param = type { %struct.xt_pkttype_info* }
%struct.xt_pkttype_info = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@PACKET_MULTICAST = common dso_local global i64 0, align 8
@NFPROTO_IPV6 = common dso_local global i64 0, align 8
@PACKET_BROADCAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @pkttype_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkttype_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_pkttype_info*, align 8
  %6 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.xt_pkttype_info*, %struct.xt_pkttype_info** %8, align 8
  store %struct.xt_pkttype_info* %9, %struct.xt_pkttype_info** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PACKET_LOOPBACK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %21 = call i64 @xt_family(%struct.xt_action_param* %20)
  %22 = load i64, i64* @NFPROTO_IPV4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ipv4_is_multicast(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @PACKET_MULTICAST, align 8
  store i64 %32, i64* %6, align 8
  br label %43

33:                                               ; preds = %24, %19
  %34 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %35 = call i64 @xt_family(%struct.xt_action_param* %34)
  %36 = load i64, i64* @NFPROTO_IPV6, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @PACKET_MULTICAST, align 8
  store i64 %39, i64* %6, align 8
  br label %42

40:                                               ; preds = %33
  %41 = load i64, i64* @PACKET_BROADCAST, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %31
  br label %44

44:                                               ; preds = %43, %15
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.xt_pkttype_info*, %struct.xt_pkttype_info** %5, align 8
  %47 = getelementptr inbounds %struct.xt_pkttype_info, %struct.xt_pkttype_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  %50 = zext i1 %49 to i32
  %51 = load %struct.xt_pkttype_info*, %struct.xt_pkttype_info** %5, align 8
  %52 = getelementptr inbounds %struct.xt_pkttype_info, %struct.xt_pkttype_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = xor i32 %50, %53
  ret i32 %54
}

declare dso_local i64 @xt_family(%struct.xt_action_param*) #1

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
