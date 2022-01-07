; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_dgram_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_dgram_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { i32, i32 }
%struct.sockaddr_vm = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VMADDR_PORT_ANY = common dso_local global i64 0, align 8
@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@LAST_RESERVED_PORT = common dso_local global i64 0, align 8
@CAP_NET_BIND_SERVICE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VMADDR_CID_ANY = common dso_local global i64 0, align 8
@VMCI_FLAG_ANYCID_DG_HND = common dso_local global i64 0, align 8
@vmci_transport_recv_dgram_cb = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*, %struct.sockaddr_vm*)* @vmci_transport_dgram_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_dgram_bind(%struct.vsock_sock* %0, %struct.sockaddr_vm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vsock_sock*, align 8
  %5 = alloca %struct.sockaddr_vm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vsock_sock* %0, %struct.vsock_sock** %4, align 8
  store %struct.sockaddr_vm* %1, %struct.sockaddr_vm** %5, align 8
  %9 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %5, align 8
  %10 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VMADDR_PORT_ANY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @VMCI_INVALID_ID, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %5, align 8
  %18 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi i64 [ %15, %14 ], [ %19, %16 ]
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @LAST_RESERVED_PORT, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %27 = call i32 @capable(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EACCES, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %70

32:                                               ; preds = %25, %20
  %33 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %5, align 8
  %34 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VMADDR_CID_ANY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* @VMCI_FLAG_ANYCID_DG_HND, align 8
  br label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i64 [ %39, %38 ], [ 0, %40 ]
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* @vmci_transport_recv_dgram_cb, align 4
  %46 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %47 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %46, i32 0, i32 1
  %48 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %49 = call %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @vmci_transport_datagram_create_hnd(i64 %43, i64 %44, i32 %45, i32* %47, %struct.TYPE_3__* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @VMCI_SUCCESS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @vmci_transport_error_to_vsock_error(i32 %56)
  store i32 %57, i32* %3, align 4
  br label %70

58:                                               ; preds = %41
  %59 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %60 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %59, i32 0, i32 0
  %61 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %5, align 8
  %62 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %65 = call %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @vsock_addr_init(i32* %60, i64 %63, i32 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %58, %55, %29
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @vmci_transport_datagram_create_hnd(i64, i64, i32, i32*, %struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_4__* @vmci_trans(%struct.vsock_sock*) #1

declare dso_local i32 @vmci_transport_error_to_vsock_error(i32) #1

declare dso_local i32 @vsock_addr_init(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
