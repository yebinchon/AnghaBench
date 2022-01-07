; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_addr2sockaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_inet6_connection_sock.c_inet6_csk_addr2sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet6_csk_addr2sockaddr(%struct.sock* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %6 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %7 = bitcast %struct.sockaddr* %6 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %7, %struct.sockaddr_in6** %5, align 8
  %8 = load i32, i32* @AF_INET6, align 4
  %9 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %10 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %24, i32 0, i32 0
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ipv6_iface_scope_id(i32* %25, i32 %28)
  %30 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_iface_scope_id(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
