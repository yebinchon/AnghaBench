; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c___udp_v6_is_mcast_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c___udp_v6_is_mcast_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i64, i32, i32, i32 }
%struct.in6_addr = type { i32 }
%struct.inet_sock = type { i64 }
%struct.TYPE_2__ = type { i16 }

@PF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, i64, %struct.in6_addr*, i64, %struct.in6_addr*, i32, i32, i16)* @__udp_v6_is_mcast_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__udp_v6_is_mcast_sock(%struct.net* %0, %struct.sock* %1, i64 %2, %struct.in6_addr* %3, i64 %4, %struct.in6_addr* %5, i32 %6, i32 %7, i16 zeroext %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.in6_addr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.in6_addr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca %struct.inet_sock*, align 8
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.sock* %1, %struct.sock** %12, align 8
  store i64 %2, i64* %13, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %14, align 8
  store i64 %4, i64* %15, align 8
  store %struct.in6_addr* %5, %struct.in6_addr** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i16 %8, i16* %19, align 2
  %21 = load %struct.sock*, %struct.sock** %12, align 8
  %22 = call %struct.inet_sock* @inet_sk(%struct.sock* %21)
  store %struct.inet_sock* %22, %struct.inet_sock** %20, align 8
  %23 = load %struct.sock*, %struct.sock** %12, align 8
  %24 = call i32 @sock_net(%struct.sock* %23)
  %25 = load %struct.net*, %struct.net** %11, align 8
  %26 = call i32 @net_eq(i32 %24, %struct.net* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %95

29:                                               ; preds = %9
  %30 = load %struct.sock*, %struct.sock** %12, align 8
  %31 = call %struct.TYPE_2__* @udp_sk(%struct.sock* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = load i16, i16* %19, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %86, label %38

38:                                               ; preds = %29
  %39 = load %struct.sock*, %struct.sock** %12, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PF_INET6, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %86, label %44

44:                                               ; preds = %38
  %45 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %46 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %51 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %86, label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.sock*, %struct.sock** %12, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 3
  %58 = call i32 @ipv6_addr_any(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load %struct.sock*, %struct.sock** %12, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 3
  %63 = load %struct.in6_addr*, %struct.in6_addr** %16, align 8
  %64 = call i32 @ipv6_addr_equal(i32* %62, %struct.in6_addr* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %60, %55
  %67 = load %struct.net*, %struct.net** %11, align 8
  %68 = load %struct.sock*, %struct.sock** %12, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @udp_sk_bound_dev_eq(%struct.net* %67, i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %66
  %76 = load %struct.sock*, %struct.sock** %12, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 1
  %78 = call i32 @ipv6_addr_any(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = load %struct.sock*, %struct.sock** %12, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 1
  %83 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %84 = call i32 @ipv6_addr_equal(i32* %82, %struct.in6_addr* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %80, %66, %60, %49, %38, %29
  store i32 0, i32* %10, align 4
  br label %95

87:                                               ; preds = %80, %75
  %88 = load %struct.sock*, %struct.sock** %12, align 8
  %89 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %90 = load %struct.in6_addr*, %struct.in6_addr** %16, align 8
  %91 = call i32 @inet6_mc_check(%struct.sock* %88, %struct.in6_addr* %89, %struct.in6_addr* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  store i32 0, i32* %10, align 4
  br label %95

94:                                               ; preds = %87
  store i32 1, i32* %10, align 4
  br label %95

95:                                               ; preds = %94, %93, %86, %28
  %96 = load i32, i32* %10, align 4
  ret i32 %96
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @udp_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local i32 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @udp_sk_bound_dev_eq(%struct.net*, i32, i32, i32) #1

declare dso_local i32 @inet6_mc_check(%struct.sock*, %struct.in6_addr*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
