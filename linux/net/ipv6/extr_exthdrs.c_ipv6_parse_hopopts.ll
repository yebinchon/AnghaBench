; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_parse_hopopts.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_parse_hopopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.inet6_skb_parm = type { i32, i32 }
%struct.net = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IP6SKB_HOPBYHOP = common dso_local global i32 0, align 4
@tlvprochopopt_lst = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_parse_hopopts(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.inet6_skb_parm*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff* %7)
  store %struct.inet6_skb_parm* %8, %struct.inet6_skb_parm** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.net* @dev_net(i32 %11)
  store %struct.net* %12, %struct.net** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call i32 @pskb_may_pull(%struct.sk_buff* %13, i32 12)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i32* @skb_transport_header(%struct.sk_buff* %18)
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  %23 = shl i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = add i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @pskb_may_pull(%struct.sk_buff* %17, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %16, %1
  br label %30

30:                                               ; preds = %47, %29
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call i32 @kfree_skb(%struct.sk_buff* %31)
  store i32 -1, i32* %2, align 4
  br label %70

33:                                               ; preds = %16
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call i32* @skb_transport_header(%struct.sk_buff* %34)
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = shl i32 %38, 3
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.net*, %struct.net** %5, align 8
  %42 = getelementptr inbounds %struct.net, %struct.net* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %40, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %30

48:                                               ; preds = %33
  %49 = load i32, i32* @IP6SKB_HOPBYHOP, align 4
  %50 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %51 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @tlvprochopopt_lst, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @init_net, i32 0, i32 0, i32 0, i32 0), align 4
  %57 = call i64 @ip6_parse_tlv(i32 %54, %struct.sk_buff* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = call %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff* %65)
  store %struct.inet6_skb_parm* %66, %struct.inet6_skb_parm** %4, align 8
  %67 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %68 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %67, i32 0, i32 0
  store i32 4, i32* %68, align 4
  store i32 1, i32* %2, align 4
  br label %70

69:                                               ; preds = %48
  store i32 -1, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %59, %30
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32* @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @ip6_parse_tlv(i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
