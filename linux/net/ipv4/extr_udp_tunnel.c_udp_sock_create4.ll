; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp_tunnel.c_udp_sock_create4.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp_tunnel.c_udp_sock_create4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.udp_port_cfg = type { i32, i64, i32, i64, i32, i64 }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in = type { i64, i32, i8* }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i8* null, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BINDTOIFINDEX = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_sock_create4(%struct.net* %0, %struct.udp_port_cfg* %1, %struct.socket** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.udp_port_cfg*, align 8
  %7 = alloca %struct.socket**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.sockaddr_in, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.udp_port_cfg* %1, %struct.udp_port_cfg** %6, align 8
  store %struct.socket** %2, %struct.socket*** %7, align 8
  store %struct.socket* null, %struct.socket** %9, align 8
  %11 = load %struct.net*, %struct.net** %5, align 8
  %12 = load i8*, i8** @AF_INET, align 8
  %13 = load i32, i32* @SOCK_DGRAM, align 4
  %14 = call i32 @sock_create_kern(%struct.net* %11, i8* %12, i32 %13, i32 0, %struct.socket** %9)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %88

18:                                               ; preds = %3
  %19 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %20 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.socket*, %struct.socket** %9, align 8
  %25 = load i32, i32* @SOL_SOCKET, align 4
  %26 = load i32, i32* @SO_BINDTOIFINDEX, align 4
  %27 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %28 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %27, i32 0, i32 5
  %29 = bitcast i64* %28 to i8*
  %30 = call i32 @kernel_setsockopt(%struct.socket* %24, i32 %25, i32 %26, i8* %29, i32 8)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %88

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i8*, i8** @AF_INET, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  store i8* %36, i8** %37, align 8
  %38 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %39 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %43 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load %struct.socket*, %struct.socket** %9, align 8
  %47 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %48 = call i32 @kernel_bind(%struct.socket* %46, %struct.sockaddr* %47, i32 24)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  br label %88

52:                                               ; preds = %35
  %53 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %54 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load i8*, i8** @AF_INET, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  store i8* %58, i8** %59, align 8
  %60 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %61 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i32 %62, i32* %63, align 8
  %64 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %65 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = load %struct.socket*, %struct.socket** %9, align 8
  %69 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %70 = call i32 @kernel_connect(%struct.socket* %68, %struct.sockaddr* %69, i32 24, i32 0)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %88

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %52
  %76 = load %struct.udp_port_cfg*, %struct.udp_port_cfg** %6, align 8
  %77 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load %struct.socket*, %struct.socket** %9, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.socket*, %struct.socket** %9, align 8
  %87 = load %struct.socket**, %struct.socket*** %7, align 8
  store %struct.socket* %86, %struct.socket** %87, align 8
  store i32 0, i32* %4, align 4
  br label %100

88:                                               ; preds = %73, %51, %33, %17
  %89 = load %struct.socket*, %struct.socket** %9, align 8
  %90 = icmp ne %struct.socket* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.socket*, %struct.socket** %9, align 8
  %93 = load i32, i32* @SHUT_RDWR, align 4
  %94 = call i32 @kernel_sock_shutdown(%struct.socket* %92, i32 %93)
  %95 = load %struct.socket*, %struct.socket** %9, align 8
  %96 = call i32 @sock_release(%struct.socket* %95)
  br label %97

97:                                               ; preds = %91, %88
  %98 = load %struct.socket**, %struct.socket*** %7, align 8
  store %struct.socket* null, %struct.socket** %98, align 8
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %97, %75
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @sock_create_kern(%struct.net*, i8*, i32, i32, %struct.socket**) #1

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

declare dso_local i32 @kernel_bind(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i32 @kernel_connect(%struct.socket*, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @kernel_sock_shutdown(%struct.socket*, i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
