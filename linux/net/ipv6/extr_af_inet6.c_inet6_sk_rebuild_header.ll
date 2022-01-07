; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_af_inet6.c_inet6_sk_rebuild_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_af_inet6.c_inet6_sk_rebuild_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.ipv6_pinfo = type { i32, i32, i32, i32 }
%struct.dst_entry = type { i32 }
%struct.inet_sock = type { i32, i32 }
%struct.in6_addr = type { i32 }
%struct.flowi6 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_sk_rebuild_header(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ipv6_pinfo*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.inet_sock*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_addr, align 4
  %9 = alloca %struct.flowi6, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %10)
  store %struct.ipv6_pinfo* %11, %struct.ipv6_pinfo** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.dst_entry* @__sk_dst_check(%struct.sock* %12, i32 %15)
  store %struct.dst_entry* %16, %struct.dst_entry** %5, align 8
  %17 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %18 = icmp ne %struct.dst_entry* %17, null
  br i1 %18, label %89, label %19

19:                                               ; preds = %1
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call %struct.inet_sock* @inet_sk(%struct.sock* %20)
  store %struct.inet_sock* %21, %struct.inet_sock** %6, align 8
  %22 = call i32 @memset(%struct.flowi6* %9, i32 0, i32 36)
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 7
  store i32 %29, i32* %30, align 4
  %31 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %4, align 8
  %32 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 6
  store i32 %33, i32* %34, align 4
  %35 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %4, align 8
  %36 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 5
  store i32 %37, i32* %38, align 4
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 4
  store i32 %41, i32* %42, align 4
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %48 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %52 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.sock*, %struct.sock** %3, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %9, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = call i32 @flowi6_to_flowi(%struct.flowi6* %9)
  %61 = call i32 @security_sk_classify_flow(%struct.sock* %59, i32 %60)
  %62 = call i32 (...) @rcu_read_lock()
  %63 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %4, align 8
  %64 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rcu_dereference(i32 %65)
  %67 = call %struct.in6_addr* @fl6_update_dst(%struct.flowi6* %9, i32 %66, %struct.in6_addr* %8)
  store %struct.in6_addr* %67, %struct.in6_addr** %7, align 8
  %68 = call i32 (...) @rcu_read_unlock()
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %71 = call %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock* %69, %struct.flowi6* %9, %struct.in6_addr* %70)
  store %struct.dst_entry* %71, %struct.dst_entry** %5, align 8
  %72 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %73 = call i64 @IS_ERR(%struct.dst_entry* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %19
  %76 = load %struct.sock*, %struct.sock** %3, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %79 = call i32 @PTR_ERR(%struct.dst_entry* %78)
  %80 = sub nsw i32 0, %79
  %81 = load %struct.sock*, %struct.sock** %3, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %84 = call i32 @PTR_ERR(%struct.dst_entry* %83)
  store i32 %84, i32* %2, align 4
  br label %90

85:                                               ; preds = %19
  %86 = load %struct.sock*, %struct.sock** %3, align 8
  %87 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %88 = call i32 @ip6_dst_store(%struct.sock* %86, %struct.dst_entry* %87, i32* null, i32* null)
  br label %89

89:                                               ; preds = %85, %1
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %75
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @__sk_dst_check(%struct.sock*, i32) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local i32 @security_sk_classify_flow(%struct.sock*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in6_addr* @fl6_update_dst(%struct.flowi6*, i32, %struct.in6_addr*) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock*, %struct.flowi6*, %struct.in6_addr*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.dst_entry*) #1

declare dso_local i32 @ip6_dst_store(%struct.sock*, %struct.dst_entry*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
