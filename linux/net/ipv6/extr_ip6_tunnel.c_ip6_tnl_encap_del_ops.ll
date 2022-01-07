; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_encap_del_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_encap_del_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl_encap_ops = type { i32 }

@MAX_IPTUN_ENCAP_OPS = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ip6tun_encaps = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_tnl_encap_del_ops(%struct.ip6_tnl_encap_ops* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip6_tnl_encap_ops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ip6_tnl_encap_ops* %0, %struct.ip6_tnl_encap_ops** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MAX_IPTUN_ENCAP_OPS, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ERANGE, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load i32*, i32** @ip6tun_encaps, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = bitcast i32* %17 to %struct.ip6_tnl_encap_ops**
  %19 = load %struct.ip6_tnl_encap_ops*, %struct.ip6_tnl_encap_ops** %4, align 8
  %20 = call %struct.ip6_tnl_encap_ops* @cmpxchg(%struct.ip6_tnl_encap_ops** %18, %struct.ip6_tnl_encap_ops* %19, i32* null)
  %21 = load %struct.ip6_tnl_encap_ops*, %struct.ip6_tnl_encap_ops** %4, align 8
  %22 = icmp eq %struct.ip6_tnl_encap_ops* %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 -1
  store i32 %24, i32* %6, align 4
  %25 = call i32 (...) @synchronize_net()
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %13, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.ip6_tnl_encap_ops* @cmpxchg(%struct.ip6_tnl_encap_ops**, %struct.ip6_tnl_encap_ops*, i32*) #1

declare dso_local i32 @synchronize_net(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
