; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_icmpv6_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_icmpv6_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.inet6_skb_parm = type { i32 }
%struct.icmp6hdr = type { i64 }
%struct.net = type { i32 }

@ICMPV6_PKT_TOOBIG = common dso_local global i32 0, align 4
@NDISC_REDIRECT = common dso_local global i32 0, align 4
@ICMPV6_INFOMSG_MASK = common dso_local global i32 0, align 4
@ICMPV6_ECHO_REQUEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_skb_parm*, i32, i32, i32, i32)* @icmpv6_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmpv6_err(%struct.sk_buff* %0, %struct.inet6_skb_parm* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.inet6_skb_parm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.icmp6hdr*, align 8
  %14 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.inet6_skb_parm* %1, %struct.inet6_skb_parm** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = inttoptr i64 %20 to %struct.icmp6hdr*
  store %struct.icmp6hdr* %21, %struct.icmp6hdr** %13, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call %struct.net* @dev_net(%struct.TYPE_2__* %24)
  store %struct.net* %25, %struct.net** %14, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @ICMPV6_PKT_TOOBIG, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %6
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load %struct.net*, %struct.net** %14, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.net*, %struct.net** %14, align 8
  %39 = call i32 @sock_net_uid(%struct.net* %38, i32* null)
  %40 = call i32 @ip6_update_pmtu(%struct.sk_buff* %30, %struct.net* %31, i32 %32, i32 %37, i32 0, i32 %39)
  br label %57

41:                                               ; preds = %6
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @NDISC_REDIRECT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = load %struct.net*, %struct.net** %14, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.net*, %struct.net** %14, align 8
  %54 = call i32 @sock_net_uid(%struct.net* %53, i32* null)
  %55 = call i32 @ip6_redirect(%struct.sk_buff* %46, %struct.net* %47, i32 %52, i32 0, i32 %54)
  br label %56

56:                                               ; preds = %45, %41
  br label %57

57:                                               ; preds = %56, %29
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @ICMPV6_INFOMSG_MASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %57
  %63 = load %struct.icmp6hdr*, %struct.icmp6hdr** %13, align 8
  %64 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ICMPV6_ECHO_REQUEST, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @ntohl(i32 %71)
  %73 = call i32 @ping_err(%struct.sk_buff* %69, i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %68, %62
  br label %75

75:                                               ; preds = %74, %57
  ret i32 0
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_2__*) #1

declare dso_local i32 @ip6_update_pmtu(%struct.sk_buff*, %struct.net*, i32, i32, i32, i32) #1

declare dso_local i32 @sock_net_uid(%struct.net*, i32*) #1

declare dso_local i32 @ip6_redirect(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

declare dso_local i32 @ping_err(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
