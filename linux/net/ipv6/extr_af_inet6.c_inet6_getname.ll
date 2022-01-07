; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_af_inet6.c_inet6_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_af_inet6.c_inet6_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32, i64, i64, i64, i32 }
%struct.inet_sock = type { i64, i64 }
%struct.ipv6_pinfo = type { i32, i64, i64 }

@AF_INET6 = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@TCPF_SYN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.inet_sock*, align 8
  %11 = alloca %struct.ipv6_pinfo*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %13, %struct.sockaddr_in6** %8, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %9, align 8
  %17 = load %struct.sock*, %struct.sock** %9, align 8
  %18 = call %struct.inet_sock* @inet_sk(%struct.sock* %17)
  store %struct.inet_sock* %18, %struct.inet_sock** %10, align 8
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %19)
  store %struct.ipv6_pinfo* %20, %struct.ipv6_pinfo** %11, align 8
  %21 = load i32, i32* @AF_INET6, align 4
  %22 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %3
  %31 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %32 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOTCONN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %108

38:                                               ; preds = %30
  %39 = load %struct.sock*, %struct.sock** %9, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* @TCPF_CLOSE, align 4
  %44 = load i32, i32* @TCPF_SYN_SENT, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @ENOTCONN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %108

54:                                               ; preds = %48, %38
  %55 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %56 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load %struct.sock*, %struct.sock** %9, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %64 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %66 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %54
  %70 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %71 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %74 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %69, %54
  br label %99

76:                                               ; preds = %3
  %77 = load %struct.sock*, %struct.sock** %9, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 2
  %79 = call i64 @ipv6_addr_any(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %11, align 8
  %83 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %86 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %93

87:                                               ; preds = %76
  %88 = load %struct.sock*, %struct.sock** %9, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %92 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %87, %81
  %94 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %95 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %98 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %75
  %100 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %101 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %100, i32 0, i32 0
  %102 = load %struct.sock*, %struct.sock** %9, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @ipv6_iface_scope_id(i32* %101, i32 %104)
  %106 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %107 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  store i32 40, i32* %4, align 4
  br label %108

108:                                              ; preds = %99, %51, %35
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @ipv6_addr_any(i32*) #1

declare dso_local i64 @ipv6_iface_scope_id(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
