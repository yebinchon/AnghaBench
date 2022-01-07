; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_route_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_route_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.sock = type { i32 }
%struct.flowi6 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.request_sock = type { i32 }
%struct.inet_request_sock = type { i32, i32, i32, i32, i32, i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.in6_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @inet6_csk_route_req(%struct.sock* %0, %struct.flowi6* %1, %struct.request_sock* %2, i32 %3) #0 {
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.flowi6*, align 8
  %8 = alloca %struct.request_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inet_request_sock*, align 8
  %11 = alloca %struct.ipv6_pinfo*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca %struct.in6_addr, align 4
  %14 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.flowi6* %1, %struct.flowi6** %7, align 8
  store %struct.request_sock* %2, %struct.request_sock** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %16 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %15)
  store %struct.inet_request_sock* %16, %struct.inet_request_sock** %10, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %17)
  store %struct.ipv6_pinfo* %18, %struct.ipv6_pinfo** %11, align 8
  %19 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %20 = call i32 @memset(%struct.flowi6* %19, i32 0, i32 32)
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %23 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %25 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %28 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = call i32 (...) @rcu_read_lock()
  %30 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %31 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %32 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rcu_dereference(i32 %33)
  %35 = call %struct.in6_addr* @fl6_update_dst(%struct.flowi6* %30, i32 %34, %struct.in6_addr* %13)
  store %struct.in6_addr* %35, %struct.in6_addr** %12, align 8
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %38 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %41 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %43 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %46 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %48 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %51 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %53 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %56 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.inet_request_sock*, %struct.inet_request_sock** %10, align 8
  %58 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @htons(i32 %59)
  %61 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %62 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sock*, %struct.sock** %6, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %67 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %69 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %70 = call i32 @flowi6_to_flowi(%struct.flowi6* %69)
  %71 = call i32 @security_req_classify_flow(%struct.request_sock* %68, i32 %70)
  %72 = load %struct.sock*, %struct.sock** %6, align 8
  %73 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %74 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %75 = call %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock* %72, %struct.flowi6* %73, %struct.in6_addr* %74)
  store %struct.dst_entry* %75, %struct.dst_entry** %14, align 8
  %76 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %77 = call i64 @IS_ERR(%struct.dst_entry* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %4
  store %struct.dst_entry* null, %struct.dst_entry** %5, align 8
  br label %82

80:                                               ; preds = %4
  %81 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  store %struct.dst_entry* %81, %struct.dst_entry** %5, align 8
  br label %82

82:                                               ; preds = %80, %79
  %83 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  ret %struct.dst_entry* %83
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in6_addr* @fl6_update_dst(%struct.flowi6*, i32, %struct.in6_addr*) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @security_req_classify_flow(%struct.request_sock*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #1

declare dso_local %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock*, %struct.flowi6*, %struct.in6_addr*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
