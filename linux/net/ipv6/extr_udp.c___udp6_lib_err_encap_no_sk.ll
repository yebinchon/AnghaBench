; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c___udp6_lib_err_encap_no_sk.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c___udp6_lib_err_encap_no_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.inet6_skb_parm = type { i32 }
%struct.ip6_tnl_encap_ops = type { i32 (%struct.sk_buff*, %struct.inet6_skb_parm.0*, i32, i32, i32, i32)* }
%struct.inet6_skb_parm.0 = type opaque

@MAX_IPTUN_ENCAP_OPS = common dso_local global i32 0, align 4
@ip6tun_encaps = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)* @__udp6_lib_err_encap_no_sk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__udp6_lib_err_encap_no_sk(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.inet6_skb_parm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)*, align 8
  %16 = alloca %struct.ip6_tnl_encap_ops*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %50, %6
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* @MAX_IPTUN_ENCAP_OPS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load i32*, i32** @ip6tun_encaps, align 8
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ip6_tnl_encap_ops* @rcu_dereference(i32 %26)
  store %struct.ip6_tnl_encap_ops* %27, %struct.ip6_tnl_encap_ops** %16, align 8
  %28 = load %struct.ip6_tnl_encap_ops*, %struct.ip6_tnl_encap_ops** %16, align 8
  %29 = icmp ne %struct.ip6_tnl_encap_ops* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %50

31:                                               ; preds = %21
  %32 = load %struct.ip6_tnl_encap_ops*, %struct.ip6_tnl_encap_ops** %16, align 8
  %33 = getelementptr inbounds %struct.ip6_tnl_encap_ops, %struct.ip6_tnl_encap_ops* %32, i32 0, i32 0
  %34 = load i32 (%struct.sk_buff*, %struct.inet6_skb_parm.0*, i32, i32, i32, i32)*, i32 (%struct.sk_buff*, %struct.inet6_skb_parm.0*, i32, i32, i32, i32)** %33, align 8
  %35 = bitcast i32 (%struct.sk_buff*, %struct.inet6_skb_parm.0*, i32, i32, i32, i32)* %34 to i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)*
  store i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)* %35, i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)** %15, align 8
  %36 = load i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)*, i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)** %15, align 8
  %37 = icmp ne i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)*, i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)** %15, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 %39(%struct.sk_buff* %40, %struct.inet6_skb_parm* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %56

49:                                               ; preds = %38, %31
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %17

53:                                               ; preds = %17
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local %struct.ip6_tnl_encap_ops* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
