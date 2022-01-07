; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_send_synack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_send_synack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.dst_entry = type { i32 }
%struct.flowi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.flowi6 }
%struct.flowi6 = type { i32, i32 }
%struct.request_sock = type { i32 }
%struct.tcp_fastopen_cookie = type { i32 }
%struct.inet_request_sock = type { %struct.ipv6_txoptions*, i64, i32, i32 }
%struct.ipv6_txoptions = type { i32 }
%struct.ipv6_pinfo = type { i32, i32, i64 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.dst_entry*, %struct.flowi*, %struct.request_sock*, %struct.tcp_fastopen_cookie*, i32)* @tcp_v6_send_synack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_v6_send_synack(%struct.sock* %0, %struct.dst_entry* %1, %struct.flowi* %2, %struct.request_sock* %3, %struct.tcp_fastopen_cookie* %4, i32 %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.flowi*, align 8
  %10 = alloca %struct.request_sock*, align 8
  %11 = alloca %struct.tcp_fastopen_cookie*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.inet_request_sock*, align 8
  %14 = alloca %struct.ipv6_pinfo*, align 8
  %15 = alloca %struct.ipv6_txoptions*, align 8
  %16 = alloca %struct.flowi6*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %8, align 8
  store %struct.flowi* %2, %struct.flowi** %9, align 8
  store %struct.request_sock* %3, %struct.request_sock** %10, align 8
  store %struct.tcp_fastopen_cookie* %4, %struct.tcp_fastopen_cookie** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %20 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %19)
  store %struct.inet_request_sock* %20, %struct.inet_request_sock** %13, align 8
  %21 = load %struct.sock*, %struct.sock** %7, align 8
  %22 = call %struct.ipv6_pinfo* @tcp_inet6_sk(%struct.sock* %21)
  store %struct.ipv6_pinfo* %22, %struct.ipv6_pinfo** %14, align 8
  %23 = load %struct.flowi*, %struct.flowi** %9, align 8
  %24 = getelementptr inbounds %struct.flowi, %struct.flowi* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.flowi6* %25, %struct.flowi6** %16, align 8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %18, align 4
  %28 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %29 = icmp ne %struct.dst_entry* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %6
  %31 = load %struct.sock*, %struct.sock** %7, align 8
  %32 = load %struct.flowi6*, %struct.flowi6** %16, align 8
  %33 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %34 = load i32, i32* @IPPROTO_TCP, align 4
  %35 = call %struct.dst_entry* @inet6_csk_route_req(%struct.sock* %31, %struct.flowi6* %32, %struct.request_sock* %33, i32 %34)
  store %struct.dst_entry* %35, %struct.dst_entry** %8, align 8
  %36 = icmp eq %struct.dst_entry* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %107

38:                                               ; preds = %30, %6
  %39 = load %struct.sock*, %struct.sock** %7, align 8
  %40 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %41 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %42 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call %struct.sk_buff* @tcp_make_synack(%struct.sock* %39, %struct.dst_entry* %40, %struct.request_sock* %41, %struct.tcp_fastopen_cookie* %42, i32 %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %17, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %47, label %106

47:                                               ; preds = %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %49 = load %struct.inet_request_sock*, %struct.inet_request_sock** %13, align 8
  %50 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %49, i32 0, i32 3
  %51 = load %struct.inet_request_sock*, %struct.inet_request_sock** %13, align 8
  %52 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %51, i32 0, i32 2
  %53 = call i32 @__tcp_v6_send_check(%struct.sk_buff* %48, i32* %50, i32* %52)
  %54 = load %struct.inet_request_sock*, %struct.inet_request_sock** %13, align 8
  %55 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.flowi6*, %struct.flowi6** %16, align 8
  %58 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %14, align 8
  %60 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %47
  %64 = load %struct.inet_request_sock*, %struct.inet_request_sock** %13, align 8
  %65 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.inet_request_sock*, %struct.inet_request_sock** %13, align 8
  %70 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @ipv6_hdr(i64 %71)
  %73 = call i32 @ip6_flowlabel(i32 %72)
  %74 = load %struct.flowi6*, %struct.flowi6** %16, align 8
  %75 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %68, %63, %47
  %77 = call i32 (...) @rcu_read_lock()
  %78 = load %struct.inet_request_sock*, %struct.inet_request_sock** %13, align 8
  %79 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %78, i32 0, i32 0
  %80 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %79, align 8
  store %struct.ipv6_txoptions* %80, %struct.ipv6_txoptions** %15, align 8
  %81 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %15, align 8
  %82 = icmp ne %struct.ipv6_txoptions* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %14, align 8
  %85 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.ipv6_txoptions* @rcu_dereference(i32 %86)
  store %struct.ipv6_txoptions* %87, %struct.ipv6_txoptions** %15, align 8
  br label %88

88:                                               ; preds = %83, %76
  %89 = load %struct.sock*, %struct.sock** %7, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %91 = load %struct.flowi6*, %struct.flowi6** %16, align 8
  %92 = load %struct.sock*, %struct.sock** %7, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %15, align 8
  %96 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %14, align 8
  %97 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.sock*, %struct.sock** %7, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ip6_xmit(%struct.sock* %89, %struct.sk_buff* %90, %struct.flowi6* %91, i32 %94, %struct.ipv6_txoptions* %95, i32 %98, i32 %101)
  store i32 %102, i32* %18, align 4
  %103 = call i32 (...) @rcu_read_unlock()
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @net_xmit_eval(i32 %104)
  store i32 %105, i32* %18, align 4
  br label %106

106:                                              ; preds = %88, %38
  br label %107

107:                                              ; preds = %106, %37
  %108 = load i32, i32* %18, align 4
  ret i32 %108
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.ipv6_pinfo* @tcp_inet6_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @inet6_csk_route_req(%struct.sock*, %struct.flowi6*, %struct.request_sock*, i32) #1

declare dso_local %struct.sk_buff* @tcp_make_synack(%struct.sock*, %struct.dst_entry*, %struct.request_sock*, %struct.tcp_fastopen_cookie*, i32) #1

declare dso_local i32 @__tcp_v6_send_check(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @ip6_flowlabel(i32) #1

declare dso_local i32 @ipv6_hdr(i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ipv6_txoptions* @rcu_dereference(i32) #1

declare dso_local i32 @ip6_xmit(%struct.sock*, %struct.sk_buff*, %struct.flowi6*, i32, %struct.ipv6_txoptions*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @net_xmit_eval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
