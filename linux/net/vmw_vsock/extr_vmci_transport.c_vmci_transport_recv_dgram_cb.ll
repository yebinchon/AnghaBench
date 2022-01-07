; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_dgram_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_dgram_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_datagram = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.vsock_sock = type { i32 }

@VMCI_ERROR_NO_ACCESS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.vmci_datagram*)* @vmci_transport_recv_dgram_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_recv_dgram_cb(i8* %0, %struct.vmci_datagram* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vmci_datagram*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.vsock_sock*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.vmci_datagram* %1, %struct.vmci_datagram** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sock*
  store %struct.sock* %11, %struct.sock** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %12)
  store %struct.vsock_sock* %13, %struct.vsock_sock** %9, align 8
  %14 = load %struct.vsock_sock*, %struct.vsock_sock** %9, align 8
  %15 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %16 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vmci_transport_allow_dgram(%struct.vsock_sock* %14, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @VMCI_ERROR_NO_ACCESS, align 4
  store i32 %22, i32* %3, align 4
  br label %49

23:                                               ; preds = %2
  %24 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %25 = call i64 @VMCI_DG_SIZE(%struct.vmci_datagram* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @alloc_skb(i64 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %32, i32* %3, align 4
  br label %49

33:                                               ; preds = %23
  %34 = load %struct.sock*, %struct.sock** %6, align 8
  %35 = call i32 @sock_hold(%struct.sock* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @skb_put(%struct.sk_buff* %36, i64 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @memcpy(i32 %41, %struct.vmci_datagram* %42, i64 %43)
  %45 = load %struct.sock*, %struct.sock** %6, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i32 @sk_receive_skb(%struct.sock* %45, %struct.sk_buff* %46, i32 0)
  %48 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %33, %31, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @vmci_transport_allow_dgram(%struct.vsock_sock*, i32) #1

declare dso_local i64 @VMCI_DG_SIZE(%struct.vmci_datagram*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32, %struct.vmci_datagram*, i64) #1

declare dso_local i32 @sk_receive_skb(%struct.sock*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
