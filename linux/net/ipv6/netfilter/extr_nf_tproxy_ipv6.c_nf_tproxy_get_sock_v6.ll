; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_tproxy_ipv6.c_nf_tproxy_get_sock_v6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_tproxy_ipv6.c_nf_tproxy_get_sock_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.tcphdr = type { i32 }

@tcp_hashinfo = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"tproxy socket lookup: proto %u %pI6:%u -> %pI6:%u, lookup type: %d, sock %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @nf_tproxy_get_sock_v6(%struct.net* %0, %struct.sk_buff* %1, i32 %2, i32 %3, %struct.in6_addr* %4, %struct.in6_addr* %5, i32 %6, i32 %7, %struct.net_device* %8, i32 %9) #0 {
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.in6_addr*, align 8
  %17 = alloca %struct.in6_addr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.net_device*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.sock*, align 8
  %23 = alloca %struct.tcphdr, align 4
  %24 = alloca %struct.tcphdr*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %12, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store %struct.in6_addr* %4, %struct.in6_addr** %16, align 8
  store %struct.in6_addr* %5, %struct.in6_addr** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store %struct.net_device* %8, %struct.net_device** %20, align 8
  store i32 %9, i32* %21, align 4
  %27 = load i32, i32* %15, align 4
  switch i32 %27, label %117 [
    i32 131, label %28
    i32 130, label %76
  ]

28:                                               ; preds = %10
  %29 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %29, i32 %30, i32 4, %struct.tcphdr* %23)
  store %struct.tcphdr* %31, %struct.tcphdr** %24, align 8
  %32 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %33 = icmp eq %struct.tcphdr* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store %struct.sock* null, %struct.sock** %11, align 8
  br label %131

35:                                               ; preds = %28
  %36 = load i32, i32* %21, align 4
  switch i32 %36, label %73 [
    i32 128, label %37
    i32 129, label %62
  ]

