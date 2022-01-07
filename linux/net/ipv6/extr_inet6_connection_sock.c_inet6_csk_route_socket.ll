; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_route_socket.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_route_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.sock = type { i32, i32, i32, i32, i32 }
%struct.flowi6 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.inet_sock = type { i32, i32 }
%struct.ipv6_pinfo = type { i32, i32, i32, i32 }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.sock*, %struct.flowi6*)* @inet6_csk_route_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @inet6_csk_route_socket(%struct.sock* %0, %struct.flowi6* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.flowi6*, align 8
  %5 = alloca %struct.inet_sock*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_addr, align 4
  %9 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.flowi6* %1, %struct.flowi6** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.inet_sock* @inet_sk(%struct.sock* %10)
  store %struct.inet_sock* %11, %struct.inet_sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %12)
  store %struct.ipv6_pinfo* %13, %struct.ipv6_pinfo** %6, align 8
  %14 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %15 = call i32 @memset(%struct.flowi6* %14, i32 0, i32 36)
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %20 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 4
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %25 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %27 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %30 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %32 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %35 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %38 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @IP6_ECN_flow_xmit(%struct.sock* %36, i32 %39)
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %45 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sock*, %struct.sock** %3, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %50 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %52 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %55 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %57 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %60 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.sock*, %struct.sock** %3, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %65 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %68 = call i32 @flowi6_to_flowi(%struct.flowi6* %67)
  %69 = call i32 @security_sk_classify_flow(%struct.sock* %66, i32 %68)
  %70 = call i32 (...) @rcu_read_lock()
  %71 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %72 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %73 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @rcu_dereference(i32 %74)
  %76 = call %struct.in6_addr* @fl6_update_dst(%struct.flowi6* %71, i32 %75, %struct.in6_addr* %8)
  store %struct.in6_addr* %76, %struct.in6_addr** %7, align 8
  %77 = call i32 (...) @rcu_read_unlock()
  %78 = load %struct.sock*, %struct.sock** %3, align 8
  %79 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %80 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.dst_entry* @__inet6_csk_dst_check(%struct.sock* %78, i32 %81)
  store %struct.dst_entry* %82, %struct.dst_entry** %9, align 8
  %83 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %84 = icmp ne %struct.dst_entry* %83, null
  br i1 %84, label %98, label %85

85:                                               ; preds = %2
  %86 = load %struct.sock*, %struct.sock** %3, align 8
  %87 = load %struct.flowi6*, %struct.flowi6** %4, align 8
  %88 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %89 = call %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock* %86, %struct.flowi6* %87, %struct.in6_addr* %88)
  store %struct.dst_entry* %89, %struct.dst_entry** %9, align 8
  %90 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %91 = call i32 @IS_ERR(%struct.dst_entry* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %85
  %94 = load %struct.sock*, %struct.sock** %3, align 8
  %95 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %96 = call i32 @ip6_dst_store(%struct.sock* %94, %struct.dst_entry* %95, i32* null, i32* null)
  br label %97

97:                                               ; preds = %93, %85
  br label %98

98:                                               ; preds = %97, %2
  %99 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  ret %struct.dst_entry* %99
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local i32 @IP6_ECN_flow_xmit(%struct.sock*, i32) #1

declare dso_local i32 @security_sk_classify_flow(%struct.sock*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in6_addr* @fl6_update_dst(%struct.flowi6*, i32, %struct.in6_addr*) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.dst_entry* @__inet6_csk_dst_check(%struct.sock*, i32) #1

declare dso_local %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock*, %struct.flowi6*, %struct.in6_addr*) #1

declare dso_local i32 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @ip6_dst_store(%struct.sock*, %struct.dst_entry*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
