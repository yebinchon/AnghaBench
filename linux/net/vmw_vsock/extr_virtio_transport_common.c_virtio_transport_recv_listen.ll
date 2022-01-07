; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_recv_listen.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_recv_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32, i32, i32 }
%struct.virtio_vsock_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.vsock_sock = type { i32, i32 }

@VIRTIO_VSOCK_OP_REQUEST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.virtio_vsock_pkt*)* @virtio_transport_recv_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_transport_recv_listen(%struct.sock* %0, %struct.virtio_vsock_pkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.virtio_vsock_pkt*, align 8
  %6 = alloca %struct.vsock_sock*, align 8
  %7 = alloca %struct.vsock_sock*, align 8
  %8 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.virtio_vsock_pkt* %1, %struct.virtio_vsock_pkt** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %9)
  store %struct.vsock_sock* %10, %struct.vsock_sock** %6, align 8
  %11 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %12 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le16_to_cpu(i32 %14)
  %16 = load i64, i64* @VIRTIO_VSOCK_OP_REQUEST, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %20 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %21 = call i32 @virtio_transport_reset(%struct.vsock_sock* %19, %struct.virtio_vsock_pkt* %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %105

24:                                               ; preds = %2
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i64 @sk_acceptq_is_full(%struct.sock* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %30 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %31 = call i32 @virtio_transport_reset(%struct.vsock_sock* %29, %struct.virtio_vsock_pkt* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %105

34:                                               ; preds = %24
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = call i32 @sock_net(%struct.sock* %35)
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.sock* @__vsock_create(i32 %36, i32* null, %struct.sock* %37, i32 %38, i32 %41, i32 0)
  store %struct.sock* %42, %struct.sock** %8, align 8
  %43 = load %struct.sock*, %struct.sock** %8, align 8
  %44 = icmp ne %struct.sock* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %34
  %46 = load %struct.vsock_sock*, %struct.vsock_sock** %6, align 8
  %47 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %48 = call i32 @virtio_transport_reset(%struct.vsock_sock* %46, %struct.virtio_vsock_pkt* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %105

51:                                               ; preds = %34
  %52 = load %struct.sock*, %struct.sock** %4, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.sock*, %struct.sock** %8, align 8
  %57 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %58 = call i32 @lock_sock_nested(%struct.sock* %56, i32 %57)
  %59 = load i32, i32* @TCP_ESTABLISHED, align 4
  %60 = load %struct.sock*, %struct.sock** %8, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.sock*, %struct.sock** %8, align 8
  %63 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %62)
  store %struct.vsock_sock* %63, %struct.vsock_sock** %7, align 8
  %64 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %65 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %64, i32 0, i32 1
  %66 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %67 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le64_to_cpu(i32 %69)
  %71 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %72 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = call i32 @vsock_addr_init(i32* %65, i32 %70, i32 %75)
  %77 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %78 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %77, i32 0, i32 0
  %79 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %80 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le64_to_cpu(i32 %82)
  %84 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %85 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = call i32 @vsock_addr_init(i32* %78, i32 %83, i32 %88)
  %90 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %91 = call i32 @vsock_insert_connected(%struct.vsock_sock* %90)
  %92 = load %struct.sock*, %struct.sock** %4, align 8
  %93 = load %struct.sock*, %struct.sock** %8, align 8
  %94 = call i32 @vsock_enqueue_accept(%struct.sock* %92, %struct.sock* %93)
  %95 = load %struct.vsock_sock*, %struct.vsock_sock** %7, align 8
  %96 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %5, align 8
  %97 = call i32 @virtio_transport_send_response(%struct.vsock_sock* %95, %struct.virtio_vsock_pkt* %96)
  %98 = load %struct.sock*, %struct.sock** %8, align 8
  %99 = call i32 @release_sock(%struct.sock* %98)
  %100 = load %struct.sock*, %struct.sock** %4, align 8
  %101 = getelementptr inbounds %struct.sock, %struct.sock* %100, i32 0, i32 0
  %102 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %101, align 8
  %103 = load %struct.sock*, %struct.sock** %4, align 8
  %104 = call i32 %102(%struct.sock* %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %51, %45, %28, %18
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @virtio_transport_reset(%struct.vsock_sock*, %struct.virtio_vsock_pkt*) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.sock* @__vsock_create(i32, i32*, %struct.sock*, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @lock_sock_nested(%struct.sock*, i32) #1

declare dso_local i32 @vsock_addr_init(i32*, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @vsock_insert_connected(%struct.vsock_sock*) #1

declare dso_local i32 @vsock_enqueue_accept(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @virtio_transport_send_response(%struct.vsock_sock*, %struct.virtio_vsock_pkt*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
