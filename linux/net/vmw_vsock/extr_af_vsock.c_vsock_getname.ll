; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_getname.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.vsock_sock = type { %struct.sockaddr_vm, %struct.sockaddr_vm }
%struct.sockaddr_vm = type { i32 }

@SS_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @vsock_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsock_getname(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.vsock_sock*, align 8
  %10 = alloca %struct.sockaddr_vm*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 1
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %14)
  store %struct.vsock_sock* %15, %struct.vsock_sock** %9, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = call i32 @lock_sock(%struct.sock* %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load %struct.socket*, %struct.socket** %4, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SS_CONNECTED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOTCONN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %46

29:                                               ; preds = %20
  %30 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %31 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %30, i32 0, i32 1
  store %struct.sockaddr_vm* %31, %struct.sockaddr_vm** %10, align 8
  br label %35

32:                                               ; preds = %3
  %33 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %34 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %33, i32 0, i32 0
  store %struct.sockaddr_vm* %34, %struct.sockaddr_vm** %10, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %10, align 8
  %37 = icmp ne %struct.sockaddr_vm* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %46

41:                                               ; preds = %35
  %42 = call i32 @BUILD_BUG_ON(i32 0)
  %43 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %44 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %10, align 8
  %45 = call i32 @memcpy(%struct.sockaddr* %43, %struct.sockaddr_vm* %44, i32 4)
  store i32 4, i32* %7, align 4
  br label %46

46:                                               ; preds = %41, %38, %26
  %47 = load %struct.sock*, %struct.sock** %8, align 8
  %48 = call i32 @release_sock(%struct.sock* %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr_vm*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
