; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6ip6_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6ip6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.inet6_skb_parm = type { i32 }
%struct.rt6_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)* @ip6ip6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6ip6_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.inet6_skb_parm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.rt6_info*, align 8
  %20 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @ntohl(i32 %21)
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %18, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = load i32, i32* @IPPROTO_IPV6, align 4
  %27 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @ip6_tnl_err(%struct.sk_buff* %25, i32 %26, %struct.inet6_skb_parm* %27, i32* %17, i32* %18, i32* %16, i32* %14, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %7, align 4
  br label %95

34:                                               ; preds = %6
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %94

37:                                               ; preds = %34
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i64 @pskb_may_pull(%struct.sk_buff* %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %94

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %46, i32 %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %20, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %95

52:                                               ; preds = %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %54 = call i32 @skb_dst_drop(%struct.sk_buff* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @skb_pull(%struct.sk_buff* %55, i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %59 = call i32 @skb_reset_network_header(%struct.sk_buff* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @dev_net(i64 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %65 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %68 = call %struct.rt6_info* @rt6_lookup(i32 %63, i32* %66, i32* null, i32 0, %struct.sk_buff* %67, i32 0)
  store %struct.rt6_info* %68, %struct.rt6_info** %19, align 8
  %69 = load %struct.rt6_info*, %struct.rt6_info** %19, align 8
  %70 = icmp ne %struct.rt6_info* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %52
  %72 = load %struct.rt6_info*, %struct.rt6_info** %19, align 8
  %73 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.rt6_info*, %struct.rt6_info** %19, align 8
  %79 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %77, %71, %52
  %85 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @icmpv6_send(%struct.sk_buff* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.rt6_info*, %struct.rt6_info** %19, align 8
  %91 = call i32 @ip6_rt_put(%struct.rt6_info* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %93 = call i32 @kfree_skb(%struct.sk_buff* %92)
  br label %94

94:                                               ; preds = %84, %37, %34
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %94, %51, %32
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ip6_tnl_err(%struct.sk_buff*, i32, %struct.inet6_skb_parm*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.rt6_info* @rt6_lookup(i32, i32*, i32*, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_net(i64) #1

declare dso_local %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ip6_rt_put(%struct.rt6_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
