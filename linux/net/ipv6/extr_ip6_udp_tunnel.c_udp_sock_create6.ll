; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_udp_tunnel.c_udp_sock_create6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_udp_tunnel.c_udp_sock_create6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.udp_port_cfg = type { i32, i32, i64, i32, i64, i32, i64, i64 }
%struct.socket = type { i32 }
%struct.sockaddr_in6 = type { i64, i32, i8* }
%struct.sockaddr = type { i32 }

@AF_INET6 = common dso_local global i8* null, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BINDTOIFINDEX = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_sock_create6(%struct.net* %0, %struct.udp_port_cfg* %1, %struct.socket** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.udp_port_cfg*, align 8
  %7 = alloca %struct.socket**, align 8
  %8 = alloca %struct.sockaddr_in6, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.udp_port_cfg* %1, %struct.udp_port_cfg** %6, align 8
  store %struct.socket** %2, %struct.socket*** %7, align 8
  %12 = bitcast %struct.sockaddr_in6* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  store %struct.socket* null, %struct.socket** %10, align 8
  %13 = load %struct.net*, %struct.net** %5, align 8
  %14 = load i8*, i8** @AF_INET6, align 8
  %15 = load i32, i32* @SOCK_DGRAM, align 4
  %16 = call i32 @sock_create_kern(%struct.net* %13, i8* %14, i32 %15, i32 0, %struct.socket** %10)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %116

20:                                               ; preds = %3
  %21 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %22 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  store i32 1, i32* %11, align 4
  %26 = load %struct.socket*, %struct.socket** %10, align 8
  %27 = load i32, i32* @IPPROTO_IPV6, align 4
  %28 = load i32, i32* @IPV6_V6ONLY, align 4
  %29 = bitcast i32* %11 to i8*
  %30 = call i32 @kernel_setsockopt(%struct.socket* %26, i32 %27, i32 %28, i8* %29, i32 4)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %116

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %37 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.socket*, %struct.socket** %10, align 8
  %42 = load i32, i32* @SOL_SOCKET, align 4
  %43 = load i32, i32* @SO_BINDTOIFINDEX, align 4
  %44 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %45 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %44, i32 0, i32 6
  %46 = bitcast i64* %45 to i8*
  %47 = call i32 @kernel_setsockopt(%struct.socket* %41, i32 %42, i32 %43, i8* %46, i32 8)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %116

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i8*, i8** @AF_INET6, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 1
  %56 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %57 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %56, i32 0, i32 5
  %58 = call i32 @memcpy(i32* %55, i32* %57, i32 4)
  %59 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %60 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = load %struct.socket*, %struct.socket** %10, align 8
  %64 = bitcast %struct.sockaddr_in6* %8 to %struct.sockaddr*
  %65 = call i32 @kernel_bind(%struct.socket* %63, %struct.sockaddr* %64, i32 24)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  br label %116

69:                                               ; preds = %52
  %70 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %71 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = call i32 @memset(%struct.sockaddr_in6* %8, i32 0, i32 24)
  %76 = load i8*, i8** @AF_INET6, align 8
  %77 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 2
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 1
  %79 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %80 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %79, i32 0, i32 3
  %81 = call i32 @memcpy(i32* %78, i32* %80, i32 4)
  %82 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %83 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  %86 = load %struct.socket*, %struct.socket** %10, align 8
  %87 = bitcast %struct.sockaddr_in6* %8 to %struct.sockaddr*
  %88 = call i32 @kernel_connect(%struct.socket* %86, %struct.sockaddr* %87, i32 24, i32 0)
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %74, %69
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %116

93:                                               ; preds = %89
  %94 = load %struct.socket*, %struct.socket** %10, align 8
  %95 = getelementptr inbounds %struct.socket, %struct.socket* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %98 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @udp_set_no_check6_tx(i32 %96, i32 %102)
  %104 = load %struct.socket*, %struct.socket** %10, align 8
  %105 = getelementptr inbounds %struct.socket, %struct.socket* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %108 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32 @udp_set_no_check6_rx(i32 %106, i32 %112)
  %114 = load %struct.socket*, %struct.socket** %10, align 8
  %115 = load %struct.socket**, %struct.socket*** %7, align 8
  store %struct.socket* %114, %struct.socket** %115, align 8
  store i32 0, i32* %4, align 4
  br label %128

116:                                              ; preds = %92, %68, %50, %33, %19
  %117 = load %struct.socket*, %struct.socket** %10, align 8
  %118 = icmp ne %struct.socket* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.socket*, %struct.socket** %10, align 8
  %121 = load i32, i32* @SHUT_RDWR, align 4
  %122 = call i32 @kernel_sock_shutdown(%struct.socket* %120, i32 %121)
  %123 = load %struct.socket*, %struct.socket** %10, align 8
  %124 = call i32 @sock_release(%struct.socket* %123)
  br label %125

125:                                              ; preds = %119, %116
  %126 = load %struct.socket**, %struct.socket*** %7, align 8
  store %struct.socket* null, %struct.socket** %126, align 8
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %125, %93
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sock_create_kern(%struct.net*, i8*, i32, i32, %struct.socket**) #2

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @kernel_bind(%struct.socket*, %struct.sockaddr*, i32) #2

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #2

declare dso_local i32 @kernel_connect(%struct.socket*, %struct.sockaddr*, i32, i32) #2

declare dso_local i32 @udp_set_no_check6_tx(i32, i32) #2

declare dso_local i32 @udp_set_no_check6_rx(i32, i32) #2

declare dso_local i32 @kernel_sock_shutdown(%struct.socket*, i32) #2

declare dso_local i32 @sock_release(%struct.socket*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
