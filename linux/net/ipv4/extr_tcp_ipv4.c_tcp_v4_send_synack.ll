; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_send_synack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_ipv4.c_tcp_v4_send_synack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.flowi = type { i32 }
%struct.request_sock = type { i32 }
%struct.tcp_fastopen_cookie = type { i32 }
%struct.inet_request_sock = type { i32, i32, i32 }
%struct.flowi4 = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.dst_entry*, %struct.flowi*, %struct.request_sock*, %struct.tcp_fastopen_cookie*, i32)* @tcp_v4_send_synack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_v4_send_synack(%struct.sock* %0, %struct.dst_entry* %1, %struct.flowi* %2, %struct.request_sock* %3, %struct.tcp_fastopen_cookie* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.flowi*, align 8
  %11 = alloca %struct.request_sock*, align 8
  %12 = alloca %struct.tcp_fastopen_cookie*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inet_request_sock*, align 8
  %15 = alloca %struct.flowi4, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %9, align 8
  store %struct.flowi* %2, %struct.flowi** %10, align 8
  store %struct.request_sock* %3, %struct.request_sock** %11, align 8
  store %struct.tcp_fastopen_cookie* %4, %struct.tcp_fastopen_cookie** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.request_sock*, %struct.request_sock** %11, align 8
  %19 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %18)
  store %struct.inet_request_sock* %19, %struct.inet_request_sock** %14, align 8
  store i32 -1, i32* %16, align 4
  %20 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %21 = icmp ne %struct.dst_entry* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %6
  %23 = load %struct.sock*, %struct.sock** %8, align 8
  %24 = load %struct.request_sock*, %struct.request_sock** %11, align 8
  %25 = call %struct.dst_entry* @inet_csk_route_req(%struct.sock* %23, %struct.flowi4* %15, %struct.request_sock* %24)
  store %struct.dst_entry* %25, %struct.dst_entry** %9, align 8
  %26 = icmp eq %struct.dst_entry* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, i32* %7, align 4
  br label %65

28:                                               ; preds = %22, %6
  %29 = load %struct.sock*, %struct.sock** %8, align 8
  %30 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %31 = load %struct.request_sock*, %struct.request_sock** %11, align 8
  %32 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call %struct.sk_buff* @tcp_make_synack(%struct.sock* %29, %struct.dst_entry* %30, %struct.request_sock* %31, %struct.tcp_fastopen_cookie* %32, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %17, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %37, label %63

37:                                               ; preds = %28
  %38 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %39 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %40 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %43 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @__tcp_v4_send_check(%struct.sk_buff* %38, i32 %41, i32 %44)
  %46 = call i32 (...) @rcu_read_lock()
  %47 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %48 = load %struct.sock*, %struct.sock** %8, align 8
  %49 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %50 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %53 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %56 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rcu_dereference(i32 %57)
  %59 = call i32 @ip_build_and_send_pkt(%struct.sk_buff* %47, %struct.sock* %48, i32 %51, i32 %54, i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = call i32 (...) @rcu_read_unlock()
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @net_xmit_eval(i32 %61)
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %37, %28
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %63, %27
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.dst_entry* @inet_csk_route_req(%struct.sock*, %struct.flowi4*, %struct.request_sock*) #1

declare dso_local %struct.sk_buff* @tcp_make_synack(%struct.sock*, %struct.dst_entry*, %struct.request_sock*, %struct.tcp_fastopen_cookie*, i32) #1

declare dso_local i32 @__tcp_v4_send_check(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ip_build_and_send_pkt(%struct.sk_buff*, %struct.sock*, i32, i32, i32) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @net_xmit_eval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
