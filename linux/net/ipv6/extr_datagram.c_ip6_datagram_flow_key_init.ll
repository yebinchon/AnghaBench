; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ip6_datagram_flow_key_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_datagram.c_ip6_datagram_flow_key_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flowi6 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sock = type { i32, i32, i32, i32, i32 }
%struct.inet_sock = type { i32, i32 }
%struct.ipv6_pinfo = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flowi6*, %struct.sock*)* @ip6_datagram_flow_key_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_datagram_flow_key_init(%struct.flowi6* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.flowi6*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.inet_sock*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  store %struct.flowi6* %0, %struct.flowi6** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.inet_sock* @inet_sk(%struct.sock* %7)
  store %struct.inet_sock* %8, %struct.inet_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %9)
  store %struct.ipv6_pinfo* %10, %struct.ipv6_pinfo** %6, align 8
  %11 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %12 = call i32 @memset(%struct.flowi6* %11, i32 0, i32 36)
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %17 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %22 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %24 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %27 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %32 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %37 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %39 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %42 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %44 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %47 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %49 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %52 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %57 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %59 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %2
  %63 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %64 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %68 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %62, %2
  %70 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %71 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %69
  %75 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %76 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %75, i32 0, i32 1
  %77 = call i64 @ipv6_addr_is_multicast(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %81 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %84 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %74, %69
  %86 = load %struct.sock*, %struct.sock** %4, align 8
  %87 = load %struct.flowi6*, %struct.flowi6** %3, align 8
  %88 = call i32 @flowi6_to_flowi(%struct.flowi6* %87)
  %89 = call i32 @security_sk_classify_flow(%struct.sock* %86, i32 %88)
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local i64 @ipv6_addr_is_multicast(i32*) #1

declare dso_local i32 @security_sk_classify_flow(%struct.sock*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
