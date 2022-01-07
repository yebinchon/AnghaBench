; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip6.c_l2tp_ip6_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip6.c_l2tp_ip6_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_l2tpip6 = type { i32 }
%struct.sockaddr_in6 = type { i64, %struct.in6_addr }
%struct.in6_addr = type { i32* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_MAPPED = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@l2tp_ip6_lock = common dso_local global i32 0, align 4
@l2tp_ip6_bind_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @l2tp_ip6_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_ip6_connect(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_l2tpip6*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_l2tpip6*
  store %struct.sockaddr_l2tpip6* %14, %struct.sockaddr_l2tpip6** %8, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %16 = bitcast %struct.sockaddr* %15 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %16, %struct.sockaddr_in6** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %98

23:                                               ; preds = %3
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AF_INET6, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %98

32:                                               ; preds = %23
  %33 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %33, i32 0, i32 1
  %35 = call i32 @ipv6_addr_type(%struct.in6_addr* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %98

43:                                               ; preds = %32
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %49, i32 0, i32 1
  store %struct.in6_addr* %50, %struct.in6_addr** %10, align 8
  %51 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %52 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @ipv4_is_multicast(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %98

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %43
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = call i32 @lock_sock(%struct.sock* %63)
  %65 = load %struct.sock*, %struct.sock** %5, align 8
  %66 = load i32, i32* @SOCK_ZAPPED, align 4
  %67 = call i64 @sock_flag(%struct.sock* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %12, align 4
  br label %94

72:                                               ; preds = %62
  %73 = load %struct.sock*, %struct.sock** %5, align 8
  %74 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @__ip6_datagram_connect(%struct.sock* %73, %struct.sockaddr* %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %94

80:                                               ; preds = %72
  %81 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %8, align 8
  %82 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sock*, %struct.sock** %5, align 8
  %85 = call %struct.TYPE_2__* @l2tp_ip6_sk(%struct.sock* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = call i32 @write_lock_bh(i32* @l2tp_ip6_lock)
  %88 = load %struct.sock*, %struct.sock** %5, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 0
  %90 = call i32 @hlist_del_init(i32* %89)
  %91 = load %struct.sock*, %struct.sock** %5, align 8
  %92 = call i32 @sk_add_bind_node(%struct.sock* %91, i32* @l2tp_ip6_bind_table)
  %93 = call i32 @write_unlock_bh(i32* @l2tp_ip6_lock)
  br label %94

94:                                               ; preds = %80, %79, %69
  %95 = load %struct.sock*, %struct.sock** %5, align 8
  %96 = call i32 @release_sock(%struct.sock* %95)
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %58, %40, %29, %20
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @__ip6_datagram_connect(%struct.sock*, %struct.sockaddr*, i32) #1

declare dso_local %struct.TYPE_2__* @l2tp_ip6_sk(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @sk_add_bind_node(%struct.sock*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
