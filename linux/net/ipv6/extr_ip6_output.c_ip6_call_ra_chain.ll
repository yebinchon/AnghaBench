; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_call_ra_chain.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_call_ra_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_ra_chain = type { i32, %struct.sock*, %struct.ip6_ra_chain* }
%struct.sock = type { i64 }
%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ipv6_pinfo = type { i64 }

@ip6_ra_lock = common dso_local global i32 0, align 4
@ip6_ra_chain = common dso_local global %struct.ip6_ra_chain* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @ip6_call_ra_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_call_ra_chain(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip6_ra_chain*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.ipv6_pinfo*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sock* null, %struct.sock** %7, align 8
  %11 = call i32 @read_lock(i32* @ip6_ra_lock)
  %12 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** @ip6_ra_chain, align 8
  store %struct.ip6_ra_chain* %12, %struct.ip6_ra_chain** %6, align 8
  br label %13

13:                                               ; preds = %80, %2
  %14 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %15 = icmp ne %struct.ip6_ra_chain* %14, null
  br i1 %15, label %16, label %84

16:                                               ; preds = %13
  %17 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %18 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %17, i32 0, i32 1
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %8, align 8
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = icmp ne %struct.sock* %20, null
  br i1 %21, label %22, label %79

22:                                               ; preds = %16
  %23 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %24 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %22
  %29 = load %struct.sock*, %struct.sock** %8, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.sock*, %struct.sock** %8, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %36, %41
  br i1 %42, label %43, label %79

43:                                               ; preds = %33, %28
  %44 = load %struct.sock*, %struct.sock** %8, align 8
  %45 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %44)
  store %struct.ipv6_pinfo* %45, %struct.ipv6_pinfo** %9, align 8
  %46 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %47 = icmp ne %struct.ipv6_pinfo* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %50 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.sock*, %struct.sock** %8, align 8
  %55 = call i32 @sock_net(%struct.sock* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call i32 @dev_net(%struct.TYPE_2__* %58)
  %60 = call i32 @net_eq(i32 %55, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %80

63:                                               ; preds = %53, %48, %43
  %64 = load %struct.sock*, %struct.sock** %7, align 8
  %65 = icmp ne %struct.sock* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %67, i32 %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %10, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.sock*, %struct.sock** %7, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = call i32 @rawv6_rcv(%struct.sock* %73, %struct.sk_buff* %74)
  br label %76

76:                                               ; preds = %72, %66
  br label %77

77:                                               ; preds = %76, %63
  %78 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %78, %struct.sock** %7, align 8
  br label %79

79:                                               ; preds = %77, %33, %22, %16
  br label %80

80:                                               ; preds = %79, %62
  %81 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %82 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %81, i32 0, i32 2
  %83 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %82, align 8
  store %struct.ip6_ra_chain* %83, %struct.ip6_ra_chain** %6, align 8
  br label %13

84:                                               ; preds = %13
  %85 = load %struct.sock*, %struct.sock** %7, align 8
  %86 = icmp ne %struct.sock* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.sock*, %struct.sock** %7, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = call i32 @rawv6_rcv(%struct.sock* %88, %struct.sk_buff* %89)
  %91 = call i32 @read_unlock(i32* @ip6_ra_lock)
  store i32 1, i32* %3, align 4
  br label %94

92:                                               ; preds = %84
  %93 = call i32 @read_unlock(i32* @ip6_ra_lock)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @dev_net(%struct.TYPE_2__*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @rawv6_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
