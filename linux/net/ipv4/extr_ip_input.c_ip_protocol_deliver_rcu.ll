; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_input.c_ip_protocol_deliver_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_input.c_ip_protocol_deliver_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_protocol = type { i32, i32 }

@inet_protos = common dso_local global i32* null, align 8
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@tcp_v4_rcv = common dso_local global i32 0, align 4
@udp_rcv = common dso_local global i32 0, align 4
@IPSTATS_MIB_INDELIVERS = common dso_local global i32 0, align 4
@IPSTATS_MIB_INUNKNOWNPROTOS = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_PROT_UNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_protocol_deliver_rcu(%struct.net* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_protocol*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %10

10:                                               ; preds = %48, %3
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @raw_local_deliver(%struct.sk_buff* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** @inet_protos, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net_protocol* @rcu_dereference(i32 %18)
  store %struct.net_protocol* %19, %struct.net_protocol** %7, align 8
  %20 = load %struct.net_protocol*, %struct.net_protocol** %7, align 8
  %21 = icmp ne %struct.net_protocol* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %10
  %23 = load %struct.net_protocol*, %struct.net_protocol** %7, align 8
  %24 = getelementptr inbounds %struct.net_protocol, %struct.net_protocol* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @XFRM_POLICY_IN, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i64 @xfrm4_policy_check(i32* null, i32 %28, %struct.sk_buff* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  br label %81

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @nf_reset_ct(%struct.sk_buff* %36)
  br label %38

38:                                               ; preds = %35, %22
  %39 = load %struct.net_protocol*, %struct.net_protocol** %7, align 8
  %40 = getelementptr inbounds %struct.net_protocol, %struct.net_protocol* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @tcp_v4_rcv, align 4
  %43 = load i32, i32* @udp_rcv, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @INDIRECT_CALL_2(i32 %41, i32 %42, i32 %43, %struct.sk_buff* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %10

51:                                               ; preds = %38
  %52 = load %struct.net*, %struct.net** %4, align 8
  %53 = load i32, i32* @IPSTATS_MIB_INDELIVERS, align 4
  %54 = call i32 @__IP_INC_STATS(%struct.net* %52, i32 %53)
  br label %81

55:                                               ; preds = %10
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @XFRM_POLICY_IN, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i64 @xfrm4_policy_check(i32* null, i32 %59, %struct.sk_buff* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.net*, %struct.net** %4, align 8
  %65 = load i32, i32* @IPSTATS_MIB_INUNKNOWNPROTOS, align 4
  %66 = call i32 @__IP_INC_STATS(%struct.net* %64, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %69 = load i32, i32* @ICMP_PROT_UNREACH, align 4
  %70 = call i32 @icmp_send(%struct.sk_buff* %67, i32 %68, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %63, %58
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  br label %80

74:                                               ; preds = %55
  %75 = load %struct.net*, %struct.net** %4, align 8
  %76 = load i32, i32* @IPSTATS_MIB_INDELIVERS, align 4
  %77 = call i32 @__IP_INC_STATS(%struct.net* %75, i32 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @consume_skb(%struct.sk_buff* %78)
  br label %80

80:                                               ; preds = %74, %71
  br label %81

81:                                               ; preds = %32, %80, %51
  ret void
}

declare dso_local i32 @raw_local_deliver(%struct.sk_buff*, i32) #1

declare dso_local %struct.net_protocol* @rcu_dereference(i32) #1

declare dso_local i64 @xfrm4_policy_check(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i32 @INDIRECT_CALL_2(i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @__IP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
