; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip6.c_l2tp_ip6_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip6.c_l2tp_ip6_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_l2tpip6 = type { i64, i32, i64, i64, i64, i32 }
%struct.ipv6_pinfo = type { i32, i64, i64 }
%struct.l2tp_ip6_sock = type { i64, i64 }

@AF_INET6 = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @l2tp_ip6_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_ip6_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_l2tpip6*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.ipv6_pinfo*, align 8
  %11 = alloca %struct.l2tp_ip6_sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_l2tpip6*
  store %struct.sockaddr_l2tpip6* %13, %struct.sockaddr_l2tpip6** %8, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %9, align 8
  %17 = load %struct.sock*, %struct.sock** %9, align 8
  %18 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %17)
  store %struct.ipv6_pinfo* %18, %struct.ipv6_pinfo** %10, align 8
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = call %struct.l2tp_ip6_sock* @l2tp_ip6_sk(%struct.sock* %19)
  store %struct.l2tp_ip6_sock* %20, %struct.l2tp_ip6_sock** %11, align 8
  %21 = load i32, i32* @AF_INET6, align 4
  %22 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %8, align 8
  %23 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %8, align 8
  %25 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %8, align 8
  %27 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %8, align 8
  %29 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %3
  %33 = load %struct.l2tp_ip6_sock*, %struct.l2tp_ip6_sock** %11, align 8
  %34 = getelementptr inbounds %struct.l2tp_ip6_sock, %struct.l2tp_ip6_sock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOTCONN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %99

40:                                               ; preds = %32
  %41 = load %struct.l2tp_ip6_sock*, %struct.l2tp_ip6_sock** %11, align 8
  %42 = getelementptr inbounds %struct.l2tp_ip6_sock, %struct.l2tp_ip6_sock* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %8, align 8
  %45 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.sock*, %struct.sock** %9, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %8, align 8
  %50 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %52 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %40
  %56 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %57 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %8, align 8
  %60 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %40
  br label %85

62:                                               ; preds = %3
  %63 = load %struct.sock*, %struct.sock** %9, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 1
  %65 = call i64 @ipv6_addr_any(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %10, align 8
  %69 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %8, align 8
  %72 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  br label %79

73:                                               ; preds = %62
  %74 = load %struct.sock*, %struct.sock** %9, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %8, align 8
  %78 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %73, %67
  %80 = load %struct.l2tp_ip6_sock*, %struct.l2tp_ip6_sock** %11, align 8
  %81 = getelementptr inbounds %struct.l2tp_ip6_sock, %struct.l2tp_ip6_sock* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %8, align 8
  %84 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %61
  %86 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %8, align 8
  %87 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %86, i32 0, i32 1
  %88 = call i32 @ipv6_addr_type(i32* %87)
  %89 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.sock*, %struct.sock** %9, align 8
  %94 = getelementptr inbounds %struct.sock, %struct.sock* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.sockaddr_l2tpip6*, %struct.sockaddr_l2tpip6** %8, align 8
  %97 = getelementptr inbounds %struct.sockaddr_l2tpip6, %struct.sockaddr_l2tpip6* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %92, %85
  store i32 48, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %37
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.l2tp_ip6_sock* @l2tp_ip6_sk(%struct.sock*) #1

declare dso_local i64 @ipv6_addr_any(i32*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
