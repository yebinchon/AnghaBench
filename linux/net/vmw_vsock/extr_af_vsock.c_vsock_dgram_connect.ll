; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_dgram_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_dgram_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.vsock_sock = type { i32 }
%struct.sockaddr_vm = type { i64, i32, i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@VMADDR_CID_ANY = common dso_local global i32 0, align 4
@VMADDR_PORT_ANY = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@transport = common dso_local global %struct.TYPE_2__* null, align 8
@SS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @vsock_dgram_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsock_dgram_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.vsock_sock*, align 8
  %13 = alloca %struct.sockaddr_vm*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %11, align 8
  %17 = load %struct.sock*, %struct.sock** %11, align 8
  %18 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %17)
  store %struct.vsock_sock* %18, %struct.vsock_sock** %12, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @vsock_addr_cast(%struct.sockaddr* %19, i32 %20, %struct.sockaddr_vm** %13)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @EAFNOSUPPORT, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %4
  %27 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %13, align 8
  %28 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AF_UNSPEC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.sock*, %struct.sock** %11, align 8
  %34 = call i32 @lock_sock(%struct.sock* %33)
  %35 = load %struct.vsock_sock*, %struct.vsock_sock** %12, align 8
  %36 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %35, i32 0, i32 0
  %37 = load i32, i32* @VMADDR_CID_ANY, align 4
  %38 = load i32, i32* @VMADDR_PORT_ANY, align 4
  %39 = call i32 @vsock_addr_init(i32* %36, i32 %37, i32 %38)
  %40 = load i32, i32* @SS_UNCONNECTED, align 4
  %41 = load %struct.socket*, %struct.socket** %6, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sock*, %struct.sock** %11, align 8
  %44 = call i32 @release_sock(%struct.sock* %43)
  store i32 0, i32* %5, align 4
  br label %87

45:                                               ; preds = %26, %4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %87

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.sock*, %struct.sock** %11, align 8
  %54 = call i32 @lock_sock(%struct.sock* %53)
  %55 = load %struct.vsock_sock*, %struct.vsock_sock** %12, align 8
  %56 = call i32 @vsock_auto_bind(%struct.vsock_sock* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %83

60:                                               ; preds = %52
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (i32, i32)*, i32 (i32, i32)** %62, align 8
  %64 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %13, align 8
  %65 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %13, align 8
  %68 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %63(i32 %66, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %83

75:                                               ; preds = %60
  %76 = load %struct.vsock_sock*, %struct.vsock_sock** %12, align 8
  %77 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %76, i32 0, i32 0
  %78 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %13, align 8
  %79 = call i32 @memcpy(i32* %77, %struct.sockaddr_vm* %78, i32 4)
  %80 = load i32, i32* @SS_CONNECTED, align 4
  %81 = load %struct.socket*, %struct.socket** %6, align 8
  %82 = getelementptr inbounds %struct.socket, %struct.socket* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %75, %72, %59
  %84 = load %struct.sock*, %struct.sock** %11, align 8
  %85 = call i32 @release_sock(%struct.sock* %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %48, %32
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @vsock_addr_cast(%struct.sockaddr*, i32, %struct.sockaddr_vm**) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @vsock_addr_init(i32*, i32, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @vsock_auto_bind(%struct.vsock_sock*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_vm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
