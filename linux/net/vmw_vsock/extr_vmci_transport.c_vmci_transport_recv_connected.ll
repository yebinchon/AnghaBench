; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_connected.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_vmci_transport.c_vmci_transport_recv_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.vmci_transport_packet = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vsock_sock = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.sock*, %struct.vmci_transport_packet*, i32, i32*, i32*, i32*)* }

@SOCK_DONE = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@TCP_CLOSING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.vmci_transport_packet*)* @vmci_transport_recv_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_transport_recv_connected(%struct.sock* %0, %struct.vmci_transport_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.vmci_transport_packet*, align 8
  %6 = alloca %struct.vsock_sock*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.vmci_transport_packet* %1, %struct.vmci_transport_packet** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %9 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %56 [
    i32 128, label %11
    i32 129, label %34
  ]

11:                                               ; preds = %2
  %12 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %13 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %18)
  store %struct.vsock_sock* %19, %struct.vsock_sock** %6, align 8
  %20 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %21 = getelementptr inbounds %struct.vmci_transport_packet, %struct.vmci_transport_packet* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %25 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %29, align 8
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call i32 %30(%struct.sock* %31)
  br label %33

33:                                               ; preds = %17, %11
  br label %74

34:                                               ; preds = %2
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %35)
  store %struct.vsock_sock* %36, %struct.vsock_sock** %6, align 8
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = load i32, i32* @SOCK_DONE, align 4
  %39 = call i32 @sock_set_flag(%struct.sock* %37, i32 %38)
  %40 = load i32, i32* @SHUTDOWN_MASK, align 4
  %41 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %42 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %44 = call i32 @vsock_stream_has_data(%struct.vsock_sock* %43)
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i32, i32* @TCP_CLOSING, align 4
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %34
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 0
  %53 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %52, align 8
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = call i32 %53(%struct.sock* %54)
  br label %74

56:                                               ; preds = %2
  %57 = load %struct.sock*, %struct.sock** %4, align 8
  %58 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %57)
  store %struct.vsock_sock* %58, %struct.vsock_sock** %6, align 8
  %59 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %60 = call %struct.TYPE_6__* @vmci_trans(%struct.vsock_sock* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32 (%struct.sock*, %struct.vmci_transport_packet*, i32, i32*, i32*, i32*)*, i32 (%struct.sock*, %struct.vmci_transport_packet*, i32, i32*, i32*, i32*)** %63, align 8
  %65 = load %struct.sock*, %struct.sock** %4, align 8
  %66 = load %struct.vmci_transport_packet*, %struct.vmci_transport_packet** %5, align 8
  %67 = call i32 %64(%struct.sock* %65, %struct.vmci_transport_packet* %66, i32 0, i32* null, i32* null, i32* %7)
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %56
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73, %50, %33
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %70
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @vsock_stream_has_data(%struct.vsock_sock*) #1

declare dso_local %struct.TYPE_6__* @vmci_trans(%struct.vsock_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
