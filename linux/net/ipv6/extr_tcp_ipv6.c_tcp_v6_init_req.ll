; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_init_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_init_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_request_sock = type { %struct.sk_buff*, i32, i32, i32 }
%struct.ipv6_pinfo = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_sock*, %struct.sock*, %struct.sk_buff*)* @tcp_v6_init_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_v6_init_req(%struct.request_sock* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_request_sock*, align 8
  %9 = alloca %struct.ipv6_pinfo*, align 8
  store %struct.request_sock* %0, %struct.request_sock** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call %struct.TYPE_12__* @TCP_SKB_CB(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ipv6_l3mdev_skb(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %18 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %17)
  store %struct.inet_request_sock* %18, %struct.inet_request_sock** %8, align 8
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = call %struct.ipv6_pinfo* @tcp_inet6_sk(%struct.sock* %19)
  store %struct.ipv6_pinfo* %20, %struct.ipv6_pinfo** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %26 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %32 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sock*, %struct.sock** %5, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37, %3
  %41 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %42 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %41, i32 0, i32 2
  %43 = call i32 @ipv6_addr_type(i32* %42)
  %44 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @tcp_v6_iif(%struct.sk_buff* %48)
  %50 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %51 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %40, %37
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call %struct.TYPE_12__* @TCP_SKB_CB(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %107, label %58

58:                                               ; preds = %52
  %59 = load %struct.sock*, %struct.sock** %5, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call %struct.TYPE_12__* @TCP_SKB_CB(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = call i64 @ipv6_opt_accepted(%struct.sock* %59, %struct.sk_buff* %60, %struct.TYPE_10__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %100, label %67

67:                                               ; preds = %58
  %68 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %69 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %100, label %74

74:                                               ; preds = %67
  %75 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %76 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %100, label %81

81:                                               ; preds = %74
  %82 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %83 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %81
  %89 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %90 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %9, align 8
  %97 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95, %88, %81, %74, %67, %58
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = call i32 @refcount_inc(i32* %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %106 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %105, i32 0, i32 0
  store %struct.sk_buff* %104, %struct.sk_buff** %106, align 8
  br label %107

107:                                              ; preds = %100, %95, %52
  ret void
}

declare dso_local i32 @ipv6_l3mdev_skb(i32) #1

declare dso_local %struct.TYPE_12__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.ipv6_pinfo* @tcp_inet6_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_11__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @tcp_v6_iif(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_opt_accepted(%struct.sock*, %struct.sk_buff*, %struct.TYPE_10__*) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
