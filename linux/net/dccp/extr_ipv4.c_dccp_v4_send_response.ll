; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_send_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dst_entry = type { i32 }
%struct.flowi4 = type { i32 }
%struct.inet_request_sock = type { i32, i32, i32 }
%struct.dccp_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.request_sock*)* @dccp_v4_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_v4_send_response(%struct.sock* %0, %struct.request_sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.flowi4, align 4
  %9 = alloca %struct.inet_request_sock*, align 8
  %10 = alloca %struct.dccp_hdr*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.request_sock* %1, %struct.request_sock** %4, align 8
  store i32 -1, i32* %5, align 4
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %13 = call %struct.dst_entry* @inet_csk_route_req(%struct.sock* %11, %struct.flowi4* %8, %struct.request_sock* %12)
  store %struct.dst_entry* %13, %struct.dst_entry** %7, align 8
  %14 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %15 = icmp eq %struct.dst_entry* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %57

17:                                               ; preds = %2
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %20 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %21 = call %struct.sk_buff* @dccp_make_response(%struct.sock* %18, %struct.dst_entry* %19, %struct.request_sock* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %56

24:                                               ; preds = %17
  %25 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %26 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %25)
  store %struct.inet_request_sock* %26, %struct.inet_request_sock** %9, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %27)
  store %struct.dccp_hdr* %28, %struct.dccp_hdr** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load %struct.inet_request_sock*, %struct.inet_request_sock** %9, align 8
  %31 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inet_request_sock*, %struct.inet_request_sock** %9, align 8
  %34 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dccp_v4_csum_finish(%struct.sk_buff* %29, i32 %32, i32 %35)
  %37 = load %struct.dccp_hdr*, %struct.dccp_hdr** %10, align 8
  %38 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = call i32 (...) @rcu_read_lock()
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = load %struct.inet_request_sock*, %struct.inet_request_sock** %9, align 8
  %43 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.inet_request_sock*, %struct.inet_request_sock** %9, align 8
  %46 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inet_request_sock*, %struct.inet_request_sock** %9, align 8
  %49 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rcu_dereference(i32 %50)
  %52 = call i32 @ip_build_and_send_pkt(%struct.sk_buff* %40, %struct.sock* %41, i32 %44, i32 %47, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = call i32 (...) @rcu_read_unlock()
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @net_xmit_eval(i32 %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %24, %17
  br label %57

57:                                               ; preds = %56, %16
  %58 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %59 = call i32 @dst_release(%struct.dst_entry* %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.dst_entry* @inet_csk_route_req(%struct.sock*, %struct.flowi4*, %struct.request_sock*) #1

declare dso_local %struct.sk_buff* @dccp_make_response(%struct.sock*, %struct.dst_entry*, %struct.request_sock*) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_v4_csum_finish(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ip_build_and_send_pkt(%struct.sk_buff*, %struct.sock*, i32, i32, i32) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @net_xmit_eval(i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
