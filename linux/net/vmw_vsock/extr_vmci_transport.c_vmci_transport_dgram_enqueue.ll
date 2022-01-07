; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_dgram_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_dgram_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sockaddr_vm = type { i32, i32 }
%struct.msghdr = type { i32 }
%struct.vmci_datagram = type { i64, i8*, i8* }

@VMCI_MAX_DG_PAYLOAD_SIZE = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*, %struct.sockaddr_vm*, %struct.msghdr*, i64)* @vmci_transport_dgram_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_dgram_enqueue(%struct.vsock_sock* %0, %struct.sockaddr_vm* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsock_sock*, align 8
  %7 = alloca %struct.sockaddr_vm*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmci_datagram*, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %6, align 8
  store %struct.sockaddr_vm* %1, %struct.sockaddr_vm** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @VMCI_MAX_DG_PAYLOAD_SIZE, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EMSGSIZE, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %81

18:                                               ; preds = %4
  %19 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %20 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %7, align 8
  %21 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vmci_transport_allow_dgram(%struct.vsock_sock* %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %81

28:                                               ; preds = %18
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, 24
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.vmci_datagram* @kmalloc(i64 %30, i32 %31)
  store %struct.vmci_datagram* %32, %struct.vmci_datagram** %11, align 8
  %33 = load %struct.vmci_datagram*, %struct.vmci_datagram** %11, align 8
  %34 = icmp ne %struct.vmci_datagram* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %81

38:                                               ; preds = %28
  %39 = load %struct.vmci_datagram*, %struct.vmci_datagram** %11, align 8
  %40 = call i32 @VMCI_DG_PAYLOAD(%struct.vmci_datagram* %39)
  %41 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @memcpy_from_msg(i32 %40, %struct.msghdr* %41, i64 %42)
  %44 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %7, align 8
  %45 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sockaddr_vm*, %struct.sockaddr_vm** %7, align 8
  %48 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @vmci_make_handle(i32 %46, i32 %49)
  %51 = load %struct.vmci_datagram*, %struct.vmci_datagram** %11, align 8
  %52 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %54 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %58 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @vmci_make_handle(i32 %56, i32 %60)
  %62 = load %struct.vmci_datagram*, %struct.vmci_datagram** %11, align 8
  %63 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.vmci_datagram*, %struct.vmci_datagram** %11, align 8
  %66 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.vmci_datagram*, %struct.vmci_datagram** %11, align 8
  %68 = call i32 @vmci_datagram_send(%struct.vmci_datagram* %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.vmci_datagram*, %struct.vmci_datagram** %11, align 8
  %70 = call i32 @kfree(%struct.vmci_datagram* %69)
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %38
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @vmci_transport_error_to_vsock_error(i32 %74)
  store i32 %75, i32* %5, align 4
  br label %81

76:                                               ; preds = %38
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 %78, 24
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %76, %73, %35, %25, %15
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @vmci_transport_allow_dgram(%struct.vsock_sock*, i32) #1

declare dso_local %struct.vmci_datagram* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy_from_msg(i32, %struct.msghdr*, i64) #1

declare dso_local i32 @VMCI_DG_PAYLOAD(%struct.vmci_datagram*) #1

declare dso_local i8* @vmci_make_handle(i32, i32) #1

declare dso_local i32 @vmci_datagram_send(%struct.vmci_datagram*) #1

declare dso_local i32 @kfree(%struct.vmci_datagram*) #1

declare dso_local i32 @vmci_transport_error_to_vsock_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