37:                                               ; preds = %35
  %38 = load %struct.net*, %struct.net** %12, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.tcphdr*, %struct.tcphdr** %24, align 8
  %42 = call i32 @__tcp_hdrlen(%struct.tcphdr* %41)
  %43 = add nsw i32 %40, %42
  %44 = load %struct.in6_addr*, %struct.in6_addr** %16, align 8
  %45 = load i32, i32* %18, align 4
  %46 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %47 = load i32, i32* %19, align 4
  %48 = call i32 @ntohs(i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %20, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.sock* @inet6_lookup_listener(%struct.net* %38, i32* @tcp_hashinfo, %struct.sk_buff* %39, i32 %43, %struct.in6_addr* %44, i32 %45, %struct.in6_addr* %46, i32 %48, i32 %51, i32 0)
  store %struct.sock* %52, %struct.sock** %22, align 8
  %53 = load %struct.sock*, %struct.sock** %22, align 8
  %54 = icmp ne %struct.sock* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %37
  %56 = load %struct.sock*, %struct.sock** %22, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 2
  %58 = call i32 @refcount_inc_not_zero(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store %struct.sock* null, %struct.sock** %22, align 8
  br label %61

61:                                               ; preds = %60, %55, %37
  br label %75

62:                                               ; preds = %35
  %63 = load %struct.net*, %struct.net** %12, align 8
  %64 = load %struct.in6_addr*, %struct.in6_addr** %16, align 8
  %65 = load i32, i32* %18, align 4
  %66 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %67 = load i32, i32* %19, align 4
  %68 = call i32 @ntohs(i32 %67)
  %69 = load %struct.net_device*, %struct.net_device** %20, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.sock* @__inet6_lookup_established(%struct.net* %63, i32* @tcp_hashinfo, %struct.in6_addr* %64, i32 %65, %struct.in6_addr* %66, i32 %68, i32 %71, i32 0)
  store %struct.sock* %72, %struct.sock** %22, align 8
  br label %75

73:                                               ; preds = %35
  %74 = call i32 (...) @BUG()
  br label %75

75:                                               ; preds = %73, %62, %61
  br label %119

76:                                               ; preds = %10
  %77 = load %struct.net*, %struct.net** %12, align 8
  %78 = load %struct.in6_addr*, %struct.in6_addr** %16, align 8
  %79 = load i32, i32* %18, align 4
  %80 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %81 = load i32, i32* %19, align 4
  %82 = load %struct.net_device*, %struct.net_device** %20, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.sock* @udp6_lib_lookup(%struct.net* %77, %struct.in6_addr* %78, i32 %79, %struct.in6_addr* %80, i32 %81, i32 %84)
  store %struct.sock* %85, %struct.sock** %22, align 8
  %86 = load %struct.sock*, %struct.sock** %22, align 8
  %87 = icmp ne %struct.sock* %86, null
  br i1 %87, label %88, label %116

88:                                               ; preds = %76
  %89 = load %struct.sock*, %struct.sock** %22, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @TCP_ESTABLISHED, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %25, align 4
  %95 = load %struct.sock*, %struct.sock** %22, align 8
  %96 = getelementptr inbounds %struct.sock, %struct.sock* %95, i32 0, i32 0
  %97 = call i32 @ipv6_addr_any(i32* %96)
  store i32 %97, i32* %26, align 4
  %98 = load i32, i32* %21, align 4
  %99 = icmp eq i32 %98, 129
  br i1 %99, label %100, label %106

100:                                              ; preds = %88
  %101 = load i32, i32* %25, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* %26, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103, %88
  %107 = load i32, i32* %21, align 4
  %108 = icmp eq i32 %107, 128
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* %25, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109, %103, %100
  %113 = load %struct.sock*, %struct.sock** %22, align 8
  %114 = call i32 @sock_put(%struct.sock* %113)
  store %struct.sock* null, %struct.sock** %22, align 8
  br label %115

115:                                              ; preds = %112, %109, %106
  br label %116

116:                                              ; preds = %115, %76
  br label %119

117:                                              ; preds = %10
  %118 = call i32 @WARN_ON(i32 1)
  store %struct.sock* null, %struct.sock** %22, align 8
  br label %119

119:                                              ; preds = %117, %116, %75
  %120 = load i32, i32* %15, align 4
  %121 = load %struct.in6_addr*, %struct.in6_addr** %16, align 8
  %122 = load i32, i32* %18, align 4
  %123 = call i32 @ntohs(i32 %122)
  %124 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %125 = load i32, i32* %19, align 4
  %126 = call i32 @ntohs(i32 %125)
  %127 = load i32, i32* %21, align 4
  %128 = load %struct.sock*, %struct.sock** %22, align 8
  %129 = call i32 @pr_debug(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %120, %struct.in6_addr* %121, i32 %123, %struct.in6_addr* %124, i32 %126, i32 %127, %struct.sock* %128)
  %130 = load %struct.sock*, %struct.sock** %22, align 8
  store %struct.sock* %130, %struct.sock** %11, align 8
  br label %131

131:                                              ; preds = %119, %34
  %132 = load %struct.sock*, %struct.sock** %11, align 8
  ret %struct.sock* %132
}

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local %struct.sock* @inet6_lookup_listener(%struct.net*, i32*, %struct.sk_buff*, i32, %struct.in6_addr*, i32, %struct.in6_addr*, i32, i32, i32) #1

declare dso_local i32 @__tcp_hdrlen(%struct.tcphdr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local %struct.sock* @__inet6_lookup_established(%struct.net*, i32*, %struct.in6_addr*, i32, %struct.in6_addr*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.sock* @udp6_lib_lookup(%struct.net*, %struct.in6_addr*, i32, %struct.in6_addr*, i32, i32) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, %struct.in6_addr*, i32, %struct.in6_addr*, i32, i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
